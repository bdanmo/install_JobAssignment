try {
    #copy JobAssignment.exe from CWD to C:\Users\Public\Desktop
    Copy-Item -Path .\JobAssignment.exe -Destination "C:\Users\Public\Desktop\JobAssignment.exe"
    #check if JobAssignment.exe is in C:\Users\Public\Desktop
    $JobAssignment = Test-Path -Path "C:\Users\Public\Desktop\JobAssignment.exe"
    if ($JobAssignment -eq $false) {
        Write-Host "JobAssignment.exe is not in C:\Users\Public\Desktop"
        exit 1
    } elseif ($JobAssignment -eq $true) {
        Write-Host "JobAssignment.exe is in C:\Users\Public\Desktop"
        exit 0
    }
} catch {
    Write-Output $_.Exception.Message
}