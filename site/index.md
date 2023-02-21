
# Hello World!

![](https://www.ivifoundation.org/images/logo_ivi.gif)

This is a test of GitHub Pages at: <https://github.com/IviFoundation/ivifoundation.github.io>

Tested by Alejandro on 2023-02-08.

## Hello from the Infrastructure WG!

👏

## The rest of the page should be the driver registry...

<!--<iframe src="https://www.ivifoundation.org/registered_drivers/driver_registry.aspx" title="Driver Registry" style="width: 90vw; height: 100vh; border: none;"></iframe>-->

<div id="container">
  <iframe id="content" src="https://www.ivifoundation.org/registered_drivers/driver_registry.aspx" title="Driver Registry" style="border: none;" onload="resize()"></iframe>
</div>
<script>
  function resize() {
    var container = document.getElementById("container");
    var content = document.getElementById("content");
    container.style.height = content.contentWindow.document.body.scrollHeight + "px";
    container.style.width = content.contentWindow.document.body.scrollWidth + "px";
  }
</script>
