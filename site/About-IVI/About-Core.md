NOTES:
- VS-Code
  - Markdown All in One
  - markdownlint
  - Rewrap Revived
  - XML (red hat)
  - YAML (red hat)
  - XML Tools (?) Josh
  - Rainbow CSV
  - Markdown Preview Enhanced (Yiyi Wang)


Key messages:
General outline and content?
-	Need to mention importance of interoperability
-	What do we think is the primary delivery mechanism for this document.  Probably want to focus on web delivery.  Perhaps work towards web content then something that can be perused in more detail.
o	Targeting either IVI and/or Keysight website.  At the outset target the IVI website.
o	Will want to produce a PDF also.
-	Need illustrations best tool for that is??
o	Might check with Sarabjeet (Sanjeev will ask)
-	Perhaps add an FAQ at the back that can contrast with the old approach, also need to talk about heterogeneity
-	Need concise “elevator” pitch on why this is cool.  Probably the top page on the website that can hit that.  Not too dense. “Punchy lead”
o	May need to create a parallel one for the old architecture for the IVI website. 
o	Should include expandability to other languages as a key benefit.
o	Just simpler
	Easy to use
	Light source code – does not require special tools
•	Easy to extend
	Easy deployment
	Target to any language – already have Python, .NET and C
	
-	Is there  some way that AI factors into this?  (Python)
-	Simpler deployment

