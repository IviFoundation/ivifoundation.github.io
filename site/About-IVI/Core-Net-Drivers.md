---
layout: default
parent: Core Drivers
title: IVI.NET
nav_order:  50
---

# IVI.NET Drivers

The [Core IVI.NET Standard](https://github.com/IviFoundation/IviDrivers/blob/main/IviDriverNet/1.0/Spec/IviDriverNet.md) is a successor to previous IVI.NET standards from the IVI Foundation. The previous versions of the standard were the subject of the Generation 2014 specifications and are limited to .NET Framework. The Core IVI.NET standard includes both .NET Framework and .NET 6+ (also known as .NET Core) drivers.

The [Core IVI.NET Specification](https://github.com/IviFoundation/InstrumentDriverSpecs/blob/main/IviDriverNet/1.0/Spec/IviDriverNet.md) is easily approachable by driver developers. It is about 10-pages long, and along with the [20-page IVI Core](https://github.com/IviFoundation/InstrumentDriverSpecs/blob/main/IviDriverCore/1.0/Spec/IviDriverCore.md) specification, fully specifies the requirements on a Core IVI.NET Driver.

Some of the key benefits of Core IVI.NET drivers are:

> **Simpler** &mdash; The drivers are not required to support the IVI Generation 2014 infrastructure for abstract instantiation and configuring initial settings. This means that Core IVI.NET Drivers do not have complex source code nor require special tools to be developed and updated. This is especially important for driver users that need to be able to open up driver source code and make enhancements and updates to it (and maybe even correct an occasional defect).
>
> **NuGet Delivery** &mdash; Core IVI.NET Drivers are delivered with NuGet. This means that each application on a system independently manages the drivers that it uses. This simplifies both development, deployment and maintenance since the NuGet infrastructure takes care of dependency resolution, updates, and version management. The IVI Configurable Settings drivers require an installer and cannot be managed with NuGet.
>
> **Migration Path for Generation 2014 IVI.NET Drivers** &mdash; Core IVI.NET drivers work fine alongside Generation 2014 IVI.NET Drivers. Although Core IVI.NET has much fewer rules and restrictions, they work well with existing IVI.NET drivers.

## IVI.NET Generation 2014 and Generation 2026

IVI.NET Generation 2014 drivers have several features omitted from IVI Core. Generation 2014 IVI.NET drivers are called Configuration Settings IVI.NET drivers and the generation 2026 drivers are called Core IVI.NET Drivers.

The IVI.NET Configurable Settings 2014 drivers do comply with Generation 2026 IVI.NET. However:

- IVI Generation 2014 is only defined for .NET Framework, that is versions of .NET before .NET 6.0
- IVI Generation 2014 drivers implement the more complex Generation 2014 interface instead of the simplified Generation 2026 interface

The Generation 2014 drivers also require that the IVI Configurable Settings Shared Components be installed, and that individual drivers register with that infrastructure when they are installed. Therefore Generation 2014 drivers have system wide behavior during installation and cannot be managed with NuGet. The installation is necessary because Generation 2014 uses a system-wide database and other tools that must be installed globally so that when drivers are instantiated they can load configuration information from the system database. This initial configuration is part of the IVI Generation 2014 instrument interchangeability architecture.

[IVI Core Simplifications](/About-IVI/Core-Simplifications.html) has more information on the simplifications made for IVI.NET Generation 2026 drivers relative to IVI Generation 2014.

Since Core IVI.NET drivers do not have these IVI Generation 2014 requirements, the Core IVI.NET drivers are much simpler to use, develop, and modify. So they align with common customer expectations about what is in an instrument driver. Those being: the driver is the basic library needed to control the instrument and it has been adequately tested, documented, and is supported.
