---
layout: default
parent: About
title: Measurement & Stimulus for Interchangeability
nav_order:  5

---

# Measurement & Stimulus Subsystems (IVI-MSS)

The *Measurement and Stimulus Subsystem (IVI-MSS)* specification
provides additional architectural help in building test and measurement
solutions. IVI-MSS shows how IVI drivers, IVI shared components and
other software elements can be combined together to build integrated
solutions. Such solutions can provide:

1.  The integration of multiple items of test equipment under a single
    interface.
2.  A higher degree of test instrument interchangeability, including in
    some cases semantic interchangeability.

These two benefits come at the expense of additional cost and complexity
beyond the requirements of IVI-Drivers. Users who are willing to
consider making changes in their application programs when an instrument
is interchanged or who are not concerned about aggregating several
instruments together that will interoperate with multiple vendors, will
not need to be concerned about IVI-MSS.

Users who must be able to interchange test instruments without making
any changes to either their test programs or IVI-Drivers and also be
able to guarantee the measurement results, will find IVI-MSS helpful.
The IVI-MSS specification contains architectural guidance and design
principles needed to develop PC based solutions that meet these
requirements. A key aspect of this specification is instruction on when
the following IVI shared components are used: IVI-Configuration Server,
IVI-Session Factory, and the IVI-Event Server.

In addition to these common components, IVI-MSS solutions include two
solution specific components called Measurement or Stimulus Servers and
Role Control Modules.

## Additional Information

MSS overview presentation: [IVI-MSS Overview](../assets/docs/MSS-Overview.pdf)
Download the full IVI-MSS specification at:
[Specifications](../specifications/default.html)
