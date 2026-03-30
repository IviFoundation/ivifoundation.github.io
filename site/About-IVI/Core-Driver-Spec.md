---
layout: default
parent: Core Drivers
title: Core Driver Specification
nav_order:  20
---

# The IVI Driver Core Standard

Ultimately, the existing IVI drivers are burdened with a lot of complexity to
support interchangeability and related features.  As instrument vendors got
together and discussed customer acceptance of IVI, the cost of IVI Driver
development, and the need to move on to more modern programming environments
they decided that it would be essential to update the IVI standards.

The first step in creating the IVI Core drivers was to produce a single
specification that is independent of the target programming language. This core
specification captured all of the requirements that were put in place of IVI
Generation 2014, and also added a short list of required APIs for drivers. IVI
Drivers went through a key evolution in 2014.  As IVI drivers became the
preferred solution for drivers, many vendors started to produce IVI drivers, but
a few would claim they were producing IVI drivers, but fail to deliver on many
basic quality expectations.  So, several key additional requirements were added
for IVI Drivers in 2014 (and these additional requirements also apply to IVI
Core Drivers).  These key new requirements are:

- Drivers are required to provide basic documentation.  The IVI Foundation
  specifies the minimal sections that must be included in documentation.  IVI also
  requires a getting started guide.

- Drivers are required to provide an API that is capable of programming the full
  instrument capabilities.  With the minor caveat that capabilities that are
  specific to interactive operation or factory service are not required (but may
  be provided).

- Drivers that are built on top of another documented interface (such as SCPI or
  a REST interface) are required to include the driver source code.  This
  permits customers to inspect the source code, enhance, modify, or even debug
  drivers.  This is essential for many customers that need to have complete
  control over their system software.

- Drivers must complete thorough testing of the API. IVI requires that every
  driver API be validated with all reasonable parameters, touching the parameter
  limits as part of the validation.  Since there is not a practical way for the
  IVI Foundation to police the testing performed by vendors, IVI requires that
  vendors document for customers the testing that they complete.  This
  documentation gives customers the leverage they need to insist on defect fixes
  if they find problems with drivers.


