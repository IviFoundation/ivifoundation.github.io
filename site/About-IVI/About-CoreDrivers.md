---
layout: default
parent: Standards
title: Core Drivers
nav_order:  10
---

# IVI Core Drivers

Starting in IVI Generation 2026, the IVI Foundation determined that the industry
needed a new generation of driver standards that are dramatically easier to use,
develop, and extend than existing drivers.

As part of this simplification effort the new driver standards needed to deliver
on what is generally expected by users of instrument drivers, without any
additional burden of a system-level architecture that complicates deployment and
use of the drivers.

*IVI Core* drivers include key features critical to customers such as:

- Driver source code that does not require special tools and enables customers to extend the drivers
- Complete support for the instrument
- The standard requires that drivers are well tested
- A driver deployment model that fits with modern software environments and does not require an install
- A *basic* set of common APIs to manage the driver and underlying instrument

To do this the IVI Foundation created a new *Core* driver standard. It is
independent of the driver implementation language and establishes a baseline for
language-specific drivers.  Using this, we have rapidly created extensions for
Python, C, and .NET.

Because of this focus on simple usable drivers, the driver specifications are
dramatically shorter than earlier IVI specifications.  Making the specifications
themselves easily accessible to both driver users and implementors.  The IVI
Core standards, including the architecture and language extensions are all 20
pages or less.

<!-- 


-	Need illustrations best tool for that is??
  o	Might check with Sarabjeet (Sanjeev will ask)
-	Perhaps add an FAQ at the back that can contrast with the old approach, also need to talk about heterogeneity
-	Need concise “elevator” pitch on why this is cool.  Probably the top page on the website that can hit that.  Not too dense. “Punchy lead”
  o	May need to create a parallel one for the old architecture for the IVI website. 
  o	Should include expandability to other languages as a key benefit.
  o	Just simpler
    - Easy to use
- Light source code – does not require special tools
- Easy to extend
- Easy deployment
- Target to any language – already have Python, .NET and C
	
-	Is there  some way that AI factors into this?  (Python)
-	Simpler deployment
- moving into modern scenarios (for example, bring in new Python support..., closer to AI/ML enabling drivers...
 -->

## GitHub

With the development of these specification, the IVI Foundation has begun a
transition to managing the specifications on [GitHub](https://github.com/IviFoundation/IviDrivers/tree/main).  We believe this will
help make the standards more accessible to driver users that want to propose
additions, and also make the standards themselves more flexible. Driver users
and developers are encouraged to participate by creating discussions on GitHub.
