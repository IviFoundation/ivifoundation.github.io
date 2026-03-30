---
layout: default
parent: Standards
title: Protocol Standards
nav_order:  25
---

# [Protocol Standards](http://127.0.0.1:4000/specifications/default.html#ivi-protocol-specifications)

IVI has developed several protocol standards.  These standards enable interoperation between control software and instruments. These are essential to construct multi-vendor systems because they ensure that instruments from different vendors all work with the same test system software. It is unusal for instrument users to need to directly consume these documents because they represent a contract between the instruments and the common control software in controller.  Based on these standards, software tools are provided to instrument users that makes proper connections independent of the instrument providers.

**[HiSLIP](http://127.0.0.1:4000/downloads/Protocol%20Specifications/IVI-6.1_HiSLIP-2.0-2020-04-23.pdf)**&mdash; [IVI 6.1](http://127.0.0.1:4000/downloads/Protocol%20Specifications/IVI-6.1_HiSLIP-2.0-2020-04-23.pdf) defines a protocol that instruments can use to communicate over network connections with all of the capability used for conventional instrument control. GPIB (also known as IEEE 488) defines several very valuable instrument control functions beyond just single channel communications.  These include mechanisms that assure synchronization between the controller and the instruments, the capability to abort instrument operations irrespective of current processing, and the capability to deliver triggers.  The HiSLIP protocol provides this capability over TCP connections.

**[IVI Requirements for USBTMC](http://127.0.0.1:4000/downloads/Architecture%20Specifications/Ivi-6%202_USBTMC_2018-11-01.pdf)**&mdash; The USB imlementors forum has defined a protocol for USB that, much like HiSLIP, provides Test&Measurement capabilities over a USB interface. However, since USB kernel software on controllers is managed by the operating system, and only a single instance of it can be installed on most operating systems, it is necessary to standardize on the USB driver interface so IO software from different vendors can interoperate. This standard specifies the behavior of these low-level drivers. The IVI Foundation also provides a low-level driver that complies with this standard and is shared by many vendors.

**[IVI VISA PXI Plug-in](http://127.0.0.1:4000/downloads/Architecture%20Specifications/IVI-6.3_VisaPxiPlugIn_2022-12-19.pdf)**&mdash; In order to provide a interoperable solution, IVI has defined a standard driver API for vendors of PXI instruments. This enables multi-vendor systems by allowing PXI (or AXIe) modules from different vendors to be installed on a single system, and be controlled by common high-level software that is based on the IVI VISA standard.

**[IVI SASL Mechanism Specification](http://127.0.0.1:4000/downloads/Protocol%20Specifications/IVI-6.5_SASLMechanismSpecification_2022-05-19.pdf)**&mdash; As noted above, IVI provides the HiSLIP standard that provides rich instrument control over the network. In order for that control to be secure, IVI uses SASL (RFC 4422 at the time of this writing). SASL is a standard mechanism for client and servers to negotiate secure protocols and credentials. This IVI standard provides interoperability between vendors by calling out required mechnanisms and password requirements for Test and Measurement instruments and control software.

