
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/about/instrument_classes.aspx.cs" Inherits="about_instrument_classes" Title="IVI Instrument Classes"%>

<%@ Register Src="../_controls/AboutMenu.ascx" TagName="AboutMenu" TagPrefix="uc1" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="leftCol">
        <uc1:AboutMenu ID="AboutMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>Instrument Classes</h1>
        <p>
            To enable interchangeability, the foundation creates IVI class specifications that define the base class capabilities and class extension capabilities for some of the most popular instrument classes. There are currently thirteen instrument classes defined:
        </p>
        <ul>
            <li>Digital multimeter (DMM)</li>
            <li> Oscilloscope</li>
            <li> Arbitrary waveform/function generator</li>
            <li> DC power supply</li>
            <li> AC power supply</li>
            <li> Switch</li>
            <li> Power meter</li>
            <li> Spectrum analyzer</li>
            <li> RF signal generator</li>
            <li> Upconverter</li>
            <li> Downconverter</li>
            <li> Digitizer</li>
            <li> Counter/timer</li>
        </ul>
<p>
            Future work includes defining additional class specifications and extending the scope of current specifications to cover more instrument functionality.
        </p>
        <p>
            Instrument class specifications are available on the <a href="../specifications/default.aspx">Specifications</a> page.
        </p>
        <p>&nbsp;</p>
    </div>
   
</asp:Content>
