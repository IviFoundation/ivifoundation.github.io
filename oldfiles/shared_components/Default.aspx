<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"
    CodeFile="~/shared_components/Default.aspx.cs" Inherits="shared_components_Default"
    Title="Shared Components" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="leftCol">
    </div>
    <div id="rightCol">
        <h1>Shared Components</h1>
        <p>
            To improve users' experience when they combine drivers and other software from various
			vendors, it is important to have some key software components common to all implementations .
			In order to accomplish this, the IVI Foundation provides a standard set of shared
			components that must be used by all compliant drivers and ancillary software. These
			components provide services to drivers and driver clients that need to be common
			to all drivers, for instance, the administration of system-wide configuration.
        </p>
        <p>
            Generally, these components are provided to end customers along with IVI drivers
			and other software tools they acquire from various vendors. Customers acquiring
			the IVI Shared Components this way generally receive support directly from those
			vendors. The components are also available via the links below, however no customer
			support is provided by the IVI Foundation.
        </p>
        <strong>IVI Shared Components</strong>
        <p>
            The IVI Shared Components are required for use or development of IVI-COM, IVI-C, or IVI.NET drivers.  
			The IVI Shared Components require .NET Framework version 2.0 or greater.
        </p>
        <table cellpadding="5" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111"
            border="1">
            <tr>
                <td style="white-space: nowrap"><a href="../downloads/Shared Components/IviSharedComponents_300.exe">IviSharedComponents_300.exe</a></td>
                <td>This file is an executable installer that installs the IVI Shared Components on either a 32-bit or 64-bit system.This executable
					installer installs the same components as the MSI package.
                </td>
            </tr>
            <tr>
                <td style="white-space: nowrap">
                    <a href="../downloads/Shared Components/x86/CleanupUtility.exe" target="_blank">Cleanup Utility</a>
                </td>
                <td>Utility used to uninstall the IVI Shared Components version 2.2.1 or greater.
                </td>
            </tr>
            <tr>
                <td style="white-space: nowrap">
                    <a href="../downloads/Shared Components/IVI Shared Components Release Notes 3.0.docx">IVI Shared Components Release Notes</a>

                </td>
                <td>This document provides information on the current and previous versions of the IVI Shared Components, including known issues.</td>
            </tr>
            <tr>
                <td style="white-space: nowrap">
                    <a href="OlderIviSharedComponents.aspx">Older IVI Shared Components Versions</a>
                </td>
                <td>Download older versions of the IVI Shared Components.
                </td>
            </tr>
        </table>

        <br />
        <br />
        <strong>IVI.NET Shared Components</strong>
        <p>
            The IVI.NET Shared Components are required for use or development of IVI.NET drivers.  
			The IVI Shared Components 2.0.0 or greater (links above) <b>must be installed before installing the IVI.NET Shared Components</b>.
        </p>
        <p>
            The IVI.NET Shared Components require .NET Framework version 2.0 or greater.
        </p>
        <table cellpadding="5" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" border="1">
            <tr>
                <td style="white-space: nowrap"><a href="../downloads/Shared Components/IviNetSharedComponents_200.exe">IviNetSharedComponents_200.exe</a></td>
                <td>This file is an executable installer that installs the IVI.NET Shared Components on either a 32-bit or 64-bit system.
					The IVI Shared Components 2.0.0 or greater (links above) <b>must be installed before installing the IVI.NET Shared Components</b>.
                </td>
            </tr>
            <tr>
                <td style="white-space: nowrap">
                    <a href="../downloads/Shared Components/IVI.NET Shared Components Release Notes.docx">IVI.NET Shared Components Release Notes</a>
                </td>
                <td>This document provides information on the current and previous versions of the IVI.NET Shared Components, including known issues.
                </td>
            </tr>
            <tr>
                <td style="white-space: nowrap">
                    <a href="OlderIviNetSharedComponents.aspx" target="_blank">Older IVI.NET Shared Components Versions</a>
                </td>
                <td>Download older versions of the IVI.NET Shared Components.
                </td>
            </tr>
        </table>
        <br />
        <br />
        <strong>VISA and VISA.NET Shared Components</strong>
        <p>
            VISA and VISA.NET Shared Components install common components needed to provided consistency across VISA implementations from multiple vendors. These installers are not available on this 
            download page because they are distributed as part of a vendor's installer for its VISA implementation. Please contact a vendor directly if you wish to use these installers separately.        
        </p>
        <table cellpadding="5" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" border="1">
            <tr>
                <td style="white-space: nowrap">
                    <a href="../downloads/Shared Components/VISA Shared Components Release Notes_.txt">VISA Shared Components Release Notes</a>

                </td>
                <td>This document provides information on the current and previous versions of the VISA Shared Components, including known issues.</td>
            </tr>
            <tr>
                <td style="white-space: nowrap">
                    <a href="../downloads/Shared Components/VISA.NET Shared Components Release Notes_.txt">VISA.NET Shared Components Release Notes</a>

                </td>
                <td>This document provides information on the current and previous versions of the VISA.NET Shared Components, including known issues.</td>
            </tr>
            <tr>
                <td style="white-space: nowrap">
                    <a href="../downloads/Shared Components/VisaCleanupUtility_7.1.1_.exe">VISA Cleanup Utility</a>

                </td>
                <td>Utility used to uninstall the VISA Shared Components.</td>
            </tr>
        </table>
        <br />
        <br />
        <strong>VISA Shared Components for Linux</strong>
        <p>
            VISA Shared Components 
			for Linux install common components needed to provided consistency across 
			Linux VISA implementations from multiple vendors. These installers are not available on this 
            download page because they are distributed as part of a vendor's installer for its 
			Linux VISA implementation. Please contact a vendor directly if you wish to use these installers separately.        
        </p>
        <table cellpadding="5" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" border="1">
            <tr>
                <td style="white-space: nowrap">
                    <a href="../downloads/Shared Components/VISA Shared Components for Linux Release Notes.txt">VISA Shared Components for Linux Release Notes</a>

                </td>
                <td>This document provides information on the current and previous versions of the VISA Shared Components 
				for Linux, including known issues.</td>
            </tr>
        </table>
        <br />
        <br />
        <strong>USBTMC Kernel Driver Packages for Linux</strong>
        <p>
            Although the IVI-proposed changes to the Linux USBTMC kernel driver 
			have been accepted into the kernel, it will be a while before those 
			changes are propogated into commercially available, supported 
			distributions of Linux.&nbsp; To fill the gap, the IVI Foundation 
			has created packages to install the current USBTMC kernel driver on 
			systems that include only the older driver.&nbsp; The packages will provide consistency across 
			Linux VISA implementations from multiple vendors. These installers are not available on this 
            download page because they are distributed as part of a vendor's installer for its 
			Linux VISA implementation. Please contact a vendor directly if you wish to use these installers separately.        
        </p>
        Review the Linux kernel change list for the changes included in version 
		4.20 of the Linux kernel.<br />
        <br />
        <strong>Windows XP and Windows Vista Support</strong>
        <p>
            The latest versions of the Shared Components do not officially support Windows XP or Windows Vista.  The table below lists the last version
            of each of the Shared Components that support Windows XP and Windows Vista.
        </p>
        <table cellpadding="5" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" border="1">
            <tr>
                <td>IVI Shared Components</td>
                <td>2.3.0</td>
            </tr>
            <tr>
                <td>IVI.NET Shared Components</td>
                <td>1.1.2</td>
            </tr>
            <tr>
                <td>VISA Shared Components</td>
                <td>5.6.0</td>
            </tr>
            <tr>
                <td>VISA.NET Shared Components</td>
                <td>5.6.0</td>
            </tr>
        </table>
        <br />
        <br />
    </div>
</asp:Content>
