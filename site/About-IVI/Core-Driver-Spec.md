---
layout: default
parent: Core Drivers
title: Core Driver Specification
nav_order:  20
---

# The IVI Driver Core Specification

<br>

<div class="svg-container" style="display: block; clear: both;" >
 <img src="{{ '../assets/images/Ivi-Core-Drivers-detail.svg' | relative_url }}" alt="My Graphic" style="max-width: 90%; height: auto;">
</div>

<br> 

The IVI Driver Core specification establishes a baseline set of requirements for all IVI Core drivers regardless of the target language. The IVI Core specification requires the essential features of drivers, without unnecessary complexity.  This results in:

- Fast and efficient drivers
- Minimal complexity drivers, which means that customers that want to work with the driver source code can do so.
- Drivers attuned to the most modern languages, including Python and .NET 6,7,8 and beyond.
- A new C IVI driver that is based on ANSI-C, for use both in C programming environment and in environments that can call into compiled C libraries, such as Java and C++.

Although IVI Generation 2014 guaranteed customers source code, in many cases the configurable settings drivers were so complex that the source code was impractical to update without access to the internal tool chains used by the driver developers.

The primary requirements of IVI-Core drivers are:

**Full Instrument Capability** &mdash; Drivers are required to provide  full access to the instrument capabilities that are relevant for a test system. This ensure that customers acquiring an IVI Core driver can utilize all the capability of the instrument.

Capabilities that IVI permits to be left out are: functions for instrument service and diagnostics, instrument display features not used in system applications, and functions that would override the driver's communication with the instrument. An example of a function that may not be include would a function that changes the format that measurement data is returned in. Changing a setting like this could potentially stop the driver from properly returning measurement data.

**Documentation** &mdash; The IVI-Core has requirements regarding 4 documents:

- *Driver Introduction Document* IVI specifies the detailed table of contents for the Driver Introduction Document. This provides a consistent user experience and ensures complete documents are provided with the driver. The driver introduction document contains:
  
  - details on the driver's files (names, directories, functions)
  - how to access the driver source code
  - extensive detail on how to connect to the instrument, configure it, and control it
  - where IVI required example programs may be found
  - documentation of the instrument commands supported by the driver; if the driver is built on top of another layer like SCPI.
  - how to use the Direct IO API calls (if these calls are required for this driver)

- *Help Documentation* This required document is the main driver documentation. It contains detailed information on all the methods and properties (also known as functions) in the driver and their use.

- *Compliance Documentation* This document contains the driver vendors formal (and binding) statements regarding their compliance to the standard, and to the testing that they have completed. It includes details of instrument models supported and the specific test configurations with which the driver has been validated. These sections provide users with the assurance that the driver vendor completed appropriate tests.
  
- *README.md* The required README file includes release notes, as well as any necessary details for accessing the driver's source code and documentation. Since many IVI Core drivers are designed for package management systems, and therefore many copies may be on the target system, it is common for documentation and driver source code to be available in a different package than the driver itself. The README file documents how customers can access this additional ***required** information.

**Source Code** &mdash; - Drivers that are built on top of another documented interface (such as SCPI or a REST interface) are required to include the driver source code. This permits customers to inspect the source code, enhance, modify, or debug drivers.  This is essential for many customers that need to have complete control over their system software.

The only drivers that do not include source code are the ones, such as PXI drivers, where the instrument driver itself is the only documented and supported interface to the instrument.

**Testing** &mdash; - Drivers must complete thorough testing. IVI requires that every driver API be validated with all reasonable parameters, touching the parameter limits as part of the validation.  Since there is not a practical way for the IVI Foundation to police the testing performed by vendors, IVI requires that vendors document for customers that the required testing has been completed in the *Compliance Document*.  This documentation gives customers the leverage they need to insist on defect fixes if they find problems with drivers.

**Common API** &mdash; IVI Core includes a brief required API. [Core Driver APIs](/About-IVI/Core-Driver-APIs.html) has details.

**Key Capabilities** &mdash; IVI Core defines a couple of key capabilities that must be included in all drivers, those are:

- All IVI Core drivers must support simulation. When simulation is turned on, no IO is performed by the driver. This is extremely helpful when doing test system development since drivers may be instantiated and called without the instruments being present. However, since the driver typically has no knowledge about the DUT it will generally just return non-sense results.
  
- IVI Core drivers also support instrument error checking. This is a simple mode that automatically checks the connected instrument for errors after each driver function is called (where the test is meaningful).

Both of these capabilities are controlled using the *Common API*

**Direct IO** &mdash; All drivers that are built on top message based interfaces, like SCPI, are required to provide a mechanism for users to send and receive strings to/from the instrument. Although not commonly used, these capabilities provide a way for users to reach down into the instrument control to access special instrument features or use the instrument in ways not anticipated by the driver.

**General Hygiene** &mdash; There are numerous other requirements throughout the IVI Core specification that are essential for a well-behaved driver. Some of these are: multi-thread safety, naming protocols, documentation of supported instrument models, identity APIs, et cetera.
