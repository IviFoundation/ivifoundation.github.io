---
layout: default
parent: Core Drivers
title: IVI-ANSI-C
nav_order:  60
---

# IVI-ANSI-C Drivers

The [Core IVI-ANSI-C](https://github.com/IviFoundation/IviDrivers/blob/main/IviDriverAnsiC/1.0/Spec/IviDriverAnsi-C.md) drivers are simple to us, develop and modify. These drivers align well with common customer expectations around an instrument driver. As an IVI conformant driver, users are assured that they will work well with other drivers on the system and that they comply with the IVI requirements around quality, documentation, and delivery.

Core IVI-ANSI-C drivers may be supported any compiler and operating system that the driver provider chooses, although IVI-ANSI-C requires that at a minimum Windows be supported. This Windows requirement is specific to IVI-ANSI-C and is not part of the IVI Core.

Although IVI-ANSI-C drivers are referred to as ANSI-C drivers, they frequently provide the best instrument interface for use in languages such as C++, Java Script and Rust that do not have dedicated IVI support. IVI-ANSI-C drivers are also frequently used when interfacing to instruments from tools like Excel, R or MATLAB.

To keep the interfaces as portable as possible, IVI-ANSI-C drivers are specified to support the ANSI 1999 C specification (commonly known as C99). Drivers may provide support more modern features found in current compilers, but requiring C99 as a baseline ensures that the drivers themselves can be used in a variety of environments.

Drivers document the specific compilers and versions they are tested and supported with.

In addition to the IVI-Core requirements IVI-ANSI-C has several requirements that make it easy to use them alongside drivers from multiple vendors. These include:

> **Naming Conventions** &mdash; Although trivial on the surface, naming conventions are important in a C programming environment. In a C environment there is always a danger of name collisions on identifiers or filenames.  The IVI-C requirements are basic hygiene for a C standard. IVI strived to use conventional patterns in every case so customers should find nothing unusual in the names or use of upper and lower case.
>
> **Common API** &mdash; Although Core IVI-ANSI-C does not have the dozens of API requirements that IVI-C had, it is useful to have a handful of common functions. These include initialization, driver identity, instrument identity, reset, and error management. Specifying these in the standard ensures that the end-user can easily get started with new drivers and instruments.
> 
> **Data Retrieval Protocol** &mdash; Another common challenge for C drivers is the management of memory for driver data. To avoid memory leaks in a C environment it is important to carefully control where memory is allocated and freed. IVI-ANSI-C drivers require the driver client to allocate and free the memory. This allows the client to ensure they are done with data and that every allocated block is freed when it is no longer needed. To facilitate this, IVI-ANSI-C specifies a consistent protocol for the client to query from the driver how much memory needs to be allocated, so that the client can allocate it and pass it to the driver where the value is filled in.
> 
> **Packaging Requirements** &mdash; IVI was unable to find a standard C packaging solution that would meet anticipated IVI-ANSI-C customers' needs. Therefore, IVI only specifies the basic content of the package and encourages the use of an appropriate file format for the target system (such as tar or zip). IVI-ANSI-C packages include the libraries, include files, license terms, compliance documentation, and instructions for how to acquire the driver documentation and source code (if provided). The documentation and source code may be included in the package, but in many cases the extra bulk of including them in the driver package is wasteful, so vendors may choose to provide that required material outside the package itself (for instance on a web page page or GitHub repository).
