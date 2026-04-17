# ivifoundation.github.io

This is the IVI Foundation website, built on Jekyll and hosted on GitHub Pages.

The DNS name "www.ivifoundation.org" points to this site.

## Previewing locally

There are two ways to run the site locally. Both mount your working directory into a
[jekyll/jekyll](https://github.com/envygeeks/jekyll-docker) container so edits are
reflected without rebuilding the image.

| Approach | Script | URL | Requires |
|---|---|---|---|
| Docker (recommended) | `scripts/serve.ps1` | http://localhost:4000 | Docker |
| Kubernetes | `scripts/kube-serve.ps1` | http://localhost:30400 | kubectl + Docker Desktop or Rancher Desktop |

---

### Docker (recommended)

**Prerequisites:** Docker, PowerShell (`pwsh` on Linux, `powershell.exe` on Windows)

```powershell
.\scripts\serve.ps1
```

Wait until you see:

```
    Server address: http://0.0.0.0:4000
  Server running... press ctrl-c to stop.
```

Then open **http://localhost:4000** in your browser (`0.0.0.0` will not work — use `localhost`).

The server watches for file changes and rebuilds automatically. Because the site is large,
rebuilds can take a minute or two. Some changes (e.g. `_config.yml`) require a full restart.

Press `Ctrl+C` to stop.

#### Optional flags

| Flag | Effect |
|---|---|
| `-ReusePreviousOutput` | Skips the initial build, serving whatever was built last time |
| `-RenderUnpublished` | Also renders draft posts, future-dated posts, and unpublished pages |

```powershell
.\scripts\serve.ps1 -RenderUnpublished
```

---

### Kubernetes

See [scripts/README.md](scripts/README.md) for full instructions and debugging steps.

```powershell
.\scripts\kube-serve.ps1
```

---

## Debugging

### Docker: container won't start or exits immediately

Check whether a container from a previous run is still around:

```powershell
docker ps -a --filter name=ivi-foundation-website
```

If one exists, remove it and try again:

```powershell
docker rm -f ivi-foundation-website
```

### Docker: site not updating after a file change

Incremental builds can occasionally miss changes. Restart the server to force a full rebuild:

```powershell
# Ctrl+C to stop, then:
.\scripts\serve.ps1
```

If a full rebuild also looks wrong, delete the `_site/` output directory first:

```powershell
Remove-Item -Recurse -Force site/_site
.\scripts\serve.ps1
```

### Docker: gem or bundle errors

The `jekyll/jekyll` image bundles a fixed set of gems. If `Gemfile.lock` references a gem
version not in the image you will see `Bundler::GemNotFound` errors. On Linux or WSL, run:

```bash
bundle install
```

to regenerate the lockfile, then restart the server.

### Jekyll: page looks wrong or missing

Jekyll's incremental build mode (used by `serve.ps1`) can skip some pages when
dependencies change. Restart with a clean build to rule this out. If you need to preview
unpublished or future-dated content, use the `-RenderUnpublished` flag.

### Kubernetes issues

See the [Debugging section in scripts/README.md](scripts/README.md#how-to-debug) for
pod status checks, log streaming, and teardown instructions.

---

## Previewing locally on Linux

The same Docker approach works on Linux. Install Docker, then run:

```bash
pwsh ./scripts/serve.ps1
```

Or install Jekyll directly and run `bundle exec jekyll serve` from the `site/` directory.
