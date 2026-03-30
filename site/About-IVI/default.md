---
layout: default
nav_order:  1
title: Standards
has_children: true
has_toc: false
---

# IVI Standards

<br><br>

<div class="svg-container" style="display: block; clear: both;" >
  <img src="{{ '../assets/images/Ivi-domain.svg' | relative_url }}" alt="My Graphic" style="max-width: 90%; height: auto;">
</div>

<br> 

The IVI Foundation produces standards that relate to instrument connectivity and provide interoperability between different instrument vendors products, and simpler system construction for customers.  The standards primarily fall into 3 categories: standards related to software that runs on controllers, standards related to the communication between the controller and instruments, and the *SCPI* standard that describes the control of the instruments.

The IVI Foundation is primarily made up of instrument manufacturers, however instrument users are always welcome to participate in IVI Foundation meetings and contribute to our standards.

### Controller Software Specifications

Controller software specifications specify software that is delivered to test system developers to control instruments. This includes 3 generations of instrument driver specifications and the VISA IO Library.  The instrument driver specifications are:

**VXI*plug&play*** &mdash; These standards, developed in 19XX provide a basic specification of instrument drivers in several contemporaneos programming environments. They are the basis for some subsequent standards such as the IVI Configurable Settings driver standards.

**IVI Configurable Settings Drivers** &mdash; These standards build on the VXI*plug&play* standards and provide a mechanism designed to provide instrument interchangeability. They also extend the VXI*plug&play* standards for Microsoft .NET Framework and Microsoft COM.

**IVI Core Drivers** &mdash; IVI Core drivers provide XXXXX

### Protocol Specifications

The IVI Foundation also has numerous [protocol standards](http://127.0.0.1:4000/About-IVI/ProtocolStandards.html) related to the communication between the instruments and the test system. These enable instruments from different manufacturers to expose compatible interfaces so that test systems can be created with common software to control instruments from many vendors and using many interfaces.

### The SCPI Standard

Finally, the IVI Foundation provides the **SCPI Standard**. For instruments that are programmed by sending and receiving strings between the controller and the instrument, the **SCPI Standard** establishes that language that is used configure and control the instruments, initiate operations, and return results.
