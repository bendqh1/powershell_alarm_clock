# powershell_alarm_clock

If you want built-in Windows sounds that don't require frequency/duration parameters, PowerShell can use the .NET System.Media.SystemSounds class.

```powershell
[System.Media.SystemSounds]::Beep.Play()
[System.Media.SystemSounds]::Asterisk.Play()
[System.Media.SystemSounds]::Exclamation.Play()
[System.Media.SystemSounds]::Hand.Play()
[System.Media.SystemSounds]::Question.Play()
```

`Exclamation` is probably the most suitable.

One can replace the entire beep section with:

```powershell
while ($true) {
    [System.Media.SystemSounds]::Exclamation.Play()
    Start-Sleep -Seconds 1
}
```

`SystemSounds` plays the **Windows system sound assigned to that sound type**. So unlike `Console.Beep(1000, 500)`, the user does not control pitch or duration in the script.

## Playing sound from a file

The following code can achieve that:

```powershell
(New-Object System.Media.SoundPlayer "C:\path\alarm.wav").PlayLooping()
```
