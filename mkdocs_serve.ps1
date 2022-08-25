$path = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $path

../.venv/Scripts/Activate.ps1

../.venv/Scripts/mkdocs.exe serve
