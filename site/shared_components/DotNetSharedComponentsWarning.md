---
layout: default
parent: Shared Components
title: .NET Shared Components Warning
nav_order: 1
---
# .NET Shared Components Warning

A warning is generated when building a .NET project
that includes a reference to "provisional" IVI.NET shared
assemblies.

The IVI.NET assemblies included in the IVI.NET Shared
Components are large and complex.  They have all required extensive
development effort and review.  They have been "provisionally" released
to IVI Foundation members for prototyping and development.  As IVI
Foundation members verify each assembly by prototyping or developing and
releasing a driver that uses the assembly, that assembly will be removed
from "provisional" status to "production-ready" status.

If you see this warning, the referenced assembly is
still in provisional status.  This means that

- The assembly has been provisionally released for
  prototyping only.  No released drivers should reference this
  assembly.
- The assembly will remain in provisional status
  until an IVI Foundation member has developed a driver that
  references the assembly, and has confirmed the quality of the
  assembly.
- If it is determined, based on the work of an IVI
  Foundation member or other input, that changes to the assembly are
  needed, these changes may be breaking changes.
  Drivers (or other software)
  that reference provisional assemblies
  ***SHOULD NOT*** be released,
  as future changes could break the driver\!
- IVI Foundation members who would like to release
  a driver that references a provisional assembly must contact the
  IVI.NET working group to work through the process of removing the
  assembly from provisional status.  Non-members should refer to the
  [Shared Components](Default.html) page for the IVI.NET Shared Components status.
