<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ChangePassword.aspx.cs" Inherits="membership_ChangePassword" Title="IVI Member Profile - Change Password" %>

<%@ Register Src="../_controls/profileMenu.ascx" TagName="profileMenu" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="leftCol">
        <uc1:profileMenu ID="ProfileMenu1" runat="server" />
    </div>
    <div id="rightCol">
        <h1>
            Change Password<br />
            <br />
        </h1>
        <asp:ChangePassword ID="ChangePassword1" runat="server" ChangePasswordTitleText="" ContinueDestinationPageUrl="~/membership/profile.aspx" >
        </asp:ChangePassword>
    </div>
</asp:Content>
