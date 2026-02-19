---
layout: posts
title: IVI Completes the IVI ANSI-C Specification
author: IVI Admin
excerpt_separator: "<!--excerpt-->"
---

In June of 2025 the LXI Foundation proposed that the IVI Foundation
develop a new IVI language-specific specifications for ANSI-C, based on
the [IVI Driver Core Specification](https://github.com/IviFoundation/IviDrivers/blob/main/IviDriverCore/1.0/Spec/IviDriverCore.md).

After several months of collaboration between the IVI Foundation and the
LXI Consortium, IVI is pleased to announce the completion of the
[IVI ANSI-C Specification](https://github.com/IviFoundation/IviDrivers/blob/main/IviDriverAnsiC/1.0/Spec/IviDriverAnsi-C.md).

This new spec becomes part of the [IVI Generation 2026](https://www.ivifoundation.org/specifications/default.html#generation-2026-driver-specifications) set of specifications.

An IVI-Python specification created as part of this same effort is expected in February 2026.

<!--excerpt-->

The IVI-ANSI-C specification is defined for use in conjunction with the [IVI Driver Core Specification](https://github.com/IviFoundation/IviDrivers/blob/main/IviDriverCore/1.0/Spec/IviDriverCore.md) which can bear on various driver languages, and language-specific
standards, such as the existing [IVI Driver .NET Specification](https://github.com/IviFoundation/IviDrivers/blob/main/IviDriverNet/1.0/Spec/IviDriverNet.md)
that has specific requirements for .NET IVI drivers. It broadens the IVI
support to both newer .NET 6+ (.NET Core) drivers in addition to retaining
.NET Framework.

The IVI-ANSI-C standards has less extensive requirements than the
previous IVI-C standard.  The new standards retain the features critical
for most scenarios. However, it does not have the broad requirements
used to facilitate instrument interchangeability.

The 
[IVI ANSI-C Specification](https://github.com/IviFoundation/IviDrivers/blob/main/IviDriverAnsiC/1.0/Spec/IviDriverAnsi-C.md)
contains requirements that are specific to an ANSI-C driver, while the 
[IVI Driver Core Specification](https://github.com/IviFoundation/IviDrivers/blob/main/IviDriverCore/1.0/Spec/IviDriverCore.md)
describes requirements common to all IVI Core Drivers, regardless of
implementation language.

All of the IVI Generation 2026 standards are being developed and managed
under GitHub. IVI is doing this to makes the standards more accessible
to driver users that want to propose additions, and also make the
standards themselves more flexible. Driver users and developers are
encouraged to participate by creating discussions in the
[IVI Drivers repository](https://github.com/IviFoundation/IviDrivers) on GitHub.
