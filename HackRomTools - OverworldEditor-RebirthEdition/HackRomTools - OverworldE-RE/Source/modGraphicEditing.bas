Attribute VB_Name = "modGraphicEditing"
Option Explicit

Public LoadError As String

Public Type SpriteHeader
    StarterBytes As Integer
    PaletteModifier As Byte
    Unknown1(2) As Byte
    SpriteDataSize As Integer
    Width As Integer
    Height As Integer
    Unknown2 As Byte
    Unknown3 As Byte
    Unknown4 As Integer
    Pointer1 As Long
    Pointer2 As Long
    Pointer3 As Long
    SpriteHeader2Pointer As Long
    Pointer5 As Long
End Type

Public Type SpriteHeader2
    SpritePointer As Long
    SpriteDataSize As Integer
    Unknown As Integer
End Type

Public Type PaletteHeader
    DataPointer As Long
    Index As Byte
    UnknownData(2) As Byte
End Type


Public Type BITMAPINFOHEADER
    biSize As Long
    biWidth As Long
    biHeight As Long
    biPlanes As Integer
    biBitCount As Integer
    biCompression As Long
    biSizeImage As Long
    biXPelsPerMeter As Long
    biYPelsPerMeter As Long
    biClrUsed As Long
    biClrImportant As Long
End Type

Public Type BITMAPINFO
    bmiHeader As BITMAPINFOHEADER
    bmiColor0 As Long
    bmiColor1 As Long
    bmiColor2 As Long
End Type

Public Type BITMAPFILEHEADER
    bfType As Integer
    bfSize As Long
    bfReserved1 As Integer
    bfReserved2 As Integer
    bfOffBits As Long
End Type


Public Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Public Declare Function StretchDIBits Lib "GDI32" (ByVal hDC As Long, ByVal X As Long, ByVal Y As Long, ByVal dx As Long, ByVal dy As Long, ByVal SrcX As Long, ByVal SrcY As Long, ByVal wSrcWidth As Long, ByVal wSrcHeight As Long, lpBits As Any, lpBitsInfo As BITMAPINFO, ByVal wUsage As Long, ByVal dwRop As Long) As Long

Public Function ReadINI(ByVal Section As String, ByVal KeyName As String, ByVal FileName As String) As String
    Dim sRet As String
    sRet = String(256, vbNullChar)
    ReadINI = Left$(sRet, GetPrivateProfileString(Section, ByVal KeyName, "", sRet, Len(sRet), FileName))
End Function

Public Sub Blit32(Buffer() As Long, ByRef pic As PictureBox, imagewidth As Long, imageheight As Long)
    If imagewidth = 0 Or imageheight = 0 Then Exit Sub
    Dim bi As BITMAPINFO
    With bi.bmiHeader
        .biWidth = imagewidth
        .biHeight = -imageheight
        .biSize = 40
        .biBitCount = 32
        .biPlanes = 1
    End With
    If pic.ScaleMode <> vbPixels Then pic.ScaleMode = vbPixels
    StretchDIBits pic.hDC, 0, 0, pic.ScaleWidth, pic.ScaleHeight, 0, 0, imagewidth, imageheight, Buffer(0), bi, 0, vbSrcCopy
End Sub

Public Function Colour15To24(ByVal ColourData As Integer) As Long
    Dim R As Byte, G As Byte, b As Byte
    R = ((ColourData And 31) / 31) * &HFF
    G = (((ColourData \ 32) And 31) / 31) * &HFF
    b = (((ColourData \ 1024) And 31) / 31) * &HFF
    Colour15To24 = CLng(b) + (256 * CLng(G)) + (65536 * CLng(R))
End Function

Public Function Colour15To24RGB(ByVal ColourData As Integer) As Long
    Dim R As Byte, G As Byte, b As Byte
    R = ((ColourData And 31) / 31) * &HFF
    G = (((ColourData \ 32) And 31) / 31) * &HFF
    b = (((ColourData \ 1024) And 31) / 31) * &HFF
    Colour15To24RGB = CLng(R) + (256 * CLng(G)) + (65536 * CLng(b))
End Function

Public Function FileExists(sFileName As String) As Boolean
    If Len(sFileName$) = 0 Then
        FileExists = False
        Exit Function
    End If
    If Len(Dir$(sFileName$)) Then
        FileExists = True
    Else
        FileExists = False
    End If
