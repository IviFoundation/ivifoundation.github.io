# ivifoundation.github.io

This is the IVI Foundation website, built on Jekyll and hosted on GitHub Pages.

The DNS name "www.ivifoundation.org" points to this site.

## Previewing locally on Windows

The easiest way to preview the site is to serve your local files in a [jekyll/jekyll](https://github.com/envygeeks/jekyll-docker) container.

Prerequisites:

- Docker
- PowerShell: `pwsh` (Linux) or `powershell.exe` (Windows, pre-installed)

Run this in PowerShell to build and serve the site:

```powershell
.\scripts\serve.ps1
```

It could take several minutes. Wait until you see:

```
    Server address: http://0.0.0.0:4000
  Server running... press ctrl-c to stop.
```

You can now open <http://localhost:4000/> in your browser to preview the site (**not** `0.0.0.0` as the output will show).

The site will automatically rebuild when you make changes to the source files. However, because the site is so big (something we should optimize), it may take a minute or two for the changes to show up, or even for output to appear in the console saying that there was a change. Also, due to [incremental builds](https://jekyllrb.com/docs/configuration/incremental-regeneration/), some changes require the server to be restarted so it can rebuild the entire site.

You can stop the server by pressing `Ctrl+C`.

##  Previewing locally on Linux

You can perform development and updates to the site on Linux.  You can use a docker approach as outlined for Windows, or just install Jekyll and friends and serve it locally.
