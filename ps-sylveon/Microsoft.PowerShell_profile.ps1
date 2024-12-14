Import-Module -Name Terminal-Icons
Import-Module -Name PSReadLine

# Define the path to the .cow file
$cowFile = "C:\shell-profiles\ps-sylveon\sylveon.txt"

# Read the .cow file
$cowContent = Get-Content $cowFile -Raw

# Display the content as-is
Write-Host $cowContent -NoNewline

# Get the current date and user
$currentDate = Get-Date -Format "yyyy-MM-dd"
$currentUser = [Environment]::UserName


# Create the string with spaces and text
$alignedText = ("Today is " + "$currentDate")
$userName = ("Welcome, " + "$currentUser" + "!")

# Write the new content to the console
Write-Host $alignedText
Write-Host $userName

# ssr transient
function Invoke-Starship-TransientFunction {
  &starship module character
}

# starship completion
. C:\Users\nikolai\Documents\PowerShell\ssr_completion.ps1

# starship
Invoke-Expression (& 'C:\Program Files\starship\bin\starship.exe' init powershell --print-full-init | Out-String)
Enable-TransientPrompt