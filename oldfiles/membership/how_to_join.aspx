<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/membership/how_to_join.aspx.cs" Inherits="membership_how_to_join" Title="IVI Membership How to Join"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<%@ Register src="../_controls/MembershipMenu.ascx" tagname="MembershipMenu" tagprefix="uc1" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

     <div id="leftCol">
        <uc1:MembershipMenu ID="MembershipMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>How To Join</h1>
        <p>
            If you or your company would like to be part of this exciting development, 
            please download the IVI Foundation by-laws and membership application (below). 
            After reading through the by-laws, fill out the member application and fax or 
            mail with your check to:
        </p>
        
        <p>
            <a href="mailto:execdir@ivifoundation.org">Aaron Hall</a><br />
            Director of Services, IVI Foundation <br />
        </p>
        <p>
            There are three levels of membership:
        </p>
        <ul>
            <li>Sponsor Members &#8211; Voting &#8211; Member of Board of Directors &#8211; Dues - $8,500/year </li>
            <li>General Members &#8211; Voting &#8211; Elect Board of Director Members &#8211; Dues - $1,750/year </li>
            <li>Associate Members &#8211; Non-voting &#8211; Attend meetings, email list &#8211; Dues - $750/year </li>
        </ul>
        <p>
            If you need an invoice to issue the check, fax the applications in and indicate 
            to whom the invoice should be mailed or faxed, and we will send an invoice. Your 
            membership will start when check is received.
        </p>
        <p>
            <a href="../about/bylaws.aspx">IVI Membership By-laws</a>
        </p>
        <p>
            <a href="../downloads/Operating-Legal/IVI Membership Application 2016OCT20.docx">IVI Membership 
            Application</a> </p>
      <p>&nbsp;</p>
    </div>
    
    
    


   
</asp:Content>