<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Import Namespace="System.Web.Configuration" %>

<script runat="server">
	private const string VirtualImageRoot = "~/";
	private string selectedRole, selectedUser;
	
	private void Page_Init()
	{
		UserRoles.DataSource = Roles.GetAllRoles();
		UserRoles.DataBind();

		UserList.DataSource = Membership.GetAllUsers();
		UserList.DataBind();

		FolderTree.Nodes.Clear();
	}
	
	private void Page_Load()
	{
		selectedRole = UserRoles.SelectedValue;
		selectedUser = UserList.SelectedValue;
	}
	
	private void Page_PreRender()
	{
	}
	
	private void PopulateTree(string byUserOrRole)
	{
		/*
		 * The PopulateTree and AddNodeAndDescendents are taken almost verbatim from Scott Mitchell's article
		 * "Using the TreeView Control and a DataList to Create an Online Image Gallery", which is located at 
		 * http://aspnet.4guysfromrolla.com/articles/083006-1.aspx
		 */
		
		// Populate the tree based on the subfolders of the specified VirtualImageRoot
		DirectoryInfo rootFolder = new DirectoryInfo(Server.MapPath(VirtualImageRoot));
		TreeNode root = AddNodeAndDescendents(byUserOrRole, rootFolder, null);
		FolderTree.Nodes.Add(root);
	}
	
	private TreeNode AddNodeAndDescendents(string byUserOrRole, DirectoryInfo folder, TreeNode parentNode)
	{
		/*
		 * The PopulateTree and AddNodeAndDescendents are taken almost verbatim from Scott Mitchell's article
		 * "Using the TreeView Control and a DataList to Create an Online Image Gallery", which is located at 
		 * http://aspnet.4guysfromrolla.com/articles/083006-1.aspx
		 */
		
		// Add the TreeNode, displaying the folder's name and storing the full path to the folder as the value...
		string virtualFolderPath;
		if (parentNode == null)
		{
			virtualFolderPath = VirtualImageRoot;
		}
		else
		{
			virtualFolderPath = parentNode.Value + folder.Name + "/";
		}
		
		// Instantiate the objects that we'll use to check folder security on each tree node.
		Configuration config = WebConfigurationManager.OpenWebConfiguration(virtualFolderPath);
		SystemWebSectionGroup systemWeb = (SystemWebSectionGroup)config.GetSectionGroup("system.web");
		AuthorizationSection section = (AuthorizationSection)systemWeb.Sections["authorization"];

		string action;
		if (byUserOrRole == "ByRole")
		{
			action = GetTheRuleForThisRole(section, virtualFolderPath);
		}
		else if (byUserOrRole == "ByUser")
		{
			action = GetTheRuleForThisUser(section, virtualFolderPath);
		}
		else
		{
			action = "";
		}
		
		//  This is where I wanna adjust the folder name.
		TreeNode node = new TreeNode(folder.Name + " (" + action + ")", virtualFolderPath);
		node.ImageUrl = (action.Substring(0, 5) == "ALLOW") ? "~/images/greenlight.gif" : "~/images/redlight.gif";
		node.NavigateUrl = "access_rules.aspx?selectedFolderName=" + folder.Name;
		
		// Recurse through this folder's subfolders
		DirectoryInfo[] subFolders = folder.GetDirectories();
		foreach(DirectoryInfo subFolder in subFolders)
		{
			// You could use this filter out certain folders.
			if (subFolder.Name != "_controls" && subFolder.Name != "App_Data")
			{
				TreeNode child = AddNodeAndDescendents(byUserOrRole, subFolder, node);
				node.ChildNodes.Add(child);
			}
		}
		return node; // Return the new TreeNode
	}

    /*
     * It took me a bit to write the GetTheRuleForThisRole and GetTheRuleForThisUser methods. 
     * I had hoped that there would have been a built-in method, but there was not. I built 
     * these methods to mirror my understanding of how ASP.NET applies access rules based on 
     * the FIRST MATCHING RULE. From my testing, the methods appear to be accurate.
     * 
     * Here's what the GetTheRuleForThisUser method looks like. This logic is based on my 
     * discovery that access rules are returned IN ORDER when iterating through with a 
     * FOREACH block. We first check for a matching user and return a match if one is found. 
     * If there is no user-specific rule, then we search through all ROLES to which the 
     * selected user belongs. Again, the first match is returned. If no matching user or 
     * role is found, then the user has access, so we return ALLOW.
     */
    
    private string GetTheRuleForThisRole(AuthorizationSection section, string folder)
	{
		/*
		 * We know that rules are returned in order, so we can return upon first match.
		 * Even if there were conflicting entries for the requested Role in the config file,
		 * we know that the first rule for the given role will supersede the later entry.
		 * 
		 * I didn't readily find a method called "GetPermissionForThisRoleInThisFolder",
		 * so I'm building the logic myself based on my understanding of things:
		 * The first matching rule is applied, so the way I figure it, no matter whether we are 
		 * testing for 1) an anonymous user, or 2) an authenticated user not belonging to a role, 
		 * or 3) an actual role, the logic will be the same: take the first match on either the 
		 * actual role OR the all users (*) symbol.
		 * 
		 * Note that I'm not checking for ALL ROLES (*), which does not appear to be a valid option.
		 * I tested this by manually adding "<allow roles="*" />" to a config file.
		 * This resulted in a page error as follows:
		 * Parser Error Message: Authorization rule names cannot contain the '*' character.
		 * 
		 * Long story short, I've developed a best practice for providing role-based security on a folder:
		 * ALLOW SPECIFIC ROLE, then DENY ALL USERS (*).
		 */

		foreach (AuthorizationRule rule in section.Rules)
		{
			/*
			 * Both Users and Roles are collections of strings, not a single string, 
			 * so even though my tool (as well as the WSAT
			 * that is accessed from Visual Studio 2005) provides a single-selection dropdownlist
			 * for specifying a single ROLE for a RULE, I'll treat it as the collection that it is,
			 * since it's possible that someone could modify the Web.config file manually.
			 * 
			 * Note to self: remember that it does not matter whether we first check the users 
			 * or first check the roles. Remember that we're dealing with a single rule inside
			 * this foreach block, and a rule can have only a single action. A match in either 
			 * users or roles is completely equivalent.
			 */
			foreach (string user in rule.Users)
			{
				if (user == "*")
				{
					return rule.Action.ToString().ToUpper() + ": All Users";
				}
			}
			foreach (string role in rule.Roles)
			{
				if (role == selectedRole)
				{
					return rule.Action.ToString().ToUpper() + ": Role=" + role;
				}
			}
		}
		/*
		  * I think we'll always have a match, because the Machine.config or master Web.config
		 * appears to have a default entry for ALLOW *.
		 * Nevertheless, I'll return "Allow" because I haven't researched what happens if said 
		 * default entry is manually deleted. Better to report a false ALLOW than a false DENY.
		 */
		return "Allow";
	}

	private string GetTheRuleForThisUser(AuthorizationSection section, string folder)
	{
		foreach (AuthorizationRule rule in section.Rules)
		{
			foreach (string user in rule.Users)
			{
				if (user == "*")
				{
					return rule.Action.ToString().ToUpper() + ": All Users";
				}
				else if (user == selectedUser)
				{
					return rule.Action.ToString().ToUpper() + ": User=" + user;
				}
			}

			// Don't forget that users might belong to some roles!
			foreach (string role in rule.Roles)
			{
				if (Roles.IsUserInRole(selectedUser, role))
				{
					return rule.Action.ToString().ToUpper() + ": Role=" + role;
				}
			}
		}
		return "ALLOW";
	}

	private void DisplayRoleSummary(object sender, EventArgs e)
	{
		FolderTree.Nodes.Clear();
		UserList.SelectedIndex = 0;
		if (UserRoles.SelectedIndex > 0)
		{
			PopulateTree("ByRole");
			FolderTree.ExpandAll();
		}
	}

	private void DisplayUserSummary(object sender, EventArgs e)
	{
		FolderTree.Nodes.Clear();
		UserRoles.SelectedIndex = 0;
		if (UserList.SelectedIndex > 0)
		{
			PopulateTree("ByUser");
			FolderTree.ExpandAll();
		}
	}

	private void DisplaySecuritySummary(object sender, TreeNodeEventArgs e)
	{
		e.Node.ShowCheckBox = true;
	}
	
	protected void FolderTree_SelectedNodeChanged(object sender, EventArgs e)
	{
	}
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="leftCol">
    <!-- #include file="_nav.aspx -->
