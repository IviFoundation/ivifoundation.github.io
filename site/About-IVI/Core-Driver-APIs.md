---
layout: default
parent: Core Drivers
title: Core Driver APIs
nav_order:  30
---

# IVI Driver Core APIs

Whereas previous IVI Driver drivers (the IVI “Configurable Settings” drivers) had numerous APIs to support the peculiar features of the T&M tools from the early 2000’s, the IVI Core required APIs are a short list of things clearly necessary for any driver:

**Initialization** &mdash; common API forms to instantiate drive (or initialize in C)

**Driver Identity Information** &mdash; Common APIs to determine the driver author and driver version

**Instrument Model Information** &mdash; The instrument currently connected and the models of instrument supported by the driver

**Instrument Error Query** &mdash; a method that checks the instrument for any errors it has detected.

**Instrument Error Checking** &mdash; IVI requires that drivers provide a mechanism whereby the instrument is checked 
for errors after normal driver calls.  This is very helpful during development, but has severe performance implications so it needs to be turned off when the application is deployed.  One of the IVI Common functions turns this feature on and off.

**Instrument Simulation** &mdash; Although there is no actual simulation, it is very helpful during development for a driver to be instantiated and used when the physical instrument is not available.  IVI requires that instruments support this.  Although normally this choice is made when the driver is instantiated, IVI also specifies an API to turn on simulation when the driver is in use.

**Instrument Reset** &mdash; An API is required to reset the instrument, and any associated driver state variables that need to be instantiated.

**Instrument IO** &mdash; Instrument drivers that are built on top of another documented interface (such as SCPI) are required to provide a basic way for the driver user to send and receive string to the instrument.  This can be a valuable tool if some special instrument function needs to be used in a way that was not anticipated by the driver author.

With these requirements, any driver that complies with the IVI Driver Core should deliver on basic quality requirements and also provide a consistent basic API for doing basic driver functions.
The IVI.NET and IVI-Python specifications also include interface definitions for these common functions.  This allows object oriented driver clients to manage the drivers abstractly.

The IVI Core drivers provide the essential features of drivers, with no more complexity than is necessary.  This results in:
- Fast and efficient drivers
- Minimal complexity drivers, which means that customers that want to work with the driver source code can do so.
- Drivers attuned to the most modern languages, including Python and .NET 6,7,8 and beyond.
- A new C IVI driver that is based on ANSI-C, for use both in C programming environment and in environments that can call into compiled C libraries, such as Java and C++.

Although IVI 2014 guaranteed customers source code, in many cases the configurable settings drivers were so complex that the source code was impractical to update without access to the internal tool chains used by the driver developers.
