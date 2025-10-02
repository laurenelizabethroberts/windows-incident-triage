# Windows Incident Triage (Sysmon + Chainsaw)
[![License](https://img.shields.io/github/license/laurenelizabethroberts/windows-incident-triage)](LICENSE)

## Overview
This repository demonstrates how to collect, export, and analyze Windows host telemetry using Sysmon and Chainsaw.

## Tools Used
- **Sysmon** – for advanced event logging
- **Chainsaw** – for fast hunting & Sigma rule detections
- **PowerShell** – for exporting and sanitizing logs

## Workflow
1. Sysmon logs system activity to `Microsoft-Windows-Sysmon/Operational`.
2. PowerShell scripts export `.evtx` into `.csv`.
3. Sanitization script redacts sensitive hostnames, usernames, and IPs.
4. Chainsaw parses and hunts logs against Sigma rules.
5. Sanitized sample reports are committed here for demonstration.

## Example Commands
```powershell
# Export Sysmon logs to CSV
pwsh .\scripts\export_sysmon.ps1

# Sanitize raw output for safe sharing
pwsh .\scripts\sanitize_csv.ps1 -In .\reports\sysmon_raw.csv -Out .\reports\sysmon_example.csv

# Run Chainsaw search mode
pwsh .\scripts\chainsaw_hunt.ps1