</div>
<div id="rightCol">
    <h1>Website Access Security Summary</h1>
    <table class="webparts">
    <tr>
	    <td class="details" valign="top">
		    <table>
		    <tr>
			    <td valign="top" style="padding-right: 30px;">
    				
				    <asp:DropDownList ID="UserRoles" runat="server" AppendDataBoundItems="true"
					    AutoPostBack="true" OnSelectedIndexChanged="DisplayRoleSummary">
				    <asp:ListItem>Select Role</asp:ListItem>
				    </asp:DropDownList>
    				
				    &nbsp;&nbsp;&nbsp;&nbsp;<b>&mdash;&nbsp;&nbsp;OR&nbsp;&nbsp;&mdash;</b>
				    &nbsp;&nbsp;&nbsp;				
    				
				    <asp:DropDownList ID="UserList" runat="server" AppendDataBoundItems="true"
					    AutoPostBack="true" OnSelectedIndexChanged="DisplayUserSummary">
				    <asp:ListItem>Select User</asp:ListItem>
				    <asp:ListItem Text="Anonymous users (?)" Value="?"></asp:ListItem>
				    <asp:ListItem Text="Authenticated users not in a role (*)" Value="*"></asp:ListItem>
				    </asp:DropDownList>	
    				
				    <br />
    				
				    <div class="treeview">
				    <asp:TreeView runat="server" ID="FolderTree"
					    OnSelectedNodeChanged="FolderTree_SelectedNodeChanged"
					    >
					    <RootNodeStyle ImageUrl="/images/folder.gif" />
					    <ParentNodeStyle ImageUrl="/images/folder.gif" />
					    <LeafNodeStyle ImageUrl="/images/folder.gif" />
					    <SelectedNodeStyle Font-Underline="true" ForeColor="#A21818" />
				    </asp:TreeView>
				    </div>
			    </td>
		    </tr>
		    </table>
	    </td>
    </tr>
    </table>
</div>
</asp:Content>

