---
layout: default
parent: Core Drivers
title: Core Driver Simplifications
nav_order:  70
---

# IVI Core Simplifications From IVI CS Drivers

To achieve the small and simple source code Core IVI.NET drivers omit two key features found in IVI Generation 2014 drivers:

- Abstract instantiation, that is the ability to instantiate a driver based on the configuration in the IVI Configuration Store

- Configuring initial settings, that is the ability to push configuration to a driver when it is instantiated

These two features are included in IVI Generation 2014 to facilitate instrument interchangeability. By moving the instantiation of the driver outside of the application a new instrument driver can be injected into the application without touching the appication at all.

The Configurable initial settings also facilitate instrument interchangeability by permitting a new instrument to receice certain configurations when the driver is instantiated so it can better mimic the instrument it is replacing.

Although these features detract from the ability of the Core IVI.NET drivers to replace existing instruments in a system, many test system designer prefer to directly control the instruments and drivers that a system is deployed with. Also, the instrument-specific code to change initial settings may be best kept with the system instead of being embedded in a system-wide database like the IVI Configuration Store.

IVI has published a document on [using Core IVI.NET drivers with the IVI Configuration Store](https://github.com/IviFoundation/IviDrivers/blob/main/Documentation/IviDotNetDriversWithCSSharedComponents.md). This describes more about how to instantiate drivers and get initial settings in Core IVI.NET drivers.

## IVI Classes

At this time there are no instrument class definitions for Core IVI.NET drivers. The IVI Foundation has considered adding them since creating them would only require very minor adjustments to the IVI Generation 2014 source code and delivering them with NuGet.

If they were provided, since IVI has dropped the abstract instantiation and configurable initial settings applications would need to instantiate teh drivers directly (presumably based on discover of available instruments) and provide the initial settings. Or, applications could create their own tools for abstract instantiation and configurable settings.
