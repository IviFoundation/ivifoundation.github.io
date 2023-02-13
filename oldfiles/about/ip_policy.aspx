
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/about/ip_policy.aspx.cs" Inherits="about_ip_policy" Title="IVI Intellectual Property Policy"%>

<%@ Register Src="../_controls/AboutMenu.ascx" TagName="AboutMenu" TagPrefix="uc1" %>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="leftCol">
        <uc1:AboutMenu ID="AboutMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>IPR Policy</h1>
        <p>
            The IVI Foundation has adopted intellectual property policies and procedures in order to minimize the possibility of inadvertent infringement of the patent and other intellectual property rights (collectively, "IPR") of an IPR owner by members of the Consortium using any Consortium specifications or software products.
            <br /><br />
            <a href="../downloads/Operating-Legal/Revised IPR Policy 2005-05-02.doc" target="_blank">Intellectual Property Policy</a>
        </p>
        <p>&nbsp;</p>
    </div>
   
</asp:Content>
