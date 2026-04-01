---
layout: default
nav_order: 1
title: Standards
has_children: true
has_toc: false
---

# IVI Specifications

<br><br>

<div class="svg-container" style="display: block; clear: both;" >
 <img src="{{ '../assets/images/Ivi-domain.svg' | relative_url }}" alt="My Graphic" style="max-width: 90%; height: auto;">
</div>

<br> 

The IVI Foundation produces instrument connectivity specifications that simplify building systems and provide interoperability between different instrument vendors products. By specifying the software in the controller (like instrument drivers) and the protocols used to control instruments, the IVI specifications ensure that instruments from various vendors work well together.

The specifications primarily fall into 3 categories: specifications related to software that runs on controllers, specifications related to the communication between the controller and instruments, and the *SCPI* specification that describes the control of the instruments.

The IVI Foundation is primarily made up of instrument manufacturers, however instrument users are always welcome to participate in IVI Foundation meetings, contribute to the specifications or join the foundation.

## Controller Software Specifications

Controller software specifications describe software that that runs on test system to control instruments. This includes 3 generations of instrument driver specifications and the VISA IO Library. The instrument driver specifications are:

**VISA IO Library** &mdash; [VISA](/specifications/default.html#visa-specifications) specifies the library that runs on the test system controller to provide low-level IO to the instruments. This includes exchanging string messages with instruments that are controlled with a high-level language like SCPI. VISA also provides APIs for reading and writing registers on register-based instruments like PXI and VXI. Having a standard library simplifies test system software by:

- VISA allows system software (such as applications and instrument drivers) to be independent of the vendor of the IO Hardware and the IO Software.  For instance, a system can use one vendors GPIB hardware along with a different vendors implementation of Secure HiSLIP.

- VISA allows system software to be independent of the physical interface.  That is, VISA provides a single API to control instruments regardless off if they are connected via LAN, USB, PCI, PXI Express, RS-232, GPIB or other interfaces.

**VXI*plug&play* Drivers** &mdash; [VXI*plug&play*](/specifications/default.html#:~:text=PDF-,Other%20VXIplug%26play%20Specifications,-%3A), initially completed in 1994, provides a basic specification of instrument drivers in several contemporaneous programming environments. These standards have been maintained and are the basis for some of the newer IVI C-language driver specifications.

**IVI Configurable Settings Drivers** &mdash; [IVI Configurable Settings](/About-IVI/About-CSDrivers.html) drivers build on the VXI*plug&play* specifications. They extended the previous specifications with support for Microsoft .NET and Microsoft COM. IVI CS (Configurable Settings) Drivers provide mechanisms for instrument interchangeability through three features:

- Instrument class definitions
- Abstract instantiation
- Configurable initial settings

These features work together to provide a sophisticated mechanism for instrument interchangeability.

**IVI Core Drivers** &mdash; [IVI Core drivers](/About-IVI/About-CoreDrivers.html) are simplified instrument drivers. They are similar to the VXI*plug&play* drivers in complexity, but also have robust requirements regarding quality and documentation.  The IVI-Core specification calls out common requirements related to driver completeness, quality, and documentation and additional specifications contain the requirements to target the specifications to specific languages.

By simplifying the standards, IVI Core drivers:

- provide source code that is easily extended by driver users
- do not require installing additional infrastructure
- work well with package management systems such as NuGet and PyPI
- can be developed and modified without complex tools

IVI Core drivers can be extended to language environments quite easily. There are currently IVI Core specifications for Python, .NET, and ANSI-C.

## Protocol Specifications

The IVI Foundation also has several [protocol specifications](/About-IVI/ProtocolStandards.html). The protocol specifications define the communication between the instruments and the test system. These enable instruments from different manufacturers to expose compatible interfaces so that test systems can be created with common software to control instruments from many vendors and using many interfaces.

## The SCPI Specification

Finally, the IVI Foundation provides the [**SCPI Specification**](/downloads/SCPI/scpi-99.pdf). For instruments that are programmed by sending and receiving strings the **SCPI Specification** establishes the language that controls the instruments, initiates operations, and returns results.
