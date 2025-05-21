---
layout: default
nav_order:  2
title: Shared Components
has_children: true
redirect_from: 
    - shared_components/default.aspx/
    - Shared_components/default.aspx/
    - shared_components/Default.aspx/
    - Shared_Components/Default.aspx/
    - Shared_components/Default.aspx/
---

# Shared Components
{: .no_toc }

## Contents
{: .no_toc .text-delta }

- TOC
{:toc}

To improve users' experience when they combine drivers and other
software from various vendors, it is important to have some key software
components common to all implementations . In order to accomplish this,
the IVI Foundation provides a standard set of shared components that
must be used by all compliant drivers and ancillary software. These
components provide services to drivers and driver clients that need to
be common to all drivers, for instance, the administration of
system-wide configuration.

Generally, these components are provided to end customers along with IVI
drivers and other software tools they acquire from various vendors.
Customers acquiring the IVI Shared Components this way generally receive
support directly from those vendors. The components are also available
via the links below, however no customer support is provided by the IVI
Foundation.

## IVI Shared Components

The IVI Shared Components are required for use or development of
IVI-COM, IVI-C, or IVI.NET drivers. The IVI Shared Components require
.NET Framework version 2.0 or greater.

| ------------ | --------------- |
| [IviSharedComponents\_303.exe](../downloads/Shared%20Components/IviSharedComponents_303.exe)  | This file is an executable installer that installs the IVI Shared Components on either a 32-bit or 64-bit system.This executable installer installs the same components as the MSI package. |
| [Cleanup Utility (exe)](../downloads/Shared%20Components/x86/CleanupUtility.exe)  | Utility used to uninstall the IVI Shared Components version 2.2.1 or greater.                                                                                                               |
| [IVI Shared Components Release Notes (docx)](../downloads/Shared%20Components/IVI%20Shared%20Components%20Release%20Notes%203.0.docx) | This document provides information on the current and previous versions of the IVI Shared Components, including known issues.    |
| [Older IVI Shared Components Versions](OlderIviSharedComponents.html) | Download older versions of the IVI Shared Components.                                                                                                                                       |

## IVI.NET Shared Components

The IVI.NET Shared Components are required for use or development of
IVI.NET drivers. The IVI Shared Components 2.0.0 or greater (links
above) **must be installed before installing the IVI.NET Shared
Components**.

The IVI.NET Shared Components require .NET Framework version 2.0 or
greater.

| ------------ | --------------- |
| [IviNetSharedComponents_300.exe](../downloads/Shared%20Components/IviNetSharedComponents_300.exe)  | This file is an executable installer that installs the IVI.NET Shared Components on either a 32-bit or 64-bit system. The IVI Shared Components 2.0.0 or greater (links above) **must be installed before installing the IVI.NET Shared Components**. |
| [IVI.NET Shared Components Release Notes (docx)](../downloads/Shared%20Components/IVI.NET%20Shared%20Components%20Release%20Notes.docx) | This document provides information on the current and previous versions of the IVI.NET Shared Components, including known issues. |
| [Older IVI.NET Shared Components Versions](OlderIviNetSharedComponents.html) | Download older versions of the IVI.NET Shared Components. |

## VISA and VISA.NET Shared Components

VISA and VISA.NET Shared Components install common components needed to
provided consistency across VISA implementations from multiple vendors.
These installers are not available on this download page because they
are distributed as part of a vendor's installer for its VISA
implementation. Please contact a vendor directly if you wish to use
these installers separately.

| ------------ | --------------- |
| [VISA Shared Components Release Notes (txt)](../downloads/Shared%20Components/VISA%20Shared%20Components%20Release%20Notes_.txt)         | This document provides information on the current and previous versions of the VISA Shared Components, including known issues.     |
| [VISA.NET Shared Components Release Notes (txt)](../downloads/Shared%20Components/VISA.NET%20Shared%20Components%20Release%20Notes_.txt) | This document provides information on the current and previous versions of the VISA.NET Shared Components, including known issues. |
| [VISA Cleanup Utility (exe)](../downloads/Shared%20Components/VisaCleanupUtility_7.1.1_.exe)                                             | Utility used to uninstall the VISA Shared Components.                                                                              |

### VISA Shared Components for Linux

VISA Shared Components for Linux install common components needed to
provided consistency across Linux VISA implementations from multiple
vendors. These installers are not available on this download page
because they are distributed as part of a vendor's installer for its
Linux VISA implementation. Please contact a vendor directly if you wish
to use these installers separately.

| ------------ | --------------- |
| [VISA Shared Components for Linux Release Notes (txt)](../downloads/Shared%20Components/VISA%20Shared%20Components%20for%20Linux%20Release%20Notes.txt) | This document provides information on the current and previous versions of the VISA Shared Components for Linux, including known issues. |

## USBTMC Kernel Driver Packages for Linux

Although the IVI-proposed changes to the Linux USBTMC kernel driver have
been accepted into the kernel, it will be a while before those changes
are propogated into commercially available, supported distributions of
Linux.  To fill the gap, the IVI Foundation has created packages to
install the current USBTMC kernel driver on systems that include only
the older driver.  The packages will provide consistency across Linux
VISA implementations from multiple vendors. These installers are not
available on this download page because they are distributed as part of
a vendor's installer for its Linux VISA implementation. Please contact a
vendor directly if you wish to use these installers separately.

Review the Linux kernel change list for the changes included in version
4.20 of the Linux kernel.  

# Windows XP and Windows Vista Support

The latest versions of the Shared Components do not officially support
Windows XP or Windows Vista. The table below lists the last version of
each of the Shared Components that support Windows XP and Windows Vista.

| -------------------------- | ----- |
| IVI Shared Components      | 2.3.0 |
| IVI.NET Shared Components  | 1.1.2 |
| VISA Shared Components     | 5.6.0 |
| VISA.NET Shared Components | 5.6.0 |
