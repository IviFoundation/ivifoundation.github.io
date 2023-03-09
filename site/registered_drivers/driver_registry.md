---
layout: default
---

# Driver Registry

[](register_driver.html)

[![RSS Feed](../images/rss.gif)](driver_registry_feed.ashx)This page
lists the drivers registered with the IVI Foundation. Information in
this list is updated automatically; for concerns or corrections, contact
the IVI Foundation.

  - Show All Drivers
  - |
  - <span id="crumb1">crumb1</span>
  - <span id="crumb2">crumb2</span>
  - <span id="crumb3">crumb3</span>
  - <span id="crumb4">crumb4</span>
  - <span id="crumb5">crumb5</span>
  - <span id="crumb6">crumb6</span>

|  |
|  |
|  |

|  |
|  |
|  |

|  |
|  |
|  |

|  |
|  |
|  |

|  |
|  |
|  |

SelectCommand="SELECT \[UserID\], \[DriverRegistryID\],
\[Manufacturer\], \[InstrumentClass\], \[SupportedModels\],
\[DriverVendor\], \[VendorURL\], \[DriverType\], \[DriverGeneration\],
ISNULL(DATALENGTH(\[FileContents\]), 0) As FileSize FROM
\[DriverRegistry\] ORDER BY \[Manufacturer\]"\>
