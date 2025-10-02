param(
  [string]$Evtx = "C:\Windows\System32\winevt\Logs\Microsoft-Windows-Sysmon%4Operational.evtx",
  [string]$Out  = ".\reports\sysmon_raw.csv"
)

Get-WinEvent -Path $Evtx -ErrorAction Stop |
  Select-Object TimeCreated, Id, ProviderName, LevelDisplayName, MachineName, Message |
  Export-Csv $Out -NoTypeInformation
Write-Host "Wrote $Out"
