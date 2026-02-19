---
layout: posts
title: May 2025 - New .NET Driver Shared Components
author: IVI Admin
excerpt_separator: "<!--excerpt-->"
---

The IVI Foundation has just released new shared components for developing instrument drivers consistent with the recently announced new IVI Driver Standards.  The components facilitate implementing Microsoft .NET IVI Conformant instrument drivers and support both .NET 6+ and .NET Framework.  The new shared components are:

- The IVI Driver Shared Components (DSC) for new IVI Core Drivers
- The IVI Driver Configurable Settings Shared Components (CSSC) for drivers that are based on IVI Generation 2014

[The new IVI Standards](https://www.ivifoundation.org/2025/02/13/NewDriverSpecs.html) align the IVI driver standards with common customer expectations around driver capability, while retaining the IVI Requirements for:

- Testing - to ensure high quality drivers
- Documentation - to ensure that driver users have access to documentation necessary to successfully use the driver
- Source code - to enable customers to update and enhance drivers on their own

<!--excerpt-->

## The IVI DSC Shared Components

The IVI DSC shared component contains a simple interface that is implemented by all IVI .NET Core drivers that has methods for:

- Driver initialization and reset
- Instrument error check
- Driver vendor
- Driver version
- Instrument Model Connected, and supported instrument models
- Driver simulation control

## The IVI CSSC Shared Components

The IVI CSSC shared components are similar to the existing shared components, but also support .NET 6+ drivers.  As such, they support the instrument class definitions and various IVI utility functions.  This includes the ability to draw instrument and application configuration from a system-wide IVI configuration store.

## More Information

To see the new IVI Core specifications see:

- [InstrumentDriverSpecs/IviDriverCore/1.0/Spec/IviDriverCore.md](https://github.com/IviFoundation/IviDrivers/blob/main/IviDriverCore/1.0/Spec/IviDriverCore.md)
- [InstrumentDriverSpecs/IviDriverNet/1.0/Spec/IviDriverNet.md](https://github.com/IviFoundation/IviDrivers/blob/main/IviDriverNet/1.0/Spec/IviDriverNet.md)

For details on the IVI CSSC and how driver developers and users can utilize them, see [Configurable Settings Shared Components](https://github.com/IviFoundation/IviDrivers/blob/main/Documentation/IviDotNetDriversWithCSSharedComponents.md)

All IVI specifications are also available on the [IVI website](https://www.ivifoundation.org).

Additional information on IVI Driver Generation, see [IVI Generation 2026](https://www.ivifoundation.org/specifications/default.html#generation-2026-driver-specifications).
