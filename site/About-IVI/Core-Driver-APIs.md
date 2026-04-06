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

**Instrument Error Checking** &mdash; IVI requires that drivers provide a mechanism whereby the instrument is checked for errors after normal driver calls.  Although very helpful during development, the frequent error queries have severe performance implications. Therefore error checking should only be enabled during system debug. One of the IVI Common functions enables or disables error checking so that it can be enabled only in sections of code currently being validated.

**Instrument Simulation** &mdash; Although there is no actual simulation, it is very helpful during development for a driver to be instantiated and used when the physical instrument is not available.  IVI requires that instruments support this.  Although normally this choice is made when the driver is instantiated, IVI also specifies an API to turn on simulation when the driver is in use.

**Instrument Reset** &mdash; An API is required to reset the instrument, and any associated driver state variables that need to be instantiated.

**Instrument IO** &mdash; Instrument drivers that are built on top of another documented interface (such as SCPI) are required to provide a basic way for the driver user to send and receive string to the instrument.  This can be a valuable tool if some special instrument function needs to be used in a way that was not anticipated by the driver author.

With these requirements, any driver that complies with the IVI Driver Core should deliver on basic quality requirements and also provide a consistent basic API for doing basic driver functions.

The IVI.NET and IVI-Python specifications also include interface definitions for these common functions.  This allows object-oriented driver clients to manage the drivers abstractly.