End Function

Public Sub Resize(ByVal oPicBox As PictureBox, _
  ByVal sFile As String, ByVal sNewFile As String, _
  ByVal nWidth As Long, ByVal nHeight As Long)

  With oPicBox
    .BorderStyle = 0
    .ScaleMode = vbPixels
    .Width = .Parent.ScaleX(nWidth, vbPixels, .Parent.ScaleMode)
    .Height = .Parent.ScaleY(nHeight, vbPixels, .Parent.ScaleMode)
    .Cls
    .PaintPicture LoadPicture(sFile), 0, 0, nWidth, nHeight
    SavePicture .Image, sNewFile
    .BorderStyle = 1
  End With
End Sub

Function GB2RGB(GBPalette As String)
Dim Red As String
Dim Green As String
Dim Blue As String

Dim speicher As String
Dim speicherL As Long
speicherL = Val("&H" & Right$(GBPalette, 2) & Left$(GBPalette, 2))
speicher = Dual(speicherL)
Blue = Left$(speicher, 5)
speicher = Right$(speicher, 10)
Green = Left$(speicher, 5)
Red = Right$(speicher, 5)


Red = BinToDecI(Red)
Red = Round((Red * 255) / 31)
Green = BinToDecI(Green)
Green = Round((Green * 255) / 31)
Blue = BinToDecI(Blue)
Blue = Round((Blue * 255) / 31)

Red = Hex$(Red)
Green = Hex$(Green)
Blue = Hex$(Blue)
    
Red = Right$("0" & Red, 2)
Green = Right$("0" & Green, 2)
Blue = Right$("0" & Blue, 2)

GB2RGB = Blue & Green & Red
End Function

Function Dual(ByVal vValue As Variant) As String
  vValue = CVar(vValue)
  
  If Not IsNumeric(vValue) Then
    Dual = "Value is non-numerical!"
    Exit Function
  ElseIf vValue > 999999999 Then
    Dual = "Number is too high!"
    Exit Function
  End If
  
  Do
    If vValue Mod 2 = 0 Then
      Dual = "0" & Dual
    Else
      Dual = "1" & Dual
    End If
    vValue = vValue \ 2
  Loop While vValue > 0
  
  Dual = Format(Dual, "000000000000000")
End Function

Function Round(ByVal Number As Double, Optional ByVal NumDigitsAfterDecimal As Integer = 0) As Double
    Round = Int(Number * 10 ^ NumDigitsAfterDecimal + 0.5) / 10 ^ NumDigitsAfterDecimal
End Function

Public Sub SetBitI(Value As Integer, ByVal Position As Byte)
    Select Case Position
        Case 0 To 14
            Value = Value Or 2 ^ Position
        Case 15
            Value = Value Or &H8000
        Case Else
            Err.Raise 6
    End Select
End Sub

Public Function BinToDecI(Bin As String) As Integer
    Dim i As Integer
    Dim nDec As Integer
    Dim nPos As Integer

    If Len(Bin) > 16 Then
        Err.Raise 6
    Else
        For i = Len(Bin) To 1 Step -1
            If Mid$(Bin, i, 1) = "1" Then
                SetBitI nDec, nPos
            End If
            nPos = nPos + 1
        Next
        BinToDecI = nDec
    End If
End Function

Public Function GetError(Color As Boolean, Width As Boolean, Height As Boolean) As Boolean

If Color = True Then
  If Width = True Then
    If Height = True Then
    GetError = True
    LoadError = LoadResString(2100) & vbNewLine & LoadResString(2101)
    Exit Function
    End If
    GetError = True
    LoadError = LoadResString(2102) & vbNewLine & LoadResString(2101)
    Exit Function
  End If
  If Height = True Then
    GetError = True
    LoadError = LoadResString(2103) & vbNewLine & LoadResString(2101)
    Exit Function
  End If
  GetError = True
  LoadError = LoadResString(2104)
  Exit Function
End If

If Width = True Then
  If Height = True Then
    GetError = True
    LoadError = LoadResString(2100)
    Exit Function
  End If
  GetError = True
  LoadError = LoadResString(2102)
  Exit Function
End If

If Height = True Then
  GetError = True
  LoadError = LoadResString(2103)
  Exit Function
End If
End Function
