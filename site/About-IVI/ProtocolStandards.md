---
layout: default
parent: Standards
title: Protocol Standards
nav_order:  25
---

# [Protocol Standards](/specifications/default.html#ivi-protocol-specifications)

<br><br>

<div class="svg-container" style="display: block; clear: both;" >
 <img src="{{ '../assets/images/Ivi-domain-protocols.svg' | relative_url }}" alt="My Graphic" style="max-width: 90%; height: auto;">
</div>

<br> 

The IVI [protocol specifications](/About-IVI/ProtocolStandards.html) define aspects of the communication between the instruments and the test system. These standards are essential for  instruments from different manufacturers to expose interfaces that can be accessed by low-level system software. This enables system software to control instruments regardless of the instrument vendor or the communication interface.

Most of these specifications are implemented both in the controller (typically in the VISA library) and in the instruments that are controlled. So, they intrinsically impact both instrument vendors and system software providers.  It is unusual for instrument users to directly consume these documents because they represent a contract between the instruments and the low-level libraries in the controller.

**[HiSLIP](/downloads/Protocol%20Specifications/IVI-6.1_HiSLIP-2.0-2020-04-23.pdf)** &mdash; [IVI 6.1, HiSLIP](http://127.0.0.1:4000/downloads/Protocol%20Specifications/IVI-6.1_HiSLIP-2.0-2020-04-23.pdf), defines a protocol that instruments use communicate over network connections that provides all of the capability needed for instrument control. In addition to the basic TCP/IP communication channel, HiSLIP provides mechanisms that:

- automatically synchronize transactions between the controller and the instruments
- provide a way to abort instrument operations irrespective of current processing
- delivers triggers to the instruments
- provides a way to control the remote and local state of the instruments

HiSLIP provides this capability over TCP connections by creating a secondary channel for out-of-band control. Using HiSLIP, network instruments provide the same interface capabilities as GPIB (also known as IEEE 488) but using a network interface.

**[IVI Requirements for USBTMC](/downloads/Architecture%20Specifications/Ivi-6%202_USBTMC_2018-11-01.pdf)** &mdash; The USB imlementor's forum has defined a protocol for USB that, much like HiSLIP, provides Test & Measurement capabilities over a USB interface. However, since USB kernel software on controllers is managed by the operating system, and only a single instance of it can be installed on most operating systems, it is necessary to standardize the interface to the USB driver so IO software from different vendors can interoperate. This standard specifies the behavior of these low-level drivers. The IVI Foundation also provides a low-level USB driver that complies with this standard and is shared by many vendors.

**[IVI VISA PXI Plug-in](/downloads/Architecture%20Specifications/IVI-6.3_VisaPxiPlugIn_2022-12-19.pdf)** &mdash; This document specifies the API to the kernel driver that supports a vendors PXI (or AXIe) device. By specifying this API, VISA libraries from different vendors can provide register operations to PXI modules from different vendors. Instrument drivers can then be build on top of the VISA libraries register interface to support individual PXI modules.

**[IVI SASL Mechanism Specification](/downloads/Protocol%20Specifications/IVI-6.5_SASLMechanismSpecification_2022-05-19.pdf)** &mdash; As noted above, IVI provides the HiSLIP standard that provides rich instrument control over the network. For that communication to be secure, the low-level library (typically VISA) has to negotiate the security mechanism and how to exchange credentials with the instrument. This specification calls out how to us *SASL* (RFC 4422 at the time of this writing) to do this. SASL is a standard mechanism for client and servers to negotiate secure protocols and credentials. This IVI standard provides interoperability between vendors by calling out required mechanisms and password requirements for Test and Measurement instruments and control software.
