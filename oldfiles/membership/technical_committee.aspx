<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/membership/technical_committee.aspx.cs" Inherits="membership_technical_committee" Title="IVI Membership Technical Committee"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<%@ Register src="../_controls/CommitteeMenu.ascx" tagname="CommitteeMenu" tagprefix="uc1" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

     <div id="leftCol">
        <uc1:CommitteeMenu ID="CommitteeMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>Technical Committee</h1>
        <p>
            The IVI Technical Committee is perhaps the most important group of all IVI Committees. It typically consists of all voting members. It is chartered with overseeing all technical work with in the IVI organization. The IVI Technical Committee charters all new Technical Working Groups and selects the working group chairperson. These Working Groups meet separately (with the help and advice of the Technical Committee Chairman) and report back on a regular basis. The Technical Committee keeps track of all specifications under development, and regularly reviews progress. Once a Working Group has approved a specification, they submit it to the Technical Committee Chairperson, who is responsible to publish the draft specification and conduct a formal VOTE involving all voting members of IVI.
        </p>
        <p>&nbsp;</p>
    </div>
   
</asp:Content>