$text = @"
product: "1.0.0"
info:
  name: "api2product"
  title: "API2product"
  version: "1.0.0"
visibility:
  view:
    enabled: true
    type: "public"
    tags: []
    orgs: []
  subscribe:
    enabled: true
    type: "authenticated"
    tags: []
    orgs: []
apis:
  api1:
    `$ref: "api1_1.0.0.yaml"
  api2:
    `$ref: "api2_1.0.0.yaml"
  api3:
    `$ref: "api3_1.0.0.yaml"
  api4:
    `$ref: "api4_1.0.0.yaml"
  api5:
    `$ref: "api5_1.0.0.yaml"
plans:
  default:
    title: "Default Plan"
    description: "Default Plan"
    approval: false
    rate-limit:
      hard-limit: false
      value: "100/hour"
"@


Import-Module powershell-yaml

$yaml = ConvertFrom-Yaml $text





# Loop list
foreach ($api in $yaml.apis.GetEnumerator()) {
    Write-Host "$($api.Name) ref: $($api.Value['$ref'])"
}

