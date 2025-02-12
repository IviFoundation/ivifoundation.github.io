---
layout: posts
title: New .NET Driver Specifications (for .NET 6+)
author: IVI Admin
excerpt_separator: "<!--excerpt-->"
---

In January the IVI Foundation completed work on a new generation of lighter-weight driver specifications.  These new specifications align the IVI driver standards with common customer expectations around driver capability, while retaining the IVI Requirements for:

- Testing - to ensure good quality drivers
- Documentation - ensure that driver users have access to documentation necessary to successfully use the driver
- Source code - enabling customers to update and enhance drivers on their own

<!--excerpt-->

These new standards take the form of a [IVI Driver Core Specification](https://github.com/IviFoundation/IviDrivers/blob/main/IviDriverCore/1.0/Spec/IviDriverCore.md) that can bear on a number of driver languages, and language-specific standards, such as the [IVI Driver .NET Specification](https://github.com/IviFoundation/IviDrivers/blob/main/IviDriverNet/1.0/Spec/IviDriverNet.md) that has specific requirements for .NET IVI drivers and broadens the IVI support to both newer .NET 6+ (.NET Core) drivers in addition to .NET Framework.

The new standards do not have detailed requirements that facilitate instrument interchangeability, but retain the features critical for most users.  IVI is continuing to provide Shared Components that drivers and users can use that want to use the earlier IVI Driver architecture to interchange instruments.

The *IVI Driver Core Specification* describes requirements common to all IVI Core Drivers, regardless of implementation langage. IVI provides additional specifications that detail the requirements of drivers for specific programming languages.

With the development of these specification, the IVI Foundation has begun a transition to managing the specifications under github.  We believe this will help make the standards more accessibly to driver users that want to propose additions, and also make the standards themselves more flexible.
