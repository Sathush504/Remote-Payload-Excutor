# Interactive PowerShell Base64 Encoder
# Automatically saves output in the current directory

# file path
do {
    $filePath = Read-Host "Enter the full path of the .ps1 file to encode"

    if (-Not (Test-Path $filePath)) {
        Write-Host "File not found. Please check the path and try again." -ForegroundColor Red
        $validFile = $false
    }
    else {
        $validFile = $true
    }
} until ($validFile)

# reading file content
$scriptContent = Get-Content $filePath -Raw

# converting to UTF-16LE
$bytes = [System.Text.Encoding]::Unicode.GetBytes($scriptContent)

# converting bytes to Base64
$encoded = [Convert]::ToBase64String($bytes)

# generate output file path automatically in current directory
$baseName = [System.IO.Path]::GetFileNameWithoutExtension($filePath)
$currentDir = Get-Location
$outputPath = Join-Path $currentDir "$baseName`_encoded.txt"

# saving the Base64 string to the output file
try {
    Set-Content -Path $outputPath -Value $encoded
    Write-Host "Base64 encoding complete! Saved to $outputPath" -ForegroundColor Green
}
catch {
    Write-Host "Failed to save file: $_" -ForegroundColor Red
    exit
}

# exit countdown
$count = 5
Write-Host "`nExiting in..."
for ($i = $count; $i -ge 1; $i--) {
    Write-Host "$i..."
    Start-Sleep -Seconds 1
}

Write-Host "Goodbye!" -ForegroundColor Cyan
