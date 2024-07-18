#[PSCustomObject]$yaml = (ConvertFrom-Yaml -yaml (Get-Content -Raw "C:\Users\TO11RC\Downloads\Hawk console\contacts.yml"))
[PSCustomObject]$yaml = Get-Content -Path "C:\Users\TO11RC\Downloads\Hawk console\contacts.yml" -Raw | ConvertFrom-Yaml
$yaml.markus

$yaml.markus.emails.personal = "miel3"
Write-Host "email: " + $yaml.markus.emails.personal



ConvertTo-Yaml -Data $yaml -OutFile "C:\Users\TO11RC\Downloads\Hawk console\contacts_updated.yml" -Force