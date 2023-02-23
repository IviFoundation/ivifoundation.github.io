<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Src="..\..\_controls\PasswordReset.ascx" TagName="PasswordReset" TagPrefix="uc1" %>

<script runat="server">
    string username;

    MembershipUser user;

    private void Page_Load()
    {
        username = Request.QueryString["username"];
        if (username == null || username == "")
            Response.Redirect("users.aspx");
        user = Membership.GetUser(username);
    }

    private void UpdateUser(object sender, EventArgs e)
    {
        //Need to handle the update manually because MembershipUser does not have a
        //parameterless constructor  

        user.Email = tbEmail.Text.Trim();
        user.Comment = tbComment.Text.Trim();
        user.IsApproved = cbActiveUser.Checked;

        try
        {
            // Update user info:
            Membership.UpdateUser(user);

            // Update user roles:
            UpdateUserRoles();

            ltlMessage.Text = "Update Successful.";
        }
        catch (Exception ex)
        {
            ltlMessage.Text = "Update Failed: " + ex.Message;
        }
    }

    private void CancelUser(object sender, EventArgs e)
    {
    }

    private void Page_PreRender()
    {
        // fill in the user
        ltlUsername.Text = user.UserName;
        tbEmail.Text = user.Email;
        tbComment.Text = user.Comment;
        cbActiveUser.Checked = user.IsApproved;
        cbLockedOut.Checked = user.IsLockedOut;
        cbOnline.Checked = user.IsOnline;
        ltlCreated.Text = user.CreationDate.ToString();
        ltlLastActivityDate.Text = user.LastActivityDate.ToString();
        ltlLastLoginDate.Text = user.LastLoginDate.ToString();
        ltlLastLockoutDate.Text = user.LastLockoutDate.ToString();
        ltlLastPasswordChangedDate.Text = user.LastPasswordChangedDate.ToString();

        // Load the User Roles into checkboxes.
        UserRoles.DataSource = Roles.GetAllRoles();
        UserRoles.DataBind();

        // Bind these checkboxes to the User's own set of roles.
        string[] userRoles = Roles.GetRolesForUser(username);
        foreach (string role in userRoles)
        {
            ListItem checkbox = UserRoles.Items.FindByValue(role);
            checkbox.Selected = true;
        }
    }

    private void UpdateUserRoles()
    {
        foreach (ListItem rolebox in UserRoles.Items)
        {
            if (rolebox.Selected)
            {
                if (!Roles.IsUserInRole(username, rolebox.Text))
                {
                    Roles.AddUserToRole(username, rolebox.Text);
                }
            }
            else
            {
                if (Roles.IsUserInRole(username, rolebox.Text))
                {
                    Roles.RemoveUserFromRole(username, rolebox.Text);
                }
            }
        }
    }

    private void DeleteUser(object sender, EventArgs e)
    {
        //Membership.DeleteUser(username, false); // DC: My apps will NEVER delete the related data.
        Membership.DeleteUser(username, true); // DC: except during testing, of course!
        Response.Redirect("users.aspx");
    }

    private void UnlockUser(object sender, EventArgs e)
    {
        // Dan Clem, added 5/30/2007 post-live upgrade.

        // Unlock the user.
        user.UnlockUser();
    }

    private void ResetPassword(object sender, EventArgs e)
    {
        ucPasswordReset.Password = Membership.GeneratePassword(7, 0);
        mpePasswordReset.Show();
    }

    private void btnPasswordResetOK_Click(object sender, EventArgs e)
    {
        try
        {
            string message;
            if (!ucPasswordReset.Save(out message))
            {
                mpePasswordReset.Show();
                return;
            }

            string password = ucPasswordReset.Password;
            DataAccess.ResetPassword((Guid)user.ProviderUserKey, ref password, out message);

            ltlMessage.Text = message;
        }
        catch (Exception ex)
        {
            ltlMessage.Text = "Error while resetting password.  Message: " + ex.Message;
        }
    }

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="leftCol">
        <!-- #include file="_nav.aspx -->
    </div>
    <div id="rightCol">
        <h1>User Information</h1>

        <table class="webparts">

            <tr>
                <td class="details" valign="top" style="width: 45%;">
                    <h3>Main Info:</h3>
                    <table style="width: 100%;" cellpadding="2px">
                        <tr>
                            <td>User Name</td>
                            <td>
                                <asp:Literal runat="server" ID="ltlUsername" /></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>
                                <asp:TextBox runat="server" ID="tbEmail" Width="100%" /></td>
                        </tr>
                        <tr>
                            <td>Comment</td>
                            <td>
                                <asp:TextBox runat="server" ID="tbComment" Width="100%" /></td>
                        </tr>
                        <tr>
                            <td>Active User</td>
                            <td>
                                <asp:CheckBox runat="server" ID="cbActiveUser" /></td>
                        </tr>
                        <tr>
                            <td>Locked Out</td>
                            <td>
                                <asp:CheckBox runat="server" ID="cbLockedOut" Enabled="false" /></td>
                        </tr>
                        <tr>
                            <td>Online</td>
                            <td>
                                <asp:CheckBox runat="server" ID="cbOnline" Enabled="false" /></td>
                        </tr>
                        <tr>
                            <td>Created</td>
                            <td>
                                <asp:Literal runat="server" ID="ltlCreated" /></td>
                        </tr>
                        <tr>
                            <td>Last Activity Date</td>
                            <td>
                                <asp:Literal runat="server" ID="ltlLastActivityDate" /></td>
                        </tr>
                        <tr>
                            <td>Last Login Date</td>
                            <td>
                                <asp:Literal runat="server" ID="ltlLastLoginDate" /></td>
                        </tr>
                        <tr>
                            <td>Last Lockout Date</td>
                            <td>
                                <asp:Literal runat="server" ID="ltlLastLockoutDate" /></td>
                        </tr>
                        <tr>
                            <td>Last Password Changed Date</td>
                            <td>
                                <asp:Literal runat="server" ID="ltlLastPasswordChangedDate" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button runat="server" ID="btnUpdate" Text="Update" OnClick="UpdateUser" />&nbsp;&nbsp;
                                <asp:Button runat="server" ID="btnCancel" Text="Cancel" OnClick="CancelUser" />
                            </td>
                        </tr>
                    </table>

                    <asp:ObjectDataSource ID="MemberData" runat="server" DataObjectTypeName="System.Web.Security.MembershipUser" SelectMethod="GetUser" UpdateMethod="UpdateUser" TypeName="System.Web.Security.Membership">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="username" QueryStringField="username" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td class="details" valign="top" style="width: 10%;">&nbsp;
                </td>
                <td class="details" valign="top" style="width: 45%;">
                    <h3>Roles:</h3>
                    <asp:CheckBoxList ID="UserRoles" runat="server" />
                </td>
            </tr>
        </table>
        <table style="width: 100%;" cellpadding="2px">
            <tr>
                <td>
                    <h3>Other Actions:</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Unlock User" OnClick="UnlockUser" OnClientClick="return confirm('Click OK to unlock this user.')" /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Delete User" OnClick="DeleteUser" OnClientClick="return confirm('Are you sure you want to delete this user?  This action can't be undone.')" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Reset Password" OnClick="ResetPassword" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="ltlMessage" runat="server" EnableViewState="false" />
                </td>
            </tr>
        </table>
    </div>

    <asp:Button ID="btnDummy" runat="server" Style="display: none;" ValidationGroup="PasswordReset" CausesValidation="false" />
    <ajaxToolkit:ModalPopupExtender ID="mpePasswordReset" runat="server" TargetControlID="btnDummy"
        DropShadow="true" BackgroundCssClass="modalBackground"
        PopupControlID="pnlPasswordReset" CancelControlID="btnPasswordResetCancel">
    </ajaxToolkit:ModalPopupExtender>
    <asp:Panel runat="server" ID="pnlPasswordReset" BorderWidth="1" BorderColor="black"
        BorderStyle="Solid" BackColor="WhiteSmoke" Style="padding: 20px; width: 300px; display: none"
        DefaultButton="btnPasswordResetOK">
        <table>
            <tr>
                <td>
                    <div class="page-anchor-wrapper"><a name="PasswordReset" id="PasswordReset" class="page-anchor"></a></div>
                    <asp:ValidationSummary runat="server" ID="vsPasswordReset" ShowMessageBox="false" ShowSummary="true" HeaderText="Please fix the following issue(s):" ValidationGroup="PasswordReset" CssClass="error-message" />
                </td>
            </tr>
            <tr>
                <td>
                    <uc1:PasswordReset ID="ucPasswordReset" ValidationGroup="PasswordReset" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnPasswordResetOK" runat="server" Text="Update" OnClick="btnPasswordResetOK_Click" CausesValidation="true" ValidationGroup="PasswordReset" />
                    <asp:Button ID="btnPasswordResetCancel" runat="server" Text="Cancel" CausesValidation="false" ValidationGroup="PasswordReset" Style="margin-left: 10px; margin-right: 10px;" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
