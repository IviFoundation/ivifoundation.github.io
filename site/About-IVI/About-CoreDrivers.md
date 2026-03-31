---
layout: default
parent: Standards
title: Core Drivers
nav_order:  10
---

# IVI Core Drivers

<br><br>

<div class="svg-container" style="display: block; clear: both;" >
 <img src="{{ '../assets/images/Ivi-Core-Drivers.svg' | relative_url }}" alt="My Graphic" style="max-width: 90%; height: auto;">
</div>

<br> 

Starting with IVI Generation 2026, the IVI Foundation determined that the industry
needed a new generation of driver standards that are dramatically easier to use,
develop, and extend than existing drivers.

As part of this simplification effort the new driver standards needed to deliver
on what is generally expected by users of instrument drivers, without any
additional burden of a system-level architecture that complicates deployment and
use of the drivers.

In addition, the IVI Foundation wanted to create a simpler family of driver specifications. The specifications need to be of a length and complexity that they are easily approachable by both driver developers and driver users.

The IVI Foundation approached this creating a IVI Core specification.  This specification has requirements that must be satisfied by *all* IVI Core drivers. It includes requirements that are independent of the driver implementation language, but essential for customers to have a good experience with drivers. *IVI Core* drivers include key features critical to customers such as:

- Driver source code that does not require special tools and enables customers to easily extend the drivers
- Support for all of the instrument capabilities
- Quality requirements in the form of minimal testing that must be completed on the driver
- A driver deployment model that fits with modern software environments and does not require an install
- A *basic* set of common APIs to manage the driver and underlying instrument
- Extensibility to non-Windows platforms such as Linux and MacOS

Based on this IVI-Core specification, IVI has rapidly created language-specific extensions for
Python, C, and .NET.

Because of this focus on simple usable drivers, the driver specifications are
dramatically shorter than earlier IVI specifications.  Making the specifications
themselves easily accessible to both driver users and implementors.  The IVI
Core standards, including the architecture and language extensions are all 20
pages or less.

## GitHub

With the development of these specification, the IVI Foundation has begun a
transition to managing the specifications on [GitHub](https://github.com/IviFoundation/IviDrivers/tree/main).  We believe this will
help make the standards more accessible to driver users that want to propose
additions, and also make the standards themselves more flexible. Driver users
and developers are encouraged to participate by creating discussions on GitHub.
