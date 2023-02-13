
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/about/SCPI.aspx.cs" Inherits="about_SCPI" Title="IVI SCPI"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="leftCol">
        <p><a id="A1" runat="server" href="charter.aspx">. Charter</a></p>
        <p><a id="A2" runat="server" href="overview.aspx">. Overview</a></p>
        <p><a id="A3" runat="server" href="architecture.aspx">. Driver Architecture</a></p>
        <p><a id="A7" runat="server" href="instrument_classes.aspx">. Instrument Classes </a></p>
        <p><a id="A4" runat="server" href="MSS.aspx">. MSS</a></p>
        <p><a id="A5" runat="server" href="conformance.aspx">. Conformance</a></p>
        <p><a id="A6" runat="server" href="../resources/default.aspx">. Resources </a></p>
        <p><a id="A8" runat="server" href="SCPI.aspx" class="current">. SCPI </a></p>
        <p><a id="A9" runat="server" href="legal.aspx?fromDiff=aAbout">. Legal </a></p>
    </div>
 
    <div id="rightCol">
       
        <h1>SCPI Consortium </h1>
        <p>
            The Standard Commands for Programmable Instrumentation (SCPI) Consortium is an organization whose members share a common commitment to develop a common interface language between computers and test instruments. The SCPI Standard is built on the foundation of IEEE-488.2, Standard Codes and Formats. It requires conformance to IEEE-488.2, but is pure software standard. SCPI syntax is ASCII text, and therefore can be attached to any computer test language, such as BASIC, C, or C++. It can also be used with Test Application Environments such as LabWindows/CVI, LabVIEW, or HP VEE. SCPI is Hardware Independent. SCPI strings can be sent over any instrument interface. It works equally well over GPIB, RS-232, VXIbus or LAN networks. 
        </p>

        <strong>Integration into the IVI Foundation</strong>
        <p>
            The SCPI Consortium voted to become part of the IVI Foundation in late 2002 and the IVI Foundation Board of Directors voted to accept the merger in the spring of 2003.  Annual meetings of the SCPI Consortium have been meeting in conjunction with the IVI Foundations meetings since 2002.  IVI has assumed control of the SCPI specifications and all ongoing work will be accomplished as part of the IVI Foundation.  SCPI will continue to support a separate web site for the SCPI Consortium until this merger is  well communicated to the industry.  For more details about the SCPI Consortium and its specifications, please visit <a href="www.scpiconsortium.org" target="_blank">www.scpiconsortium.org</a>.
        </p>
        
        <p>&nbsp;</p>
    </div>
   
</asp:Content>
