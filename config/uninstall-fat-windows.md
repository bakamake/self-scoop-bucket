



















预装软件管理

PS C:\Users\bakam> get-AppxPackage  -AllUsers| Where-Object { $_.NonRemovable -eq $False }| Where-Object { $_.IsFramework -eq $False } | Where-Object { $_.PackageUserInformation -notlike "*Staged*" } | Select-Object Name

Name
----
Microsoft.ApplicationCompatibilityEnhancements
Microsoft.AVCEncoderVideoExtension
Microsoft.BingNews
Microsoft.BingWeather
Microsoft.GamingApp
Microsoft.GetHelp
Microsoft.HEIFImageExtension
Microsoft.HEVCVideoExtension
Microsoft.MicrosoftSolitaireCollection
Microsoft.MicrosoftStickyNotes
Microsoft.MPEG2VideoExtension
Microsoft.RawImageExtension
Microsoft.StorePurchaseApp
Microsoft.Todos
Microsoft.VP9VideoExtensions
Microsoft.WebpImageExtension
Microsoft.Windows.DevHome
Microsoft.WindowsAlarms
Microsoft.WindowsCalculator
Microsoft.WindowsFeedbackHub
Microsoft.WindowsSoundRecorder
Microsoft.WindowsTerminal
Microsoft.XboxGamingOverlay
Microsoft.XboxIdentityProvider
Microsoft.XboxSpeechToTextOverlay
MicrosoftCorporationII.QuickAssist
MicrosoftWindows.CrossDevice
Microsoft.MicrosoftEdge.Stable
Microsoft.OneDriveSync
Microsoft.Winget.Source
Microsoft.OutlookForWindows
Microsoft.WindowsStore
Microsoft.Windows.Photos
Microsoft.ScreenSketch
MicrosoftWindows.Client.WebExperience
NVIDIACorp.NVIDIAControlPanel
MicrosoftWindows.Voice.en-US.Jenny.1
Microsoft.LanguageExperiencePacken-US
Microsoft.WidgetsPlatformRuntime
Microsoft.PowerShell
Microsoft.WindowsNotepad

PS C:\Users\bakam> Get-AppxPackage -AllUsers *Microsoft.BingNews* | Remove-AppxPackage
PS C:\Users\bakam> get-AppxPackage  -AllUsers| Where-Object { $_.NonRemovable -eq $False }| Where-Object { $_.IsFramework -eq $False } | Where-Object { $_.PackageUserInformation -notlike "*Staged*" } | Select-Object Name

Name
----
Microsoft.ApplicationCompatibilityEnhancements
Microsoft.AVCEncoderVideoExtension
Microsoft.BingWeather
Microsoft.GamingApp
Microsoft.GetHelp
Microsoft.HEIFImageExtension
Microsoft.HEVCVideoExtension
Microsoft.MicrosoftSolitaireCollection
Microsoft.MicrosoftStickyNotes
Microsoft.MPEG2VideoExtension
Microsoft.RawImageExtension
Microsoft.StorePurchaseApp
Microsoft.Todos
Microsoft.VP9VideoExtensions
Microsoft.WebpImageExtension
Microsoft.Windows.DevHome
Microsoft.WindowsAlarms
Microsoft.WindowsCalculator
Microsoft.WindowsFeedbackHub
Microsoft.WindowsSoundRecorder
Microsoft.WindowsTerminal
Microsoft.XboxGamingOverlay
Microsoft.XboxIdentityProvider
Microsoft.XboxSpeechToTextOverlay
MicrosoftCorporationII.QuickAssist
MicrosoftWindows.CrossDevice
Microsoft.MicrosoftEdge.Stable
Microsoft.OneDriveSync
Microsoft.Winget.Source
Microsoft.OutlookForWindows
Microsoft.WindowsStore
Microsoft.Windows.Photos
Microsoft.ScreenSketch
MicrosoftWindows.Client.WebExperience
NVIDIACorp.NVIDIAControlPanel
MicrosoftWindows.Voice.en-US.Jenny.1
Microsoft.LanguageExperiencePacken-US
Microsoft.WidgetsPlatformRuntime
Microsoft.PowerShell
Microsoft.WindowsNotepad

```
Winget uninstall "Windows Web Experience pack"
get-AppxPackage
```

