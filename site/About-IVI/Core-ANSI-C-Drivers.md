---
layout: default
parent: Core Drivers
title: IVI-ANSI-C
nav_order:  60
---

# IVI-ANSI-C Drivers

The Core IVI-ANSI-C drivers are simple to us, develop and modify. These drivers align well with common customer expectations around an instrument driver. As an IVI compliant driver, users are assured that they will work well with other drivers on the system and that they comply with the IVI requirements around quality, documentation, and delivery.

Core IVI-ANSI-C drivers may be supported on the compiler and operating systems that the driver provider chooses, although Windows must be supported.

Although these drivers are referred to as IVI-ANSI-C drivers, they frequently provide the best instrument interface for use in languages such as C++, Java Script and Rust that do not have dedicated IVI standards. These drivers are also frequently used when interfacing to instruments from tools like Excel, R or MATLAB. To keep the interfaces as portable as possible, IVI-ANSI-C drivers are specified to support the ANSI 1999 C specification (commonly known as C99). Of course, drivers may provide support for more modern features, but requiring C99 ensures that the drivers themselves can be used in a variety of environments.

Drivers document the specific compilers and versions they are tested and supported with.

In addition to the IVI-Core requirements regarding testing, source code, and documentation, IVI-ANSI-C has several requirements that provide customers with a good experience when using these drivers from one or more vendors. These include:

> **Naming Conventions** &mdash; Although trivial on the surface, naming conventions are extremely beneficial to provide a pleasant experience, especially when using drivers from numerous vendors. In a C programming environment there is always a very real chance of having name collisions on identifiers or filenames.  These IVI-C requirements are basic hygiene for a C standard. IVI strived to use conventional patterns in every case so customers should find nothing surprising in these drivers.
>
> **Common API** &mdash; Although Core IVI-ANSI-C does not have the dozens of API requirements that IVI-C had, it is useful to have a handful of common functions. These include initialization, driver identity, instrument identity, reset, and error management. Specifying these in the standard ensure that the end-user easily gets started with new drivers and instruments.
> 
> **Data Retrieval Protocol** &mdash; Another common challenge for C drivers is the management of memory for driver data. The challenge is that to avoid memory leaks, it is important to carefully control where memory is allocated. IVI prefers that memory be allocated by the driver client, allowing the client to ensure they are done with data and that they free it when complete. To do this, IVI-ANSI-C specifies a consistent protocol for the client to determine from the driver how much memory needs to be allocated to return a particular structure.
> 
> **Packaging Requirements** &mdash; IVI was unable to find a standard C packaging solution that would meet all IVI-ANSI-C customers' needs. Therefore IVI only specifies the basic content of the package and encourages the use of an appropriate file format for the target system (such as tar or zip). Drivers are required to include the libraries, include files, license terms, compliance documentation, and instructions for how to acquire the driver documentation and source code (if provided).
