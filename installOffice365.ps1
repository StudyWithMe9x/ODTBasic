$Path = $env:TEMP; $Installer = "setup.exe"; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest "https://officecdn.microsoft.com/pr/wsus/setup.exe" -OutFile $Path\$Installer;

$Path = $env:TEMP; $Installer = "ODTBasic.xml"; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest "https://raw.githubusercontent.com/StudyWithMe9x/ODTBasic/refs/heads/main/ODTBasic.xml" -OutFile $Path\$Installer;

$exePackageToInstall = "$Path\setup.exe"  

$arguments = "/configure $Path\ODTBasic.xml" 

Start-Process -FilePath $exePackageToInstall -ArgumentList $arguments -Wait

$Path = "$($env:USERPROFILE)\Downloads"; $Installer = "active.zip"; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest "https://github.com/massgravel/Microsoft-Activation-Scripts/archive/refs/heads/master.zip" -OutFile $Path\$Installer;
<#Expand-Archive $Path\active.zip -DestinationPath $Path\active#>


start $Path\active\Microsoft-Activation-Scripts-master\MAS\All-In-One-Version-KL\MAS_AIO.cmd

