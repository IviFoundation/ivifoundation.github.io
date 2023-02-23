<%@ Page Language="C#" AutoEventWireup="true" CodeFile="roles.aspx.cs" Inherits="admin_access_roles"
    MasterPageFile="~/MasterPage.master" %>

<%@ Register Src="../../_controls/adminaccessmenu.ascx" TagName="adminaccessmenu"
    TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

<div id="leftCol">
    <uc1:adminaccessmenu ID="Adminaccessmenu1" runat="server" />
    
</div>
<div id="rightCol">
    <h1>Roles</h1>

    <table class="webparts">

    <tr>
    <td class="details" valign="top" style="width: 450px;">

    <br />

    <asp:GridView runat="server" ID="UserRoles" AutoGenerateColumns="false"
	    CssClass="list" AlternatingRowStyle-CssClass="odd" GridLines="none" OnRowDataBound="UserRoles_RowDataBound"
	    >
	    <Columns>
		    <asp:TemplateField>
			    <HeaderTemplate>Role Name</HeaderTemplate>
			    <ItemTemplate>
				    <%# Eval("Role Name") %>
			    </ItemTemplate>
		    </asp:TemplateField>
		    <asp:TemplateField>
			    <HeaderTemplate>User Count</HeaderTemplate>
			    <ItemTemplate>
				    <%# Eval("User Count") %>
			    </ItemTemplate>
		    </asp:TemplateField>
		    <asp:TemplateField>
			    <HeaderTemplate>Delete Role</HeaderTemplate>
			    <ItemTemplate>
				    <asp:Button ID="Button1" runat="server" OnCommand="DeleteRole" CommandName="DeleteRole" CommandArgument='<%# Eval("Role Name") %>' Text="Delete" OnClientClick="return confirm('Are you sure?')" />
			    </ItemTemplate>
		    </asp:TemplateField>
	    </Columns>
    </asp:GridView>


    <p>
    New Role:
    <asp:TextBox runat="server" ID="NewRole"></asp:TextBox>

    <asp:Button ID="Button2" runat="server" OnClick="AddRole" Text="Add Role" />
    </p>

    <div runat="server" id="ConfirmationMessage" class="alert">
    </div>

    </td>

    </tr></table>
</div>
</asp:Content>