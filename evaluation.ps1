$JobAssignment = Test-Path -Path "C:\Users\Public\Desktop\JobAssignment.exe"
if ($JobAssignment -eq $false) {
    Write-Host "JobAssignment.exe is not in C:\Users\Public\Desktop"
    exit 1
} elseif ($JobAssignment -eq $true) {
    Write-Host "JobAssignment.exe is in C:\Users\Public\Desktop"
    exit 0
}