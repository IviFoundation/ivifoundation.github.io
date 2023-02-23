
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/membership/marketing_committee.aspx.cs" Inherits="membership_marketing_committee" Title="IVI Membership Marketing Committee"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<%@ Register src="../_controls/CommitteeMenu.ascx" tagname="CommitteeMenu" tagprefix="uc1" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

     <div id="leftCol">
        <uc1:CommitteeMenu ID="CommitteeMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>Marketing Committee</h1>
        <p>
            The marketing committee is a committee of members that reports to the IVI Foundation Board of Directors. IVI Foundation members can have representatives attend and participate in marketing committee meetings, and those representatives need not be directors. The marketing committee is the primary body within the IVI Foundation that is responsible for promoting the benefits of IVI to the user as well as the editorial communities. The marketing committee maintains the IVI Foundation Web site, generates collateral to promote IVI, and holds press events at International industry exhibits and conferences such as APEX, Autotestcon, and Productronica.
        </p>
        <p>&nbsp;</p>
    </div>
   
</asp:Content>