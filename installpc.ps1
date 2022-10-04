####################################à executer avant le script####################################
#set-executionpolicy unrestricted
#################################################################################################

$confirmation = Read-Host "Avez-vous installe la derniere version de Windows ? [y/n]"
while($confirmation -ne "y")
{
    if ($confirmation -eq 'n') {exit}
    $confirmation = Read-Host "Ready? [y/n]"
}

$confirmation = Read-Host "Le script est bien installe dans le C:/ ? [y/n]"
while($confirmation -ne "y")
{
    if ($confirmation -eq 'n') {exit}
    $confirmation = Read-Host "Ready? [y/n]"
}


########################Variables Voice########################

Add-Type -AssemblyName System.speech
$blablabla = New-Object System.Speech.Synthesis.SpeechSynthesizer
$blablabla.Speak("script d'installation de poste")
$blablabla.Speak("Lancement du script")

########################Variables Voice########################

########################Raccourcis vers le bureau########################

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

########################Raccourcis vers le bureau########################

########################Installation des software########################

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 

choco feature enable -n=allowGlobalConfirmation

Start-Sleep -Seconds 60

choco install googlechrome

Start-Process chrome.exe
Start-Sleep -Seconds 30
Stop-Process -name chrome

$blablabla.Speak("L'installation de Google Chrome à été effectué")

choco install firefox

Start-Process firefox.exe
Start-Sleep -Seconds 30
Stop-Process -name firefox

$blablabla.Speak("L'installation de Firefox à été effectué")

choco install javaruntime

$blablabla.Speak("L'installation de Java à été effectué")

choco install 7zip

$blablabla.Speak("L'installation de 7 ZIP à été effectué")

choco install adobereader

$blablabla.Speak("L'installation d'Adobe reader à été effectuée")

choco install treesizefree

$blablabla.Speak("L'installation de TreeSize à été effectué")

choco install notepadplusplus

$blablabla.Speak("L'installation de notepad à été effectué")

choco install vnc-viewer

$blablabla.Speak("L'installation de VNC à été effectué")

choco install dotnet3.5

$blablabla.Speak("L'installation de Dotnet 3 point 5 à été effectué puis à été activé")

choco install vlc

$blablabla.Speak("L'installation de VLC à été effectué")

choco install anydesk

$blablabla.Speak("L'installation d'Anydesk à été effectué")

choco install adblockpluschrome

$blablabla.Speak("L'installation de Adblock sur Google Chrome à été effectué")

choco install adblockplus-firefox

$blablabla.Speak("L'installation de Adblock sur Firefox à été effectué")

########################Installation des software########################

$blablabla.Speak("Téléchargement et installation des mises à jours windows, merci de bien vouloir valider les mises à jours proposées")

######Installation des MaJ Windows########

Install-Module PSWindowsUpdate

Get-WindowsUpdate 

Install-WindowsUpdate

######Installation des MaJ Windows########

######clean DD########

$blablabla.Speak("Lancement du nettoyage")
Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\*' -Name StateFlags0001 -ErrorAction SilentlyContinue | Remove-ItemProperty -Name StateFlags0001 -ErrorAction SilentlyContinue

New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Update Cleanup' -Name StateFlags0001 -Value 2 -PropertyType DWord

$blablabla.Speak("fichiers temporaires supprimés")
New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Files' -Name StateFlags0001 -Value 2 -PropertyType DWord

Start-Process -FilePath CleanMgr.exe -ArgumentList '/sagerun:1' -WindowStyle Hidden -Wait

$blablabla.Speak("Merci de patienter 5 minutes")
Get-Process -Name cleanmgr,dismhost -ErrorAction SilentlyContinue | Wait-Process

$UpdateCleanupSuccessful = $false
if (Test-Path $env:SystemRoot\Logs\CBS\DeepClean.log) {
    $UpdateCleanupSuccessful = Select-String -Path $env:SystemRoot\Logs\CBS\DeepClean.log -Pattern 'Total size of superseded packages:' -Quiet
}

######clean DD##########

$blablabla.Speak("Le changement du nom de poste a été modifié en tant que PC Utilisateur, l'ordinateur va reboot. Je te laisse faire la suite")

######Rename le pc####################

Rename-Computer -NewName "PC-Utilisateur" -LocalCredential localhostAdminUser -Restart  

######Rename le pc####################