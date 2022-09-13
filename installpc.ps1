#set-executionpolicy unrestricted
#Set-ExecutionPolicy -Scope "CurrentUser" -ExecutionPolicy "Unrestricted"

Add-Type -AssemblyName System.speech
$blablabla = New-Object System.Speech.Synthesis.SpeechSynthesizer
$blablabla.Speak("script d'installation de poste")
$blablabla.Speak("Lancement du script")



Set-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLUA -Value 0

$blablabla.Speak("L'U A C à été désactivé")

$path="HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel"
$name="{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
$exist="Get-ItemProperty -Path $path -Name $name"
if ($exist)
{
    Set-ItemProperty -Path $path -Name $name -Value 0
}
Else
{
    New-ItemProperty -Path $path -Name $name -Value 0
}


$path="HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel"
$name="{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}"
$exist="Get-ItemProperty -Path $path -Name $name"
if ($exist)
{
    Set-ItemProperty -Path $path -Name $name -Value 0
}
Else
{
    New-ItemProperty -Path $path -Name $name -Value 0
}



$path="HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel"
$name="{59031a47-3f72-44a7-89c5-5595fe6b30ee}"
$exist="Get-ItemProperty -Path $path -Name $name"
if ($exist)
{
    Set-ItemProperty -Path $path -Name $name -Value 0
}
Else
{
    New-ItemProperty -Path $path -Name $name -Value 0
}



$path="HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel"
$name="{645FF040-5081-101B-9F08-00AA002F954E}"
$exist="Get-ItemProperty -Path $path -Name $name"
if ($exist)
{
    Set-ItemProperty -Path $path -Name $name -Value 0
}
Else
{
    New-ItemProperty -Path $path -Name $name -Value 0
}



$path="HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel"
$name="{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}"
$exist="Get-ItemProperty -Path $path -Name $name"
if ($exist)
{
    Set-ItemProperty -Path $path -Name $name -Value 0
}
Else
{
    New-ItemProperty -Path $path -Name $name -Value 0
}

$blablabla.Speak("les raccourcis ont été transféré sur le bureau")

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 
choco install googlechrome --version 100.0.4896.60 -y

Start-Process chrome.exe
Start-Sleep -Seconds 30
Stop-Process -name chrome

$blablabla.Speak("L'installation de Google Chrome à été effectué")

choco install firefox --version 98.0.2 -y

Start-Process firefox.exe
Start-Sleep -Seconds 30
Stop-Process -name firefox

$blablabla.Speak("L'installation de Firefox à été effectué")

choco install javaruntime --version 8.0.231 -y

$blablabla.Speak("L'installation de Java à été effectué")

choco install 7zip --version 21.7 -y

$blablabla.Speak("L'installation de 7 ZIP à été effectué")

choco install adobereader --version 2022.001.20085 -y

$blablabla.Speak("L'installation d'Adobe reader à été effectuée")

choco install treesizefree --version 4.5.3 -y

$blablabla.Speak("L'installation de TreeSize à été effectué")

choco install tightvnc

$blablabla.Speak("L'installation de VNC à été effectué")

choco install dotnet3.5 --version 3.5.20160716 -y

$blablabla.Speak("L'installation de Dotnet 3 point 5 à été effectué puis à été activé")

choco install vlc --version 3.0.16 -y

$blablabla.Speak("L'installation de VLC à été effectué")

choco install office2019proplus --version 2019.1808 -y

$blablabla.Speak("L'installation d'Office à été effectué")

choco install anydesk.install --version 7.0.7 -y

$blablabla.Speak("L'installation d'Anydesk à été effectué")

choco install teamviewer --version 15.28.5 -y

$blablabla.Speak("L'installation de Teamviewer à été effectué")

choco install adblockpluschrome --version 1.12.4 -y

$blablabla.Speak("L'installation de Adblock sur Google Chrome à été effectué")

choco install adblockplus-firefox --version 2.7.1 -y

$blablabla.Speak("L'installation de Adblock sur Firefox à été effectué")

Install-Module PSWindowsUpdate
Get-WindowsUpdate -AcceptAll -Install

$blablabla.Speak("Installation de la dernière mise à jour windows")


$blablabla.Speak("Le changement du nom de poste a été modifié en tant que PC Utilisateur, l'ordinateur va reboot. Je te laisse faire la suite")

Rename-Computer -NewName "PC-Utilisateur" -LocalCredential localhostAdminUser -Restart  