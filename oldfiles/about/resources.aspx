
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/about/resources.aspx.cs" Inherits="about_resources" Title="IVI Resources"%>

<%@ Register Src="../_controls/AboutMenu.ascx" TagName="AboutMenu" TagPrefix="uc1" %>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
<div id="visDiv" runat="server">
    <div id="leftCol">
        <uc1:AboutMenu ID="AboutMenu1" runat="server" />
    </div>
 </div>
    <div id="rightCol">
       
        <h1>Resources</h1>
       
        <p>The following IVI Foundation member companies have provided these links to help you:</p>

        <ul>
            <li>Locate and obtain IVI drivers </li>
            <li>Locate commercial software tools that simplify IVI driver creation and use </li>
            <li>Find IVI technical information and code samples </li>
            <li>Learn more about exciting IVI applications </li>
        </ul>

        <div class="basicLine"></div>

        <p>
            <a href="http://www.keysight.com/find/ivi" target="_blank">Keysight Technologies</a><br />
            Keysight Technologies provides IVI-COM drivers for its instruments as well as software for instrument control. Click to download Agilent IVI-COM drivers, get application information and review software products.
        </p>
        <p>
            <a href="http://www.keithley.com/" target="_blank">Keithley Instruments</a><br />
            Keithley provides IVI drivers for many of the world-class instruments that meet the production test, process monitoring, product development, and research needs of electronics manufacturers.
        </p>
             
        <p>
            <a href="http://www.ni.com/ivi/" target="_blank">National Instruments</a><br />
            A founding member, National Instruments provides IVI-C class and specific drivers and instrument control software. Click for IVI information, application notes, and free driver downloads.
        </p>
             
        <p>
            <a href="http://www.pacificmindworks.com/" target="_blank">Pacific MindWorks</a><br />
            Pacific MindWorks is the industry leader in IVI driver tools, training, and development services.  Read more about why the industry’s biggest names turn to us.
        </p>
             
        <p>
            <a href="http://www.astronicstestsystems.com" target="_blank">Astronics Test Systems</a><br />
            Astronics Test Systems supports the IVI Foundation and its goals. Contact our technical sales department to discuss how our Systems and Products can satisfy your IVI requirements.
        </p>
             
        <p>
            <a href="http://www.rohde-schwarz.com/drivers/overview.html" target="_blank">Rohde & Schwarz</a><br />
            Rohde & Schwarz provides IVI-COM drivers and additional tools for instrument control. Click to get IVI information, application notes, and free IVI-COM driver downloads.
        </p>
        <p>
          <a href="http://www.mathworks.com/products/instrument/" target="_blank">MathWorks</a><br />
            The MathWorks, developers of MATLAB® and Simulink®, provides interactive tools for consistent instrument communication and control independent of hardware manufacture or driver. 
      </p>
             
<p>
            <a href="http://www.tek.com/oscilloscopes" target="_blank">Tektronix</a><br />
            Tektronix, a world leader in test, measurement and monitoring, provides IVI-COM drivers to enable efficient communication between open Windows oscilloscopes and other compliant instruments and software.
        </p>
             
        <p>
            <a href="http://www.teradyne.com/militaryaerospace/" target="_blank">Teradyne</a><br />
            An industry leader in VXI instrumentation and system integration, Teradyne is committed to the support of open standards such as IVI, VXIPlug&Play, and XML. Click here for more information.
        </p>
        <div class="basicLine"></div>

        <p>
            Notes: 
        </p>
        <ol>
            <li>Product and company names listed are trademarks or trade names of their respective companies.</li> 
            <li>Views expressed in these pages are not necessarily those of the IVI Foundation. </li>
            <li>Technical information presented has not been verified. </li>
            <li>References to commercial products should not be interpreted as an official IVI Foundation endorsement</li>
        </ol>        
        <p>&nbsp;</p>
    </div>
   
</asp:Content>
