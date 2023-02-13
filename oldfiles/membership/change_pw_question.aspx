<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="change_pw_question.aspx.cs" Inherits="membership_change_pw_question"
    Title="IVI Member Profile - Change Password Retrieval Question" %>

<%@ Register Src="../_controls/profileMenu.ascx" TagName="profileMenu" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="leftCol">
        <uc1:profileMenu ID="ProfileMenu1" runat="server" />
    </div>
    <div id="rightCol">
    <br />
        <h1>Change Password Retreival Question</h1><br /><br />
        <table class="GridItem" style="text-align: left;" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" CssClass="GridItemSmall" Text="Question:"></asp:Label></td>
                <td colspan="2">
                    <asp:TextBox ID="tbPasswordQuestion" runat="server" CssClass="GridItemSmall" Width="375px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPasswordQuestion" runat="server" ControlToValidate="tbPasswordQuestion"
                        CssClass="GridItemSmall" ErrorMessage="*">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="Label2" runat="server" CssClass="GridItemSmall" Text="Answer:"></asp:Label></td>
                <td >
                    <asp:TextBox ID="tbPasswordAnswer" runat="server" CssClass="GridItemSmall"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSecuirtyAnswer" runat="server" ControlToValidate="tbPasswordAnswer"
                        CssClass="GridItemSmall" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                <td >
                    <asp:Label ID="Label6" runat="server" CssClass="GridItemSmall" Text="&nbsp;&nbsp;(answer not shown for security)"></asp:Label></td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="Label3" runat="server" CssClass="GridItemSmall" Text="Password:"></asp:Label></td>
                <td colspan="2">
                    <asp:TextBox ID="tbPassword" runat="server" CssClass="GridItemSmall" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbPassword"
                        CssClass="GridItemSmall" ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td colspan="3" >&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="3" align="right" >
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /></td>
            </tr>
        </table>
        <br />
        <br />
    <asp:Label ID="lblSuccess" runat="server" Text="Your password information updated successfully." Font-Bold="True" ForeColor="Green"></asp:Label>
        <br />
    </div>
</asp:Content>
