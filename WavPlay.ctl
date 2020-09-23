VERSION 5.00
Begin VB.UserControl WavPlay 
   ClientHeight    =   390
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   405
   Picture         =   "WavPlay.ctx":0000
   ScaleHeight     =   390
   ScaleWidth      =   405
   ToolboxBitmap   =   "WavPlay.ctx":07AE
End
Attribute VB_Name = "WavPlay"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Private Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
Private Const SND_FILENAME = &H20000

Sub play(filename As String)
On Error Resume Next
Dim r As Long
r = sndPlaySound(filename, SND_FILENAME)
End Sub
