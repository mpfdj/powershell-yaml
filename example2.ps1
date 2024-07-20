# Read yaml file
[PSCustomObject]$yaml = Get-Content -Path "D:\github\powershell-yaml\contacts.yml" -Raw | ConvertFrom-Yaml

# Print markus Object
$yaml.markus

# Set value in yaml Object
$yaml.markus.emails.personal = "miel4"

# Print email
Write-Host "email: " + $yaml.markus.emails.personal

# Write Object to file
ConvertTo-Yaml -Data $yaml -OutFile "D:\github\powershell-yaml\contacts.yml" -Force


# Print types
#($yaml.GetType() | Select-Object -ExpandProperty UnderlyingSystemType | Out-String).Trim()
$yaml.GetType() | Select-Object -ExpandProperty UnderlyingSystemType | ForEach-Object { "yaml: $($_.BaseType).$($_.Name)" }
$yaml.michaelly.emails.GetType() | Select-Object -ExpandProperty UnderlyingSystemType | ForEach-Object { "yaml.michaelly.emails: $($_.BaseType).$($_.Name)" }
$yaml.markus.emails.personal.GetType() | Select-Object -ExpandProperty UnderlyingSystemType | ForEach-Object { "yaml.michaelly.emails.personal: $($_.BaseType).$($_.Name)" }