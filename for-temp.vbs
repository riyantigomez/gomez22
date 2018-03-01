'Place VBS script file anywhere
Dim objWshShl
Dim strTargetFolder
Dim objProgramsShortcut

Set objWshShl = WScript.CreateObject("WScript.Shell")
strTargetFolder = objWshShl.SpecialFolders("Programs") 
'Special Startup folder and link file name
Set objProgramsShortcut = objWshShl.CreateShortcut(strTargetFolder & "\Startup\amel.lnk")
objProgramsShortcut.TargetPath = "c:\Windows\Temp\xxx1.doc" '<<<< target path
objProgramsShortcut.Save


