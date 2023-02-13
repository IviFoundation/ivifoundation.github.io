<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/membership/legal_committee.aspx.cs" Inherits="membership_legal_committee" Title="IVI Membership Legal Committee"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<%@ Register src="../_controls/CommitteeMenu.ascx" tagname="CommitteeMenu" tagprefix="uc1" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

     <div id="leftCol">
        <uc1:CommitteeMenu ID="CommitteeMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>Legal Committee</h1>
        <p>
            The legal committee is a committee of members that reports to the IVI Foundation Board of Directors. IVI Foundation members can have representatives attend and participate in legal committee meetings, and those representatives need not be directors. The legal committee is responsible for working with the IVI Foundation attorneys and advising the Board of Directors on amending the IVI Foundation by-laws, creating intellectual property policies, and generating various legal documents, such as IP license agreements and software click license agreements.
        </p>
        <p>&nbsp;</p>
    </div>
   
</asp:Content>
