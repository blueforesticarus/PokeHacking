VERSION 5.00
Begin VB.Form frmBMPImport 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Bitmap Import"
   ClientHeight    =   4035
   ClientLeft      =   4005
   ClientTop       =   1920
   ClientWidth     =   3990
   Icon            =   "frmBMPImport.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4035
   ScaleWidth      =   3990
   ShowInTaskbar   =   0   'False
   Tag             =   "2001"
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   2108
      TabIndex        =   4
      Tag             =   "2006"
      Top             =   3480
      Width           =   1335
   End
   Begin VB.PictureBox SprShow 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      ForeColor       =   &H80000008&
      Height          =   1815
      Left            =   1328
      ScaleHeight     =   1785
      ScaleWidth      =   1305
      TabIndex        =   5
      Top             =   240
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "&Save"
      Enabled         =   0   'False
      Height          =   375
      Left            =   548
      TabIndex        =   3
      Tag             =   "2005"
      Top             =   3480
      Width           =   1335
   End
   Begin VB.CommandButton cmdLoad 
      Caption         =   "&Load sprite"
      Height          =   375
      Left            =   308
      TabIndex        =   0
      Tag             =   "2002"
      Top             =   2520
      Width           =   1455
   End
   Begin VB.CheckBox ImportPal 
      Caption         =   "Import Palette"
      Enabled         =   0   'False
      Height          =   255
      Left            =   2108
      TabIndex        =   2
      Tag             =   "2004"
      Top             =   2760
      Width           =   1815
   End
   Begin VB.CheckBox ImportPic 
      Caption         =   "Import Image"
      Enabled         =   0   'False
      Height          =   255
      Left            =   2108
      TabIndex        =   1
      Tag             =   "2003"
      Top             =   2400
      Value           =   1  'Checked
      Width           =   1815
   End
End
Attribute VB_Name = "frmBMPImport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim sResult As String

Private Sub cmdLoad_Click()
Dim CDBMP As New clsCommonDialog
Dim Palette As Integer
Dim Width As String
Dim Height As String
Dim ErrorPalette As Boolean
Dim ErrorWidth As Boolean
Dim ErrorHeight As Boolean

ErrorPalette = False
ErrorWidth = False
ErrorHeight = False

On Error Resume Next

SprShow.Visible = False
ImportPic.Enabled = False
ImportPal.Enabled = False
cmdSave.Enabled = False

sResult = CDBMP.ShowOpen(Me.hWnd, LoadResString(4001), , "Bitmaps (*.bmp)|*.bmp", FILEMUSTEXIST Or PATHMUSTEXIST Or HIDEREADONLY)

If LenB(sResult) = 0 Then Exit Sub

Palette = GetColors(CDBMP.FileName)
If Palette <> 16 Then
ErrorPalette = True
End If
Height = GetHeight(CDBMP.FileName)
If Height <> frmOverworldEditor.HeightB Then
ErrorHeight = True
End If
Width = GetWidth(CDBMP.FileName)
If Width <> frmOverworldEditor.WidthB Then
ErrorWidth = True
End If

If GetError(ErrorPalette, ErrorWidth, ErrorHeight) = True Then
    MsgBox LoadResString(4002) & vbCrLf & LoadError, vbCritical
    Exit Sub
End If

SprShow.Visible = True
ImportPic.Enabled = True
ImportPal.Enabled = True
cmdSave.Enabled = True

Resize SprShow, sResult, App.Path & "\temp.bmp", Width * 2, Height * 2
SprShow.Left = (frmBMPImport.Width - Width * 2) / 2 - ((920 * Width) / 64)
Kill App.Path & "\temp.bmp"
End Sub

Private Sub Sprite_Load()
    If Val(frmOverworldEditor.txtSpriteIndex.Text) >= 0 And Val(frmOverworldEditor.txtSpriteIndex.Text) <= bytSpriteMax Then
        frmOverworldEditor.LoadSpriteStructure Val(frmOverworldEditor.txtSpriteIndex.Text), Val(frmOverworldEditor.txtSpriteFrame.Text)
    End If
End Sub

Private Sub cmdSave_Click()
If ImportPic.Value = 1 Then
BMP2GBA sResult, frmOverworldEditor.strCurrentROM, frmOverworldEditor.SpriteOff, frmOverworldEditor.WidthB, frmOverworldEditor.HeightB
End If

If ImportPal.Value = 1 Then
PalImport frmOverworldEditor.strCurrentROM, frmOverworldEditor.PaletteOffset - 1, sResult
End If

Call Sprite_Load

Unload Me
Changed = False

End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub Form_Load()
LoadResStrings Me
End Sub
