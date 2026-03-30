---
layout: default
parent: Core Drivers
title: Python
nav_order:  40
---

# Core IVI-Python Drivers

The IVI-Python Standard
The IVI-Python standard is a new IVI standard.  It brings some standardization and quality requirements to the already existing body of Python drivers available in the industry.
The IVI-Python standard draws heavily on both PEP-8, which specifies good style for and Python project, and the IVI-Core standard that specifies documentation, testing, source availability and direct instrument IO.  Since none of these requirements are reiterated in the IVI-Python standard, IVI-Python standard can be focused on the specific aspects of IVI-Python drivers.
Some key architectural points:
-	Details of how the driver object is named are included.  Although this is normally of little concern, since IVI-Python is intended to be used by many vendors, creating drivers for many different instruments, the details of how the instrument manufacturer, driver author, and the instrument model are incorporated into the name benefit from being standardized.
-	IVI-Python drivers are architected hierarchically.  This is a common pattern in instrument interfaces since instruments tend to be such tremendously complex devices.   In fact is is common for instrument drivers (and the corresponding SCPI commands) to have 1000s of entry points.  Therefore, arranging the methods hierarchically is a huge benefit in managing the complexity.
-	IVI-Python drivers use exceptions, as would be expected in a modern system.  It is important to remember that instruments may encounter errors that are not errors from the perspective of the driver.  For instance, an instrument may report “loop unlocked”.  This is not necessarily something that will be converted to an exception since it may be part of normal instrument operation.
-	IVI  provides a base driver API that instrument drivers are required to implement.  This base API contains all of the methods specified in the IVI-Core specification, and also a couple of additional ones that the IVI team thought were beneficial. By providing a base API, customers not only get consistency when they use drivers, they can also manage them abstractly, for instance, creating tools that can instantiate all the drivers automatically or read errors from all instruments at once.
-	IVI Specifies basic package requirements, including classifiers for finding drivers.  The IVI Foundation arranged for specific classifiers to be created on PyPI (the Python Packaging Index) for IVI drivers, so an IVI-Python driver will include a classifier of: “Scientific/Engineering::Instrument Drivers::IVI Conformant”.
-	Since IVI-Python drivers may be delivered on any operating system that support Python, there are details documentation requirements regarding the operating system and versions that the driver is supported and was tested on.

The additional IVI-Python APIs are:

**error_query_all()** - this is a method that reads the entire error queue from the instrument into a Python collection.  The standard IVI-Core method reads a single error from the instrument at a time.

**Raise_on_device_error()** – this method clears the instrument error queue and raises an exception if the instrument recorded any errors.  This is useful for cases where the programmer does not care what errors are produced by the instrument, only if errors are produced by the instrument.  
