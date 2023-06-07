# ivifoundation.github.io

⚒️ *In development.* ⚒️

## About this site

This is the future IVI Foundation website, built on Jekyll and hosted on GitHub Pages.

One day, it will be hosted at: <https://www.ivifoundation.org/>

## Previewing locally

The easiest way to preview the site is to serve your local files in a [jekyll/jekyll](https://github.com/envygeeks/jekyll-docker) container.

Prerequisites:

- Docker
- `pwsh` (not necessary on Windows; `powershell.exe` comes pre-installed)

Run this in PowerShell to build and serve the site:

```powershell
.\scripts\serve.ps1
```

It could take several minutes until you see:

```
    Server address: http://0.0.0.0:4000
  Server running... press ctrl-c to stop.
```

When you see that, the server is running. You can now open <http://localhost:4000/> in your browser to preview the site (not `0.0.0.0` as the output will show).

The site will automatically rebuild when you make changes to the source files. However, because the site is so big (something we should optimize), it may take a minute or two for the changes to show up, or even for output to appear in the console saying that there was a change. Also, due to [incremental builds](https://jekyllrb.com/docs/configuration/incremental-regeneration/), some changes require the server to be restarted so it can rebuild the entire site.

You can stop the server by pressing `Ctrl+C`.

## Troubleshooting

See: <https://github.com/IviFoundation/ivifoundation.github.io/wiki/Troubleshooting-build-issues>
