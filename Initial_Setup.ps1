# Update Execution Policy: Set-ExecutionPolicy Bypass
# Install git from: https://git-scm.com/download/win
# Install Windows Terminal from Windows Store

# Install Posh-Git
Install-Module posh-git -Confirm:$false -Force

# Install Oh-My-Posh
Install-Module oh-my-posh -Confirm:$false -Force

# Create WindowsPowerShell directory if not exists
$pwsh_path = Path.Combine([Environment]::GetFolderPath("MyDocuments"), `
  "WindowsPowerShell")
New-Item -ItemType Directory -Force -Path $pwsh_path

# Move PowerShell profile script
Move-Item .\Microsoft.PowerShell_profile.ps1 $pwsh_path

# Move Windows Terminal settings file
$wnd_term_path = "$HOME\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"
Move-Item $wnd_term_path\settings.json $wnd_term_path\settings.json.src
Move-Item .\settings.json $wnd_term_path
