# Connect to remote host via SSH and run a terminal script
$hostname = "pigletaccess"
$username = "admin"
$scriptToRun = "echo 'Pigletaccess'"
# Run the script remotely using ssh.exe
$sshCommand = "ssh $username@$hostname $scriptToRun"
Invoke-Expression $sshCommand
# Activate Python virtual environment and run main.py using Python
$venvActivate = "C:\Users\Admin\Documents\GitHub\casino-bot\venv\Scripts\Activate.ps1"

if (Test-Path $venvActivate) {
    & $venvActivate
    python -m main
} else {
    Write-Host "Virtual environment activation script not found: $venvActivate"
}