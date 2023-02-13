<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"
    CodeFile="~/membership/Default.aspx.cs" Inherits="membership_Default" Title="Membership" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>
<%@ Register Src="../_controls/MembershipMenu.ascx" TagName="MembershipMenu" TagPrefix="uc1" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="leftCol">
        <uc1:membershipmenu id="MembershipMenu1" runat="server" />
    </div>
    <div id="rightCol">
        <h1>Members Documents Have Moved to SharePoint</h1>
        <p>
            IVI Foundation members have access to working group documents and communication.  These documents are now available
            on the <a href="http://ivifoundation.sharepoint.com" target="_blank">IVI SharePoint site</a>.  To access the <a href="http://ivifoundation.sharepoint.com" target="_blank">IVI SharePoint site</a> site, 
            you must first have a Microsoft Account.  Then, you must request access to the site from <a href="mailto:execdir@ivifoundation.org">Aaron Hall</a>, the Director of Services for the IVI Foundation.
        </p>
        <p>
            &nbsp;
        </p>
    </div>
</asp:Content>
