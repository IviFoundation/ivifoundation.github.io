<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"
    CodeFile="login.aspx.cs" Inherits="login" Title="IVI Member Login" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="leftCol">
    </div>
    <div id="homeRightCol">
        <asp:Login ID="Login1" runat="server" VisibleWhenLoggedIn="False" DestinationPageUrl="~/Default.aspx">
            <LayoutTemplate>
                <div id="loginArea">
                    <span>Login</span><br />
                    <div style="font-size:8px;" >&nbsp;</div>
                    <asp:LinkButton ID="LoginButton" runat="server" CommandName="Login" CssClass="submit"
                        ValidationGroup="Login1" TabIndex="1" >&nbsp;</asp:LinkButton>
                        Email:<br />
                    <asp:TextBox ID="UserName" runat="server" CssClass="text" Width="135px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                        ErrorMessage="User Name is required." ToolTip="Email is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                    Password:<br />
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="text" Width="135px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                        ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator><br />
                    <a href="membership/create_member.aspx">Create an account</a> &nbsp; <a href="membership/recoverpassword.aspx">Forgot
                        Password</a>  
                </div>
              <div class="failureText" >
              <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
              </div>                
            </LayoutTemplate>
        </asp:Login>
    </div>
</asp:Content>