moving into modern scenarios (for example, bring in new Python support..., closer to AI/ML enabling drivers...



The Next Generation of IVI Drivers -- IVI Core Drivers
IVI Foundation has released new IVI-Core driver standards, updating previous driver standards. These standards have several benefits:
-	Provide support for Python and .NET 6+ (also known as .NET Core)
-	Update C support with a new IVI-ANSI-C specification that provides a simpler, generic C DLL that can be used in any environment that can load a DLL.
-	Provide concise source code with drivers that enables customers to make updates and changes to the drivers (with exceptions of drivers for things like PXI where the source code is not practically accessible to end users)
-	Ensure that drivers are high quality, including:
o	satisfying specific testing requirements
o	providing basic required documentation
o	full coverage of instrument capabilities
-	Drivers may be delivered for non-Windows platforms such as Linux and MacOS
-	IVI specifies packaging for Core drivers instead of using an installer.  This allows driver use in modern development environments.  IVI.NET drivers are deployed with NuGet.  IVI-Python packages have appropriate content and are compatible with toml build systems.  Since C does not have a broad packaging standard, IVI-C drivers are packaged in an architecture-specific archive.
The new standards are dramatically simpler than the old IVI standards.  The Core specification and language-specific specifications are all less than 20 pages each.  By limiting the size and complexity of the standards they are much more accessible to developers.  This is especially significant in light of the fact that the earlier IVI driver standards were >1000 pages.
The IVI Driver Core Standard
Interoperability message
Ultimately, the existing IVI drivers are burdened with a lot of complexity to support interchangeability and related features.  As instrument vendors got together and discussed customer acceptance of IVI, the cost of IVI Driver development, and the need to move on to more modern programming environments they decided that it would be essential to update the IVI standards.
The first step in creating the IVI Core drivers was to produce a single specification that is independent of the target programming language. This core specification captured all of the requirements that were put in place of IVI Generation 2014, and also added a short list of required APIs for drivers.
IVI Drivers went through a key evolution in 2014.  As IVI drivers became the preferred solution for drivers, many vendors started to produce IVI drivers, but a few would claim they were producing IVI drivers, but fail to deliver on many basic quality expectations.  So, several key additional requirements were added for IVI Drivers in 2014 (and these additional requirements also apply to IVI Core Drivers).  These key new requirements are:
•	Drivers are required to provide basic documentation.  The IVI Foundation specifies the minimal sections that must be included in documentation.  IVI also requires a getting started guide.
•	Drivers are required to provide an API that is capable of programming the full instrument capabilities.  With the minor caveat that capabilities that are specific to interactive operation or factory service are not required (but may be provided).
•	Drivers that are built on top of another documented interface (such as SCPI or a REST interface) are required to include the driver source code.  This permits customers to inspect the source code, enhance, modify, or even debug drivers.  This is essential for many customers that need to have complete control over their system software.
•	Drivers must complete thorough testing of the API. IVI requires that every driver API be validated with all reasonable parameters, touching the parameter limits as part of the validation.  Since there is not a practical way for the IVI Foundation to police the testing performed by vendors, IVI requires that vendors document for customers the testing that they complete.  This documentation gives customers the leverage they need to insist on defect fixes if they find problems with drivers.

IVI Driver Core APIs
Whereas previous IVI Driver drivers (the IVI “Configurable Settings” drivers) had numerous APIs to support the peculiar features of the T&M tools from the early 2000’s, the IVI Core required APIs are a short list of things clearly necessary for any driver:
Initialization – common API forms to instantiate drive (or initialize in C)
Driver Identity Information – Common APIs to determine the driver author and driver version
Instrument Model Information – The instrument currently connected and the models of instrument supported by the driver
Instrument Error Query – a method that checks the instrument for any errors it has detected.
Instrument Error Checking – IVI requires that drivers provide a mechanism whereby the instrument is checked for errors after normal driver calls.  This is very helpful during development, but has severe performance implications so it needs to be turned off when the application is deployed.  One of the IVI Common functions turns this feature on and off.
Instrument Simulation – Although there is no actual simulation, it is very helpful during development for a driver to be instantiated and used when the physical instrument is not available.  IVI requires that instruments support this.  Although normally this choice is made when the driver is instantiated, IVI also specifies an API to turn on simulation when the driver is in use.
Instrument Reset – An API is required to reset the instrument, and any associated driver state variables that need to be instantiated.
Instrument IO – Instrument drivers that are built on top of another documented interface (such as SCPI) are required to provide a basic way for the driver user to send and receive string to the instrument.  This can be a valuable tool if some special instrument function needs to be used in a way that was not anticipated by the driver author. 
With these requirements, any driver that complies with the IVI Driver Core should deliver on basic quality requirements and also provide a consistent basic API for doing basic driver functions.
The IVI.NET and IVI-Python specifications also include interface definitions for these common functions.  This allows object oriented driver clients to manage the drivers abstractly.
The IVI Core drivers provide the essential features of drivers, with no more complexity than is necessary.  This results in:
-	Fast and efficient drivers
-	Minimal complexity drivers, which means that customers that want to work with the driver source code can do so.
-	Drivers attuned to the most modern languages, including Python and .NET 6,7,8 and beyond.
-	A new C IVI driver that is based on ANSI-C.  The earlier IVI Drivers were based on the VXIplug&play drivers, which go back to 

Although IVI 2014 guaranteed customers source code, in many cases the Configurable Settings drivers were so complex that the source code was impractical to update without access to the internal tool chains used by the driver developers.
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
error_query_all() --- this is a method that reads the entire error queue from the instrument into a Python collection.  The standard IVI-Core method reads a single error from the instrument at a time.
Raise_on_device_error() – this method clears the instrument error queue and raises an exception if the instrument recorded any errors.  This is useful for cases where the programmer does not care what errors are produced by the instrument, only if errors are produced by the instrument.  
The IVI.NET Standard
The IVI.NET Standard is a successor to previous IVI.NET standards from the IVI Foundation.  The previous versions of the standard were the subject of the detailed specifications mentioned above.  With IVI Driver Core, vendors and users can use much simpler drivers.  However, these drivers work fine alongside the earlier IVI drivers.
The new standards have less extensive requirements to facilitate instrument interchangeability.  The new standards retain the features critical for most scenarios.  IVI is continuing to provide Shared Components that driver developers and users can use that want to use the earlier IVI Driver architecture to interchange instruments.

The IVI-ANSI-C Standard 

GitHub
With the development of these specification, the IVI Foundation has begun a transition to managing the specifications under GitHub.  We believe this will help make the standards more accessible to driver users that want to propose additions, and also make the standards themselves more flexible. Driver users and developers are encouraged to participate by creating discussions on GitHub.
