; This script is best executed by Meddy's "Make" utility.

#define MyAppVersion "1.6.1"
#define MyAppName "Meddy"
#define MyAppExeName "Meddy.exe"
#define MyAppPublisher "APL Team Ltd"
#define MyAppURL "http://github.com/aplteam/Meddy"
#define MyAppIcoName "Meddy2.ico"
#define MyBlank " "
#define TargetDir "Dist\"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
AppId={{8CE7BDB0-E90D-4B09-8E2A-221C11643A3A}

AppName="{#MyAppName}"
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}{#MyBlank}{#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf32}\{#MyAppPublisher}\{#MyAppName}
DefaultGroupName={#MyAppPublisher}\{#MyAppName}
AllowNoIcons=yes
;OutputDir={src}\{#TargetDir}
OutputDir={#TargetDir}
OutputBaseFilename="SetUp_{#MyAppName}"
Compression=lzma
SolidCompression=yes
SetupIconFile={#MyAppIcoName}
UninstallDisplayIcon={app}\{#MyAppIcoName}


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "License";

[Registry]
Root: HKLM32; Subkey: "Software\{#MyAppPublisher}"; Flags: uninsdeletekeyifempty
Root: HKLM32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}"; Flags: uninsdeletekey
Root: HKLM32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}"; ValueType: string; ValueName: "RecentFiles"; ValueData: ""; Flags: uninsdeletekey
Root: HKCR;   Subkey: ".md"; ValueType: string; ValueName: ""; ValueData: "markdownfile"; Flags: uninsdeletevalue; Tasks: DefaultApp
Root: HKCR;   Subkey: "markdownfile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletevalue; Tasks: DefaultApp
Root: HKLM32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}\MainForm"; ValueType: string; ValueName: "Splitter1Posn"; ValueData: ""; Flags: uninsdeletekey
Root: HKLM32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}\MainForm"; ValueType: string; ValueName: "Splitter2Posn"; ValueData: ""; Flags: uninsdeletekey
Root: HKLM32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}"; ValueType: dword; ValueName: "FontSize"; ValueData: 17; Flags: uninsdeletekey
Root: HKLM32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}"; ValueType: string; ValueName: "RecentFiles"; ValueData: ""; Flags: uninsdeletekey
Root: HKLM32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}\Preferences"; ValueType: dword; ValueName: "FirstFlag"; ValueData: 1; Flags: uninsdeletekey
Root: HKLM32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}\Preferences"; ValueType: dword; ValueName: "SaveHTML"; ValueData: 1; Flags: uninsdeletekey

[Dirs]
Name: "{commonappdata}\{#MyAppName}"; Permissions: users-modify

[Files]
; Source: "MarkAPL.dyalog"; DestDir: "{commonappdata}\{#MyAppName}";
Source: "MarkAPL.html"; DestDir: "{app}";
Source: "MarkAPL_CheatSheet.html"; DestDir: "{app}";
Source: "LeanPubExtensions.html"; DestDir: "{app}";
Source: "QuickIntro.html"; DestDir: "{app}";
Source: "Styles.html"; DestDir: "{app}";
Source: "CSS/MarkAPL_print.css"; DestDir: "{app}/CSS";
Source: "CSS/MarkAPL_screen.css"; DestDir: "{app}/CSS";
Source: "CSS/BlackOnWhite_print.css"; DestDir: "{app}/CSS";
Source: "CSS/BlackOnWhite_screen.css"; DestDir: "{app}/CSS";
Source: "bridge160_unicode.dll"; DestDir: "{app}";
Source: "dyalognet.dll"; DestDir: "{app}";
Source: "{#MyAppExeName}"; DestDir: "{app}";
Source: "ReadMe.html"; DestDir: "{app}";
Source: "Meddy2.ico"; DestDir: "{app}";
Source: "app.ini.remove_me"; DestDir: "{app}"; DestName:"app.ini"; Flags: onlyifdoesntexist;
Source: {#MyAppIcoName}; DestDir: "{app}";
Source: "C:\Windows\Fonts\apl385.ttf"; DestDir: "{fonts}"; FontInstall: "APL385 Unicode"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "LICENSE"; DestDir: "{app}"
; NOTE: Don't use "Flags: ignoreversion" on any shared system files


; ----------- During beta phase only:
;Source: "Conga*.dll"; DestDir: "{app}";
; -----------

[Icons]
Name: "{group}\Start Meddy"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}\";  IconFilename: "{app}\{#MyAppIcoName}" 
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\{#MyAppIcoName}"; Tasks: desktopicon

[Run]
Filename: "{app}\ReadMe.html"; Description: "View the README file"; Flags: postinstall shellexec skipifsilent
Filename: "{app}\{#MyAppExeName}"; Description: "Launch Meddy"; Flags: postinstall skipifsilent nowait


[Tasks]
Name: "DefaultApp"; Description: "Make Meddy the default application for any markdown (*.md) files";
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Code]