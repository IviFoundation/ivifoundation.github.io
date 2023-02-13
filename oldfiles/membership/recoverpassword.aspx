<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="recoverpassword.aspx.cs" Inherits="membership_recoverpassword" Title="Recover Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br /><br /><div style="text-align:center"><asp:PasswordRecovery ID="ucPasswordRecovery" runat="server" OnSendingMail="ucPasswordRecovery_SendingMail">
    </asp:PasswordRecovery></div>
</asp:Content>

