---
layout: default
parent: Core Drivers
title: IVI-Python
nav_order:  40
---

# IVI-Python Drivers

The IVI-Python standard brings standardization and quality requirements to the already existing body of Python drivers available in the industry.

IVI-Python draws heavily on both PEP-8, which specifies good Python style, and IVI-Core that specifies documentation, testing, source availability and direct instrument IO.  IVI-Python does not reiterate these requirements. Therefore, IVI-Python is a terse standard (about 20 pages), focused on the specific aspects of Python for drivers.

Some key architectural points:

- IVI-Python describes how the driver object is named.  Although this is normally of little concern, since IVI-Python is used by many vendors creating drivers for many different instruments, the details of how the instrument manufacturer, driver author, and the instrument model are incorporated into the name need to be standardized to avoid collisions and confusion.
- IVI-Python drivers provide a hierarchical API for the instrument.  This is a common pattern in instrument interfaces since instruments tend can be tremendously complex. It is common for instrument drivers to have 1000s of entry points and instruments to have 1000s of SCPI commands. Arranging the methods hierarchically helps manage this complexity.
- IVI provides a Python Abstract Base Class (ABC) that drivers are required to implement.  This base API contains all of the methods specified in the IVI-Core specification, and also 2 additional methods that the IVI team found beneficial. By providing a base class, customers not only get consistency when they use drivers, they can also manage the driver instances abstractly. This enables creating tools that perform actions on all drivers, such as instantiate them all automatically or reading errors from all instruments.
- IVI Specifies basic package requirements, including classifiers for finding drivers on PyPI (Python Packaging Index). The IVI Foundation arranged for specific classifiers to be created for IVI drivers, so an IVI-Python driver will include a classifier of: *Scientific/Engineering::Instrument Drivers::IVI Conformant*.
- Since IVI-Python drivers may be delivered on any operating system that support Python, there are detailed documentation requirements regarding the operating system and Python versions that the driver is supported and was tested on.

The additional IVI-Python APIs are:

**error_query_all()** - this is a method that reads the entire error queue from the instrument into a Python collection. The IVI-Core method reads a single error from the instrument, this Python-specific method provides a convenient way to query *all* of the instrument errors into an appropriate Python container.

**Raise_on_device_error()** – this method clears the instrument error queue and raises an exception if the instrument recorded any errors.  This is useful for cases where the programmer does not care what specific errors are produced by the instrument, but would like to detect instrument errors and handle them as exceptions.
