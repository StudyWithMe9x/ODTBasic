$Path = $env:TEMP; $Installer = "setup.exe"; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest "https://officecdn.microsoft.com/pr/wsus/setup.exe" -OutFile $Path\$Installer;

$Path = $env:TEMP; $Installer = "ODTBasic.xml"; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest "https://raw.githubusercontent.com/StudyWithMe9x/ODTBasic/refs/heads/main/ODTBasic.xml" -OutFile $Path\$Installer;

$exePackageToInstall = "$Path\setup.exe"  

$arguments = "/configure $Path\ODTBasic.xml" 

Start-Process -FilePath $exePackageToInstall -ArgumentList $arguments -Wait

$Path = "$($env:USERPROFILE)\Downloads"; $Installer = "Ohook_Activation_AIO.cmd"; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest "https://raw.githubusercontent.com/massgravel/Microsoft-Activation-Scripts/refs/heads/master/MAS/Separate-Files-Version/Activators/Ohook_Activation_AIO.cmd" -OutFile $Path\$Installer;
<#Expand-Archive $Path\active.zip -DestinationPath $Path\active#>


start $Path\Ohook_Activation_AIO.cmd

