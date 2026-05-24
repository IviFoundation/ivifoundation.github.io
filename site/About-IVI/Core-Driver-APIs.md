---
layout: default
parent: Core Drivers
title: Core Driver APIs
nav_order:  30
---

# IVI Driver Core APIs

Whereas previous IVI Driver drivers (the IVI “Configurable Settings” drivers) had numerous APIs to support features of the T&M tools from the early 2000’s, the IVI Core required APIs are a short list of things clearly necessary for any driver:

**Initialization** &mdash; The API specifies common parameters used when instantiating (or initializing) a driver.

**Driver Identity Information** &mdash; Common APIs are specified that return the driver author and driver version.

**Instrument Model Information** &mdash; These APIs indicate details of the instrument currently connected and the models of instrument supported by the driver.

**Instrument Error Query** &mdash; This is a method that checks the instrument for any errors detected in the instrument. These are typically measurement errors unrelated to errors that may be detected in the driver. For instance, an instrument error may indicate that a phase-locked-loop in unlocked.

**Instrument Error Checking** &mdash; IVI requires that drivers provide a mechanism whereby the instrument is checked for errors after most driver calls.  Although very helpful during development, the frequent error queries have severe performance implications. Therefore error checking should only be enabled during system debug. One of the IVI common functions enables or disables error checking so that it can be enabled only in sections of code currently being validated.

**Instrument Simulation** &mdash; When turned on, this feature prevents the driver from attempting to communicate with the instrument. This is  helpful during application development because the driver can be instantiated and unrelated parts of the test system can be developed and validated. Although IVI drivers are not required to simulate an actual device under test, the IVI simulation mode is very helpful during development. Simulation may be enabled when the driver is instantiated. The common API also specifies a property to query the simulation state and turn on simulation after the driver is instantiated.

**Instrument Reset** &mdash; An API is specified that resets the instrument, and any associated driver state variables that need to be reset.

**Instrument IO** &mdash; Instrument drivers that are built on top of another documented interface (such as SCPI) are required to provide a basic way for the driver user to send and receive strings to/from the instrument.  This can be a valuable tool to access special instrument functions in a way that was not anticipated by the driver author.

With these requirements, any driver that complies with the IVI Driver Core should deliver on basic quality requirements and also provide a consistent basic API for doing basic driver operations.

The IVI.NET and IVI-Python specifications also include formal interface definitions for these common functions.  This allows object-oriented driver clients to manage the drivers abstractly.
