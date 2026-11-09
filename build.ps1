# Builds the GitHub Pages copies in docs/ from the artifact source pages.
# The source pages are written for Claude artifacts (no doctype/head), so this adds them.
$ErrorActionPreference = "Stop"
$root = $PSScriptRoot
$docs = Join-Path $root "docs"
New-Item -ItemType Directory -Force $docs | Out-Null
$utf8 = New-Object System.Text.UTF8Encoding($false)

$head = @'
<!doctype html>
<html lang="ko">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<style>body{margin:0}[hidden]{display:none!important}img{max-width:100%}</style>

'@

$pages = @{
  "퀴즈쇼.html"             = "quiz.html"
  "게임만들기_미션카드.html" = "mission.html"
}
foreach ($src in $pages.Keys) {
  $body = [IO.File]::ReadAllText((Join-Path $root $src), $utf8)
  [IO.File]::WriteAllText((Join-Path $docs $pages[$src]), $head + $body, $utf8)
  Write-Output "built docs/$($pages[$src])"
}
