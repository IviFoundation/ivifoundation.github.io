
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/about/conformance.aspx.cs" Inherits="about_conformance" Title="IVI Conformance"%>

<%@ Register Src="../_controls/AboutMenu.ascx" TagName="AboutMenu" TagPrefix="uc1" %>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="leftCol">
        <uc1:AboutMenu ID="AboutMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
     <h1>Conformance</h1>
        <p>
            IVI drivers that conform to and are documented according to the IVI specifications may display the 
            IVI Conformant logo for easy identification. Drivers must also be registered before the logo can be 
            used. See the <a href="../registered_drivers/register_driver.aspx">Driver Registration > Registration </a> page to register your driver. You will receive an email containing the Logo file when you complete the registration process.  
        </p>
        
        <div style="text-align: center;float:left;">
            <img src="../images/IVI_Conformant_Logo.jpg" alt="IVI Conformant Logo" /><br />
            IVI Conformant Logo
        </div>
        <div class="clearer">
		  <p style="margin-bottom: 0;">&nbsp;</p>
		</div>
        
        <br />
        <p>
            IVI members may also display the standard IVI logo in association with Instruments or software applications that are IVI-related or IVI-enabled. 
        </p>
        <p>&nbsp;</p>
    </div>
   
</asp:Content>
