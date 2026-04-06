---
layout: default
parent: Core Drivers
title: Core Driver Simplifications
nav_order:  70
---

# IVI Core Simplifications from IVI CS Drivers

To achieve simple and usable source code Core IVI.NET drivers omit two key features found in IVI Generation 2014 drivers:

- **Abstract instantiation** that is the ability to instantiate a driver based on the configuration in the IVI Configuration Store

- **Configuring initial settings** that is the ability to automatically push configuration to a driver as part of instantiation

These two features are included in IVI Generation 2014 to facilitate instrument interchangeability. By moving the instantiation of the driver outside of the application a new instrument driver can be injected into the application without touching the application at all.

The Configurable initial settings facilitate instrument interchangeability by permitting a new instrument to receive initial configuration as part of driver instantiation instantiated so it can better mimic the instrument it is replacing.

Although these features detract from the ability of the Core IVI.NET drivers to replace existing instruments in a system, many test system designers prefer to directly control the instruments and drivers that a system is deployed with. Also, the instrument-specific code to change initial settings may be best kept with the system instead of being embedded in a system-wide database like the IVI Configuration Store.

Eliminating these features directly simplifies drivers and removes the need to install them individually. Removing the need for installation allows the drivers to be managed with NuGet. This simplifies both system development and deployment.

IVI has published a document on [using Core IVI.NET drivers with the IVI Configuration Store](https://github.com/IviFoundation/IviDrivers/blob/main/Documentation/IviDotNetDriversWithCSSharedComponents.md). This describes more about how to instantiate drivers and get initial settings in Core IVI.NET drivers.

## IVI Classes

At this time there are no instrument class definitions for Core IVI.NET drivers. The IVI Foundation has considered adding them since creating them would only require very minor adjustments to the IVI Generation 2014 source code and delivering them with NuGet.

If they were provided, since IVI has dropped the abstract instantiation and configurable initial settings applications would need to instantiate teh drivers directly (presumably based on discover of available instruments) and provide the initial settings. Or, applications could create their own tools for abstract instantiation and configurable settings.

## Other Features

IVI Generation 2014 included several other features that complicated the API and development of drivers that were omitted from IVI Core. Key features are:

- Interchangeability checking.  Drivers that implemented this optional feature reported an error when the driver initiated a measurement or generated an output when any instrument settings were in a default state.  Although nominally this alerted developers to the instrument choosing default values, it also undermined the ability of instruments to provide a simple programming model that chose good default values for obscure settings.
- Coercion Recording. Drivers that implemented this optional feature had to keep track of when customer settings were adjusted to a value fully implemented by the instrument.  Again, this feature made it difficult for drivers and instruments to “choose the best value” for the configuration.
- Virtual names for channels and other Repeated Capabilities. This _required_ feature allowed customers to override the names used in the driver for duplicated elements such as channels with names specified by the customer in a system-wide IVI database (that is, the IVI Configuration Store). Although IVI did limit this feature so that the “virtual names” could not remap an existing physical name.As noted above, many of these features were optional for drivers, so users of IVI Core drivers may not notice a difference with their elimination from the standard.

