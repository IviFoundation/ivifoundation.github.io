<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"
    MasterPageFile="~/MasterPage.master" Title="IVI Foundation" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="homeLeftCol">
        <div id="intro">
            <h1>
                Welcome to the Interchangeable Virtual Instruments Foundation</h1>
            <p>
                The IVI Foundation is an open consortium founded to promote specifications for programming
                test instruments that simplify interchangeability, provide better performance, and
                reduce the cost of program development and maintenance.</p>
        </div>
        <div class="line">
        </div>
        <div id="contentArea">
            <div id="contentLeft" style="height: 400px; width: 304px;">
                <h3 style="height: 17px; width: 310px;">
                    Security</em><span class="style1"> </span>
                </h3>
                <span class="style1">
                    <p align="justify">
                       The IVI Foundation has been collaborating with the LXI Consortium to update the IVI standards for secure instrument network communication.  For details on these updates:</p> <br>
                    
                    <li><a href="http://lxistandard.org/Documents/News/2022-08_IVI_and_LXI_Press_Release.pdf"target="_blank">Press Release</a> - IVI and LXI Leading the T&M Industry in Security Standardization</li><br>
                    <li><a href="http://lxistandard.org/Documents/Articles/IviSecurityFeatures.pdf"target="_blank">Article</a> - IVI Standard Updates for Secure Network Connections</li><br>
                    <li><a href="https://lxistandard.org/">LXI Consortium Security Updates</a></li><br>
                    </p>
                </span>
                <h3 style="height: 17px; width: 310px;">
                    VXI<em>plug&amp;play</em><span class="style1"> </span>
                </h3>
                <span class="style1">
                    <p align="justify" style="height: 17px; width: 310px;">
                        The VXI<em>plug&amp;play</em> Systems Alliance was an organization whose members
                        shared a common commitment to end-user success with open, multivendor VXI systems.
                        For more information, <a href="http://ivifoundation.org/VXIPlug_Play/default.aspx">click
                            here</a>.
                    </p>
                    <p align="justify" style="height: 17px; width: 310px;">&nbsp;
                        </p>
                </span>
                <h3>&nbsp;
                    </h3>
                <h3>&nbsp;
                    </h3>
                <h3>
                    SCPI</h3>
                <p align="justify">
                    The Standard Commands for Programmable Instrumentation (SCPI) Consortium was an
                    organization whose members shared a common commitment to develop a common interface
                    language between computers and test instruments. For more information, <a href="http://ivifoundation.org/scpi/default.aspx">
                        click here</a>.</p>
                <span class="style1">
                    <p style="height: 0px">&nbsp;
                        
                    </p>
                </span>
            </div>
            <div id="contentRight">
                <p style="height: 5px">&nbsp;                        
                </p>
                <h3 style="height: 17px; width: 310px;">
                    IVI Overcomes Industry Challenges</em><span class="style1"> </span>
                </h3>
                <!--<h3>
                    IVI Overcomes Industry Challenges</h3>-->
                <p align="justify">
                    In today&#39;s world two factors hinder efficient test system setup and support:
                </p>
                <p align="justify">
                    1) the high cost of developing and maintaining test system software and, 2) rapidly
                    evolving technology. The IVI Foundation addresses these needs through new driver
                    technology:</p>
                <p align="justify">
                    IVI drivers define a new level of quality, completeness, usability, and functionality
                    that reduces the cost of test system development and ownership.</p>
                <p align="justify">
                    IVI drivers simplify upgrading or replacing components in complex test systems intended
                    to be used over a long period of time. The IVI Foundation was formed in 1998 and
                    officially incorporated in 2001. Its membership includes end-users, instrument vendors,
                    software vendors, system suppliers, and system integrators.</p>
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <div class="clear">
            </div>
        </div>
    </div>
    <div id="homeRightCol" style="height: 539px">
        <asp:Login ID="Login1" runat="server" VisibleWhenLoggedIn="False" DestinationPageUrl="~/Default.aspx">
            <LayoutTemplate>
                <div id="loginArea">
                    <span>Login</span><br />
                    <div style="font-size: 8px;">
                        &nbsp;</div>
                    <asp:LinkButton ID="LoginButton" runat="server" CommandName="Login" CssClass="submit"
                        ValidationGroup="Login1" TabIndex="1">&nbsp;</asp:LinkButton>
                    Email:<br />
                    <asp:TextBox ID="UserName" runat="server" CssClass="text" Width="135px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                        ErrorMessage="Email is required." ToolTip="Email is required." ValidationGroup="Login1">
						*</asp:RequiredFieldValidator>
                    Password:<br />
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="text" Width="135px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                        ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">
						*</asp:RequiredFieldValidator><br />
                    <a href="membership/create_member.aspx">Create an account</a> &nbsp; <a href="membership/recoverpassword.aspx">
                        Forgot Password</a>
                </div>
                <div class="failureText">
                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                </div>
            </LayoutTemplate>
        </asp:Login>
        <div class="vertLineshort">
            <h3 class="top" style="margin-top: 0px;">
                Next IVI Meeting</h3>
            <p style="margin-top: 0px;">&nbsp;</p>
            <p style="margin-top: 0px;"><a href="http://www.ivifoundation.org/meetings/2023Feb/Default-FEB2023.aspx"><strong>February 6-9, 2023 Virtual Meeting</strong></a></p>
            <p style="margin-top: 0px;">&nbsp;</p>
        </div>
        <div class="vertLineshort">
            <a href="downloads/IVI_GSG v1.01.pdf" class="gettingstarted" target="_blank"></a>
            <p class="top">
                <a href="downloads/IVI-GSG-CurrentVersion.pdf">IVI Getting Started Guide</a></p>
            <p>&nbsp;
                </p>
        </div>
       <!-- <div class="vertLineshort" >
            <a href="http://forums.ivifoundation.org" class="webforum" target="_blank"></a>
            <p class="top">
                <a href="http://forums.ivifoundation.org" target="_blank">IVI Web Forum</a><br />
                Get answers to questions on all<br />
                things IVI!</p>
            <p>&nbsp;
                </p>
        </div> -->
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeaderContent">
    <style type="text/css">
        .style1
        {
            margin-bottom: 83;
        }
        .style2
        {
            margin-top: 11;
        }
        .auto-style1
        {
            margin-right: 0;
        }
        .auto-style2
        {
            margin-right: 15;
        }
    </style>
</asp:Content>
