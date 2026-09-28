$ErrorActionPreference = 'Stop'

$packageDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$userProfile = [Environment]::GetFolderPath('UserProfile')
$codexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $userProfile '.codex' }
$petDir = Join-Path $codexHome 'pets\frostlich'

New-Item -ItemType Directory -Force -Path $petDir | Out-Null
Copy-Item -LiteralPath (Join-Path $packageDir 'pet.json') -Destination (Join-Path $petDir 'pet.json') -Force
Copy-Item -LiteralPath (Join-Path $packageDir 'spritesheet.webp') -Destination (Join-Path $petDir 'spritesheet.webp') -Force

Write-Host "Installed Frostlich in $petDir"
Write-Host 'Open Settings > Pets, select Refresh, and choose Frostlich.'
