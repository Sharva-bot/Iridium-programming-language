Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

repo = "C:\Users\Prafulla Gavalkar\Desktop\S++"
target = repo & "\iridium_editor.bat"
icon = repo & "\final_logo.ico"
desktop = shell.SpecialFolders("Desktop")
shortcutPath = desktop & "\Iridium Editor.lnk"

If Not fso.FileExists(target) Then
  WScript.Echo "Missing launcher: " & target
  WScript.Quit 1
End If

Set shortcut = shell.CreateShortcut(shortcutPath)
shortcut.TargetPath = target
shortcut.Arguments = ""
shortcut.WorkingDirectory = repo
shortcut.IconLocation = icon & ",0"
shortcut.WindowStyle = 1
shortcut.Description = "Launch the Iridium editor"
shortcut.Save

WScript.Echo "Created: " & shortcutPath
