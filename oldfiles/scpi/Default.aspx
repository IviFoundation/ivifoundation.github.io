<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="scpi_Default" Title="SCPI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<div id="leftCol">
    </div>
    <div id="rightCol">
        <h1>
            SCPI Consortium</h1>
        <p>
            The Standard Commands for Programmable Instrumentation (SCPI) Consortium 
			was an organization
            whose members shared a common commitment to develop a common interface language between
            computers and test instruments. The SCPI Standard is built on the foundation of
            IEEE-488.2, Standard Codes and Formats. It requires conformance to IEEE-488.2, but
            is pure software standard. SCPI syntax is ASCII text, and therefore can be attached
            to any computer test language, such as BASIC, C, or C++. It can also be used with
            Test Application Environments such as LabWindows/CVI, LabVIEW, MATLAB, Microsoft Visual Studio, or Agilent VEE. SCPI is
            hardware-independent. SCPI strings can be sent over any instrument interface. It
            works equally well over GPIB, RS-232, VXIbus or LAN networks. </p>
  <br />
        <h1>
            Integration into the IVI Foundation</h1>
        <p>
            The SCPI Consortium voted to become part of the IVI Foundation in late 2002 and
            the IVI Foundation Board of Directors voted to accept the merger in the spring of
            2003. IVI has assumed control of the SCPI specifications
            and all ongoing work will be accomplished as part of the IVI Foundation.			</p>
        <p>To view/download SCPI, go to the <a href="http://www.ivifoundation.org/specifications/default.aspx">Specifications</a> page.</p>
  </div>
</asp:Content>
