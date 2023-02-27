param (
    [switch] $BuildUpFront
)

$root = "$PSScriptRoot/.."

$jekyllArgs = @()
# if (!$BuildUpFront) {
#     $jekyllArgs += "--skip-initial-build"
# }

docker run --rm `
    --name="ivi-foundation-website" `
    --publish="4000:4000" `
    --volume="$root/site:/srv/jekyll:Z" `
    --env=JEKYLL_LOG_LEVEL=debug `
    --rm --interactive --tty jekyll/jekyll `
    jekyll serve --incremental --watch --force_polling --host 0.0.0.0 --profile --trace @jekyllArgs
