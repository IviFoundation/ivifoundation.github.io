
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/about/default.aspx.cs" Inherits="about_default" Title="About IVI"%>

<%@ Register Src="../_controls/AboutMenu.ascx" TagName="AboutMenu" TagPrefix="uc1" %>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="leftCol">
        <uc1:AboutMenu ID="AboutMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>About IVI</h1>
        <p>These pages will help you learn more about the IVI Foundation and IVI technology.</p>
        <ul>
          <li>To understand why IVI was formed, see the <a href="Charter.aspx">Charter</a>
            page.&nbsp;</li>
          <li>See <a href="Overview.aspx">Overview</a> to get
            an overview of IVI technology and benefits.</li>
          <li>The <a href="Architecture.aspx">Architecture</a>
            page describes the overall IVI software architecture, explaining the major
            software components and standard instrument classes.</li>
          <li><a href="Instrument_classes.aspx">Instrument
            Classes</a> describes IVI's instrument classes in more detail.</li>
          <li>The <a href="MSS.aspx">MSS</a> page describes
            IVI's Measurement and Stimulus Subsystem specification, which supports
            integrated solutions of IVI drivers, IVI shared components and other
            software elements.</li>
          <li><a href="Conformance.aspx">Conformance</a> explains
            IVI's process for assuring that commercial drivers are conformant to the IVI
            specifications.</li>
          <li>Finally the <a href="Resources.aspx">Resources</a>
            page provides links to other web pages where you can to download&nbsp;
            drivers, get<br>
            application information and review IVI-related software products.</li>
        </ul>
        <p>&nbsp;</p>
    </div>
   
</asp:Content>
