Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1")

URL = "https://github.com/Git-Pikakid98/pikakid98-launcher/releases/download/Dev_28-10-2022/Pikakid98.Launcher.exe"
objWinHttp.open "GET", URL, False
objWinHttp.send ""

SaveBinaryData "Launcher-Dev\Pikakid98.Launcher.exe",objWinHttp.responseBody

Function SaveBinaryData(FileName, Data)

' adTypeText for binary = 1
Const adTypeText = 1
Const adSaveCreateOverWrite = 2

' Create Stream object
Dim BinaryStream
Set BinaryStream = CreateObject("ADODB.Stream")

' Specify stream type - we want To save Data/string data.
BinaryStream.Type = adTypeText

' Open the stream And write binary data To the object
BinaryStream.Open
BinaryStream.Write Data

' Save binary data To disk
BinaryStream.SaveToFile FileName, adSaveCreateOverWrite

End Function