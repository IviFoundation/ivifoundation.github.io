---
layout: default
parent: Standards
title: Core Drivers
nav_order:  10
---

# IVI Core Drivers

<br>

<div class="svg-container" style="display: block; clear: both;" >
 <img src="{{ '../assets/images/Ivi-Core-Drivers.svg' | relative_url }}" alt="My Graphic" style="max-width: 90%; height: auto;">
</div>

<br> 

Starting with IVI Generation 2026, the IVI Foundation determined that the industry needed a new generation of driver standards that:

- provide the simplicity of VXI*plug&play* drivers
- are targeted to modern languages such as Python and IVI.NET
- have the quality and documentation requirements of CS Drivers
- do not require installation

The resulting IVI Core drivers are dramatically easier to use, develop, and extend than CS drivers but do not provide interchangeability.

As part of this simplification effort the new driver standards deliver what is generally expected by users of instrument drivers. These drivers do not impose a system-level architecture that complicates deployment and use of the drivers.

The IVI Foundation approached this creating an IVI Core specification and several language-specific specifications. The IVI Core specification has requirements that must be satisfied by *all* IVI Core drivers. It includes requirements that are independent of the driver implementation language, but essential for customers to have a good experience with drivers. *IVI Core* specifies key features critical to customers such as:

- source code that does not require special tools and is easily extensible by customers
- complete drivers that support for all of the instrument capabilities
- quality requirements in the form of minimal testing that must be completed on the driver
- a deployment model that fits with modern software environments and does not require an install
- a*basic* set of common APIs to manage the driver and underlying instrument
- full support for non-Windows platforms such as Linux and MacOS

The IVI Foundation has also created language-specific standards that contain the requirements that are specific to a particular driver language. IVI currently has language-specific extensions for
Python, C, and .NET.

Because of this focus on simple usable drivers, the driver specifications are dramatically shorter than earlier IVI specifications. Making the specifications themselves easily accessible to both driver users and implementors. The IVI Core standards, including the IVI-Core and language-extensions are all 20 pages or less.

## GitHub

With the development of these specification, the IVI Foundation has begun a transition to managing the specifications on [GitHub](https://github.com/IviFoundation/IviDrivers/tree/main).  We believe this will help make the standards more accessible to driver users that want to propose additions or ask questions. Driver users and developers are encouraged to participate by creating discussions on GitHub.
