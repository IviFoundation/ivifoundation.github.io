---
layout: default
parent: Core Drivers
title: Core Driver Specification
nav_order:  20
---

# The IVI Driver Core Specification

The IVI Driver Core specification establishes a baseline set of requirements for all IVI Core drivers regardless of the language the driver is targeted at.

The IVI Core specification requires the essential features of drivers, with no unnecessary complexity.  This results in:

- Fast and efficient drivers
- Minimal complexity drivers, which means that customers that want to work with the driver source code can do so.
- Drivers attuned to the most modern languages, including Python and .NET 6,7,8 and beyond.
- A new C IVI driver that is based on ANSI-C, for use both in C programming environment and in environments that can call into compiled C libraries, such as Java and C++.

Although IVI 2014 guaranteed customers source code, in many cases the configurable settings drivers were so complex that the source code was impractical to update without access to the internal tool chains used by the driver developers.

The primary requirements of IVI-Core drivers are:

**Full Instrument Capability** &mdash; Drivers that are layered on top of another interface such as SCPI are required to provide the driver user with full access to the instrument capabilities that are relevant for a test system. Capabilities that IVI identifies as not being relevant include functions included for instrument service and diagnostics, instrument display features not used in system applications, and functions that would override the driver's communication with the instrument, for example changing the format that measurement data is returned in.

**Documentation** &mdash; Although difficult to precisely specify, the IVI-Core calls out 4 different required documents:

- *Driver Introduction Document* IVI specifies the detailed contents of this document, including the actual minimum set of sections. The document must contain details on the driver's files, how to access the driver source code, and extensive sections on how to connect to the instrument, configure it, and control it. The document also calls out how to access the required example programs. In addition, it calls out the supported instrument commands and how to use the Direct IO API.

- *Help Documentation* This required document is the main driver documentation. It contains detailed information on all the methods and properties (also known as functions) in the driver and their use.

- *Compliance Documentation* This document contains the driver vendors formal (and binding) statements regarding their compliance to the standard, and to the testing that they have completed. It includes details of instrument models supported and the specific test configurations with which the driver has been validated.
  
- *README.md* The required README file includes release notes, as well as any necessary details for accessing the driver's source code and documentation. Since many IVI Core drivers are designed for package management systems, and therefore many copies may be on the target system, it is common for documentation and driver source code to be available in a different package than the driver itself. The README file documents how customers can access this additional ***required** information.

**Source Code** &mdash; - Drivers that are built on top of another documented interface (such as SCPI or a REST interface) are required to include the driver source code. This permits customers to inspect the source code, enhance, modify, or debug drivers.  This is essential for many customers that need to have complete control over their system software.

**Testing** &mdash; - Drivers must complete thorough testing. IVI requires that every driver API be validated with all reasonable parameters, touching the parameter limits as part of the validation.  Since there is not a practical way for the IVI Foundation to police the testing performed by vendors, IVI requires that vendors document for customers that the required testing has been completed in the *Compliance Document*.  This documentation gives customers the leverage they need to insist on defect fixes if they find problems with drivers.

**Common API** &mdash; IVI Core includes a very brief required API. [Core Driver APIs](/About-IVI/Core-Driver-APIs.html) has details.

**Key Capabilities** &mdash; IVI Core defines a couple of key capabilities that must be included in all drivers, those are:

- All IVI Core drivers must support simulation. Although not truly simulation, when turned on, no IO is performed by the driver. This is extremely helpful when doing test system development since drivers may be instantiated and called without the instruments being present. However, since the driver may have no knowledge about the DUT it will generally just generate non-sense results.
  
- IVI Core drivers also support instrument error checking. This is a simple tool that automatically checks the connected instrument for errors after each driver function is called (where the test is meaningful). 

Both of these capabilities are controlled using the *Common API*

**Direct IO** &mdash; All drivers that are built on top message based interfaces, like SCPI, are required to provide a mechanism for users to send and receive strings to the instrument. Although not commonly used, these capabilities provide a way for users to reach down into the instrument control to access special instrument features or use the instrument in ways not anticipated by the driver.

**General Hygiene** &mdash; There are numerous other requirements throughout the IVI Core specification that are essential for a well-behaved driver. Some of these are: multi-thread safety, naming protocols, documentation of supported instrument models, identity APIs, et cetera.