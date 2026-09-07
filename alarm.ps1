# =========================================
# SET THE ALARM TIME
# =========================================
$MINUTES = 1
$seconds = $MINUTES * 60
# =========================================

Clear-Host

Write-Host ""
Write-Host "=============================="
Write-Host "     POWERSHELL ALARM CLOCK"
Write-Host "=============================="
Write-Host ""
Write-Host "Alarm set for $MINUTES minute(s)."
Write-Host ""
Write-Host "Close this window to cancel."
Write-Host ""

Start-Sleep -Seconds $seconds

Write-Host ""
Write-Host "******************************"
Write-Host "           ALARM!"
Write-Host "******************************"
Write-Host ""

while ($true) {
    [Console]::Beep(1000, 500)
    [Console]::Beep(1500, 500)
    [Console]::Beep(2000, 500)
    Start-Sleep -Milliseconds 500
}
