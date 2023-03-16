param (
    [switch] $ReusePreviousOutput,
    [switch] $RenderUnpublished
)

$root = "$PSScriptRoot/.."

$jekyllArgs = @()
if ($ReusePreviousOutput) {
    $jekyllArgs += "--skip-initial-build"
}
if ($RenderUnpublished) {
    $jekyllArgs += "--drafts"
    $jekyllArgs += "--future"
    $jekyllArgs += "--unpublished"
}

docker run --rm `
    --name="ivi-foundation-website" `
    --publish="4000:4000" `
    --volume="$root/site:/srv/jekyll:Z" `
    --env JEKYLL_ENV=development `
    --rm --interactive --tty jekyll/jekyll `
    jekyll serve --incremental --watch --force_polling --profile --host 0.0.0.0 --trace @jekyllArgs
