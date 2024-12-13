# Define the path to the .cow file
$cowFile = "C:\Users\nikolai\Documents\PowerShell\sylveon.txt"

# Read the .cow file
$cowContent = Get-Content $cowFile -Raw

# Display the content as-is
Write-Host $cowContent -NoNewline

oh-my-posh init pwsh --config 'D:\Profiles\sylveon\catppuccin_mocha.omp.json' | Invoke-Expression