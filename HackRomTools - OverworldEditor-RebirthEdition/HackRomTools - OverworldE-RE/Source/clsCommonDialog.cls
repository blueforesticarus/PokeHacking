VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsCommonDialog"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private Declare Function GetOpenFileName Lib "COMDLG32.DLL" Alias "GetOpenFileNameA" (pOpenfilename As OPENFILENAME) As Long
Private Declare Function GetSaveFileName Lib "COMDLG32.DLL" Alias "GetSaveFileNameA" (pOpenfilename As OPENFILENAME) As Long

Private cdlg As OPENFILENAME
Private LastFileName As String
Private Type OPENFILENAME
  lStructSize       As Long
  hwndOwner         As Long
  hInstance         As Long
  lpstrFilter       As String
  lpstrCustomFilter As String
  nMaxCustFilter    As Long
  nFilterIndex      As Long
  lpstrFile         As String
  nMaxFile          As Long
  lpstrFileTitle    As String
  nMaxFileTitle     As Long
  lpstrInitialDir   As String
  lpstrTitle        As String
  Flags             As Long
  nFileOffset       As Integer
  nFileExtension    As Integer
  lpstrDefExt       As String
  lCustData         As Long
  lpfnHook          As Long
  lpTemplateName    As String
End Type

Private Const OFN_FILEMUSTEXIST = &H1000
Private Const OFN_HIDEREADONLY = &H4
Private Const OFN_PATHMUSTEXIST = &H800

Public Enum DialogFlags
  FILEMUSTEXIST = OFN_FILEMUSTEXIST
  HIDEREADONLY = OFN_HIDEREADONLY
  PATHMUSTEXIST = OFN_PATHMUSTEXIST
End Enum


Public Function ShowOpen(ByVal Form_hWnd As Long, ByVal Title As String, Optional ByVal InitDir As String = "", Optional ByVal Filter As String = "All Files (*.*)|*.*|", Optional Flags As DialogFlags = FILEMUSTEXIST Or PATHMUSTEXIST Or HIDEREADONLY) As String
'    Dim i As Integer
    Filter = Replace(Filter, "|", vbNullChar)
    If Right$(Filter, 1) <> vbNullChar Then Filter = Filter & vbNullChar
    If LenB(InitDir) = 0 Then InitDir = LastFileName
    
    With cdlg
        .lStructSize = Len(cdlg)
        .hwndOwner = Form_hWnd
        .hInstance = App.hInstance
        .lpstrFilter = Filter
        .lpstrFile = Space(254)
        .nMaxFile = 255
        .lpstrFileTitle = Space(254)
        .nMaxFileTitle = 255
        .lpstrInitialDir = InitDir
        .lpstrTitle = Title
        .Flags = Flags
    End With
    
    If GetOpenFileName(cdlg) Then
        ShowOpen = Trim$(cdlg.lpstrFile)
    Else
        ShowOpen = vbNullString
    End If
       
    If LenB(ShowOpen) > 0 Then LastFileName = ShowOpen
End Function

Public Function ShowSave(Filter As String, hWnd As Long, FileName As String, Optional Flags As DialogFlags = PATHMUSTEXIST) As String

    Dim Buffer As String
    Dim Result As Long
    Dim ComDlgOpenFileName As OPENFILENAME

    Buffer = FileName & String$(128 - Len(FileName), 0)
    
    Filter = Replace(Filter, "|", vbNullChar)
    If Right$(Filter, 1) <> vbNullChar Then Filter = Filter & vbNullChar

    With ComDlgOpenFileName
        .lStructSize = Len(ComDlgOpenFileName)
        .hwndOwner = hWnd
        .Flags = Flags
        .nFilterIndex = 1&
        .nMaxFile = Len(Buffer)
        .lpstrFile = Buffer
        .lpstrFilter = Filter
    End With

    Result = GetSaveFileName(ComDlgOpenFileName)

    If Result <> 0 Then
        ShowSave = Left$(ComDlgOpenFileName.lpstrFile, InStr(ComDlgOpenFileName.lpstrFile, vbNullChar) - 1)
    End If
End Function

Public Property Get FileName()
  FileName = LastFileName
End Property

