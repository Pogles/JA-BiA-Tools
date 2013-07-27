; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "JABIA-Tools mod launcher for CF"
#define MyAppVersion "0.1a"
#define MyAppPublisher "JABIA-Tools Project"
#define MyAppURL "https://github.com/sbobovyc/JA-BiA-Tools"
#define MyAppExeName "JABIA_mod_launcher.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{65E4F998-75EA-4B0D-A3D6-095A12960FE5}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\Program Files (x86)\Steam\steamapps\common\Jagged Alliance Crossfire\
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputBaseFilename=jacf_mod_launcher_setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkedonce
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkedonce; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\sbobovyc\workspace\JA-BiA-Tools\src\experimental\vs12\JABIA\Release\JABIA_mod_launcher.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\sbobovyc\workspace\JA-BiA-Tools\src\experimental\vs12\JABIA\Release\JABIA_debug.dll"; DestDir: "{app}\mods\debugger"; Flags: ignoreversion 
Source: "C:\Users\sbobovyc\workspace\JA-BiA-Tools\src\experimental\vs12\JABIA\Release\JABIA_xpmod.dll"; DestDir: "{app}\mods\xpmod"; Flags: ignoreversion 
Source: "C:\Users\sbobovyc\workspace\JA-BiA-Tools\src\experimental\vs12\JABIA\Release\JABIA_loot_drop.dll"; DestDir: "{app}\mods\loot_drop"; Flags: ignoreversion 
Source: "C:\Users\sbobovyc\workspace\JA-BiA-Tools\src\experimental\vs12\JABIA\Release\JABIA_camera.dll"; DestDir: "{app}\mods\camera"; Flags: ignoreversion 
Source: "C:\Users\sbobovyc\workspace\JA-BiA-Tools\src\experimental\vs12\JABIA\Release\JABIA_pathmod.dll"; DestDir: "{app}\mods\pathmod"; Flags: ignoreversion 
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon
