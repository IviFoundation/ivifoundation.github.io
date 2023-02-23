<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/membership/user_committee.aspx.cs" Inherits="membership_user_committee" Title="IVI Membership User Committee"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<%@ Register src="../_controls/CommitteeMenu.ascx" tagname="CommitteeMenu" tagprefix="uc1" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

     <div id="leftCol">
        <uc1:CommitteeMenu ID="CommitteeMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>Users Committee</h1>
        <p>
            The Users Committee reports directly to the Board of Directors.  Its chairperson is typically one of the User members.  Members are generally all IVI user members plus those vendor members who choose to attend.  However, the chairperson of the committee reserves the right to curtail discussion if it varies from IVI user focus.  The purpose if the Users committee is to provide feedback to the entire organization on the usability and impact of commercial IVI drivers on the user community.  They are chartered to give honest feedback to help improve the IVI standards and their implementation.  In particular, if they see something that is not working well, or a Instrument class that they feel is important to be added, we depend on their feedback to bring it to the group’s attention.
        </p>
        <p>&nbsp;</p>
    </div>
   
</asp:Content>
