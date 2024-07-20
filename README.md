# Install module offline
# https://sqlrambling.net/2019/09/30/installing-powershell-module-without-internet-access

# powershell-yaml package
# https://www.powershellgallery.com/packages/powershell-yaml
# https://github.com/cloudbase/powershell-yaml
# https://manuals.blusapphire.io/blugenie/full-function-list/convertfrom-yaml

# Help
# https://learn.microsoft.com/en-us/powershell/scripting/learn/ps101/02-help-system?view=powershell-7.4

# Examples
# https://stackoverflow.com/questions/55243059/parse-yaml-file-in-powershell
# http://dbadailystuff.com/yaml-in-powershell



# Check for dependencies
# https://www.powershellgallery.com/packages/powershell-yaml
Package Details > Dependencies > This module has no dependencies.


# Install a module offline
$env:PSModulePath -Split ";"

Save-Module -Name powershell-yaml -Path .
Copy-Item -Path .\powershell-yaml "C:\Program Files\WindowsPowerShell\Modules" -Recurse -Force
Import-Module powershell-yaml


# Show help
Get-Help ConvertFrom-YAML
Get-Help ConvertTo-YAML

Get-Command ConvertFrom-YAML
Get-Command ConvertTo-YAML


# List all commands in Module
Get-Module Microsoft.PowerShell.Management -ListAvailable | % { $_.ExportedCommands.Values } | sort
