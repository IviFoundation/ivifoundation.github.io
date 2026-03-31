---
layout: default
parent: none
title: Core Driver Overview
nav_order:  10
---

# IVI Core Overview

The Next Generation of IVI Drivers -- IVI Core Drivers

The IVI Foundation has released new IVI-Core driver standards, updating previous driver standards. These standards have several benefits:

-	Provide support for Python and .NET 6+ (also known as .NET Core)
-	Update C support with a new IVI-ANSI-C specification that provides a simpler, generic C DLL that can be used in any environment that can load a DLL.
-	Provide concise source code with drivers that enables customers to make updates and changes to the drivers (with exceptions of drivers for things like PXI where the source code is not practically accessible to end users)
-	Ensure that drivers are high quality, including:

    - satisfying specific testing requirements
    - providing basic required documentation
    - full coverage of instrument capabilities

-	Drivers may be delivered for non-Windows platforms such as Linux and MacOS
-	IVI specifies packaging for Core drivers instead of using an installer.  This allows driver use in modern development environments.  IVI.NET drivers are deployed with NuGet.  IVI-Python packages have appropriate content and are compatible with toml build systems.  Since C does not have a broad packaging standard, IVI-C drivers are packaged in an architecture-specific archive.
The new standards are dramatically simpler than the old IVI standards.  The Core specification and language-specific specifications are all less than 20 pages each.  By limiting the size and complexity of the standards they are much more accessible to developers.  This is especially significant in light of the fact that the earlier IVI driver standards were >1000 pages.
- Interoperability between different vendors drivers


