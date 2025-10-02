param(
  [string]$In  = ".\reports\sysmon_raw.csv",
  [string]$Out = ".\reports\sysmon_example.csv"
)

(Get-Content $In) `
  -replace '(?<!\d)(?:\d{1,3}\.){3}\d{1,3}(?!\d)','IP_REDACTED' `
  | Set-Content $Out

Write-Host "Wrote $Out"
