---
layout: default
parent: Core Drivers
title: Core and CS Drivers
nav_order:  70
---

# Understanding Differences in IVI Core and CS Drivers

IVI Core drivers are simpler than IVI CS drivers, and do not have many of the extra provisions for instrument interchangeability that CS Drivers have. Some benefits of these IVI Core specifications are that it is easier to:

*Update and Extend the Standards* &mdash; the IVI Core standards are all 20 pages or less. This makes the standards approachable by both driver providers and users. This also enables the IVI Foundation to quickly develop standards for new languages. Python, .NET, and ANSI-C are already complete.

*Update and Extend the Driver Source Code* &mdash; since IVI Core drivers do not implement some features required by CS drivers, the source code is simpler and more approachable by users that need to modify or update a driver they get from their vendor.

*Develop Drivers* &mdash; The Core simplifications ease the burden on vendors of instruments that provide IVI drivers with their equipment.

Two key features that are omitted from Core IVI drivers are:

- **Abstract instantiation** that is the ability to instantiate a driver based on the configuration. This instantiation information is kept in a system-wide database provided by IVI called the IVI Configuration Store

- **Configuring initial settings** that is the ability to automatically push configuration to a driver as part of instantiation. These initial settings are also kept in the Configuration Store.

These two features in Generation 2014 IVI CS Drivers facilitate instrument interchangeability. Abstract Instantiation moves the instantiation of the driver outside of the application so that a new instrument driver can be injected into an application without making any changes to the application.

Configurable initial settings facilitate instrument interchangeability by permitting a new instrument to receive initial configuration as part of driver instantiation. This allows a new instrument to better mimic the instrument it is replacing.

Although these features detract from the ability of the Core IVI.NET drivers to replace existing instruments in a system, many test system designers prefer to directly control the instruments and drivers that a system is deployed with. Also, some designers prefer that the instrument-specific code for instantiation and initial settings be kept with the system software instead of being embedded in a system-wide database like the IVI Configuration Store.

Eliminating these features directly simplifies drivers and removes the need to install the drivers individually or install a system-wide database. Removing the need for installation allows the drivers to be managed with package managers like NuGet. This simplifies both system development and deployment.

IVI Core drivers are permitted to use the IVI Configuration Store and implement these features. IVI has published a document on [using Core IVI.NET drivers with the IVI Configuration Store](https://github.com/IviFoundation/IviDrivers/blob/main/Documentation/IviDotNetDriversWithCSSharedComponents.md). This describes more about how to abstractly instantiate drivers and get initial settings in Core IVI.NET drivers designed to work with these tools.

## IVI Classes

At this time there are no instrument class definitions for Core IVI.NET drivers. The IVI Foundation has considered adding them since creating them would only require very minor adjustments to the IVI Generation 2014 source code and delivering them with NuGet.

If IVI Core classes are provided, applications will need to instantiate the drivers directly (presumably based on discovery of available instruments) and provide the initial settings. Or, applications could create their own tools for abstract instantiation and configurable settings.

## Other Features

IVI Generation 2014 includes additional features that complicate the API and development of drivers that were omitted from IVI Core. Key features are:

*Virtual names for channels and other Repeated Capabilities* &mdash; This *required* feature allows customers to override the names used in the driver for replicated elements such as channels. These *virtual names* are specified by the customer and kepts in the IVI Configuration Store. Although IVI did limit this feature so that the “virtual names” could not remap an existing physical name.

*Interchangeability checking* &mdash;  Drivers that implemented this optional feature reported an error when the driver initiated a measurement or generated an output when any instrument settings were in a default state.  Although nominally this alerted developers to the instrument choosing default values, it also undermined the ability of instruments to provide a simple programming model that automatically chose good default values for obscure settings.

*Coercion Recording* &mdash; Drivers that implemented this optional feature had to keep track of when customer settings were adjusted from the specified value to one that is implemented by the instrument.  Again, this feature made it difficult for drivers and instruments to “choose the best value” automatically.

As noted above, many of these features were optional for drivers, so users of IVI Core drivers may not notice a difference with their elimination from the standard.
