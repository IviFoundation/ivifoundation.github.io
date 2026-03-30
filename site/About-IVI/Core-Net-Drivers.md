---
layout: default
parent: Core Drivers
title: .NET
nav_order:  50
---

# IVI Core .NET Drivers

The IVI.NET Standard is a successor to previous IVI.NET standards from the IVI Foundation.  The previous versions of the standard were the subject of the detailed specifications mentioned above.  With IVI Driver Core, vendors and users can use much simpler drivers.  However, these drivers work fine alongside the earlier IVI drivers.
The new standards have less extensive requirements to facilitate instrument interchangeability.  The new standards retain the features critical for most scenarios.  IVI is continuing to provide Shared Components that driver developers and users can use that want to use the earlier IVI Driver architecture to interchange instruments.

The Core IVI.NET drivers are much simpler to use, develop, and modify that IVI Generation 2014 drivers. They align with common customer expectations about what is in an instrument driver.

The [Core IVI.NET Specification](https://github.com/IviFoundation/InstrumentDriverSpecs/blob/main/IviDriverNet/1.0/Spec/IviDriverNet.md) is easily approachable by driver developers. It is about 10-pages long, and along with the [20-page IVI Core](https://github.com/IviFoundation/InstrumentDriverSpecs/blob/main/IviDriverCore/1.0/Spec/IviDriverCore.md) specification, fully specifies the requirements on a Core IVI.NET Driver.

Some of the key benefits of Core IVI.NET drivers are:

> **Simpler** &mdash; The drivers are not required to support the IVI Generation 2014 infrastructure for abstract instantiation and configuring initial settings. This means that Core IVI.NET Drivers do not have complex source code nor require special tools to be developed and updated. This is especially important for driver users that need to be able to open up driver source code and make enhancements and updates to it (and maybe even correct an occasional defect).
>
> **NuGet Delivery** &mdash; Core IVI.NET Drivers are delivered with NuGet. This means that each application on a system manages the drivers that is uses. This simplifies application deployment since the NuGet infrastructure takes care of dependency resolution, version management, and controls project bloat. The resulting applications are easier to develop, maintain, and deploy.
>
> **Migration Path for Generation 2014 IVI.NET Drivers** &mdash; Core IVI.NET drivers work fine alongside Generation 2014 IVI.NET Drivers. Although Core IVI.NET has much fewer rules and restrications, there is no reason they cannot be used with existing drivers.

