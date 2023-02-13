<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/membership/member_login.aspx.cs" Inherits="membership_member_login" Title="Member Login"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
 <div id="homeRightCol" class="vertLine">
            <asp:Login ID="Login1" runat="server">
                <LayoutTemplate>
		            <div id="loginArea">
			            <span>Member Login</span><br />
			           <asp:LinkButton ID="LoginButton" runat="server" CommandName="Login" CssClass="submit" ValidationGroup="Login1" />

            			
			            <asp:TextBox ID="UserName" runat="server" CssClass="text"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                             ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        <br />
			            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="text"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                             ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        
				            <a href="create_member.aspx">Become a Member</a> &nbsp; <a href="">Forgot Password</a>
		                    <br /> <br />
		                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
		            </div>
		         </LayoutTemplate>
		        </asp:Login>
            </asp:Login>
 </div>
</asp:Content>
