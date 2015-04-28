Attribute VB_Name = "BMPSupport"
Private Type BITMAPINFOHEADER
    biSize            As Long
    biWidth           As Long
    biHeight          As Long
    biPlanes          As Integer
    biBitCount        As Integer
    biCompression     As Long
    biSizeImage       As Long
    biXPelsPerMeter   As Long
    biYPelsPerMeter   As Long
    biClrUsed         As Long
    biClrImportant    As Long
End Type

Dim data As Byte
Dim a As Integer
Dim b As Integer
Dim c As Integer
Dim d As Integer

Public Function BMP2GBA(BitMapPfad As String, GBAPfad As String, Offset As Long, Width As Integer, Height As Integer)
Dim Frei1 As Integer
Dim Frei2 As Integer
Dim BMPOff As Long
Dim SpeicherS As String

BMPOff = (118 + ((Width * Height) / 2)) - (Width / 2)
Frei1 = FreeFile
Open BitMapPfad For Binary As #Frei1

Frei2 = FreeFile
Open GBAPfad For Binary As #Frei2

a = 1
b = 1
c = 1
d = 1
Do
Get #Frei1, BMPOff + b, data
SpeicherS = Hex$(data)
If Len(SpeicherS) = 1 Then
SpeicherS = 0 & SpeicherS
End If
SpeicherS = Right$(SpeicherS, 1) & Left$(SpeicherS, 1)
data = Val("&H" & SpeicherS)
Put #Frei2, Offset + a, data
a = a + 1
b = b + 1
If b > 4 Then
b = 1
BMPOff = BMPOff - (Width / 2)
c = c + 1
End If
If c > 8 Then
c = 1
BMPOff = BMPOff + ((8 * Width) / 2) + 4
d = d + 1
End If
If d > (Width / 8) Then
d = 1
BMPOff = BMPOff - ((Width / 2) + 4) - ((8 * Width) / 2) + 4
End If
Loop Until a > (Width * Height) / 2

Close #Frei1
Close #Frei2
End Function

Public Function GetColors(BMPPfad As String)
Dim ff As Integer
Dim FileHeader As BITMAPFILEHEADER
Dim InfoHeader As BITMAPINFOHEADER

ff = FreeFile

On Error GoTo fileerr

Open BMPPfad For Binary Access Read As #ff
    Get #ff, , FileHeader
    Get #ff, , InfoHeader
Close #ff

fileerr:
GetColors = Format(2 ^ InfoHeader.biBitCount, "#,###")
End Function

Public Function GetWidth(BMPPfad As String)
Dim ff As Integer
Dim FileHeader As BITMAPFILEHEADER
Dim InfoHeader As BITMAPINFOHEADER

ff = FreeFile

On Error GoTo fileerr

Open BMPPfad For Binary Access Read As #ff
    Get #ff, , FileHeader
    Get #ff, , InfoHeader
Close #ff

fileerr:
GetWidth = InfoHeader.biWidth
End Function

Public Function GetHeight(BMPPfad As String)
Dim ff As Integer
Dim FileHeader As BITMAPFILEHEADER
Dim InfoHeader As BITMAPINFOHEADER

ff = FreeFile

On Error GoTo fileerr

Open BMPPfad For Binary Access Read As #ff
    Get #ff, , FileHeader
    Get #ff, , InfoHeader
Close #ff

fileerr:
GetHeight = InfoHeader.biHeight
End Function

Public Function BMPExport(BMPPfad As String, GBAPfad As String, SprOff As Long, Height As Integer, Width As Integer, PalOff As Long)
Dim i As Integer
Dim j As Integer
Dim k As Integer
Dim l As Integer
Dim m As Integer
Dim FreieNr1 As Integer
Dim FreieNr2 As Integer
Dim PalBytes As String
Dim PalSpeicher As String
Dim PalRGB As String
Dim SprBytes As String
Dim SprSpeicher As String
Dim DaOff As Long

FreieNr1 = FreeFile

Open BMPPfad For Output As #FreieNr1
Print #FreieNr1, "BMv"
Close #FreieNr1

Open BMPPfad For Binary As #FreieNr1

Put #FreieNr1, 4, 7
Put #FreieNr1, 11, 118
Put #FreieNr1, 15, 40
Put #FreieNr1, 19, Width
Put #FreieNr1, 23, Height
Put #FreieNr1, 27, 1
Put #FreieNr1, 29, 4
Put #FreieNr1, 35, 128
Put #FreieNr1, 36, 7
Put #FreieNr1, 47, 16


FreieNr2 = FreeFile
Open GBAPfad For Binary As #FreieNr2

i = 0
j = 1
k = 0
DaOff = 54
Do
Get #FreieNr2, PalOff + i, data
PalSpeicher = Hex$(data)
If Len(PalSpeicher) = 1 Then
PalSpeicher = 0 & PalSpeicher
End If
PalBytes = PalSpeicher

Get #FreieNr2, PalOff + j, data
PalSpeicher = Hex$(data)
If Len(PalSpeicher) = 1 Then
PalSpeicher = 0 & PalSpeicher
End If
PalBytes = PalBytes & PalSpeicher
PalRGB = GB2RGB(PalBytes)

k = k + 1
data = Val("&H" & Left$(PalRGB, 2))
Put #FreieNr1, DaOff + k, data

k = k + 1
PalRGB = Right$(PalRGB, 4)

data = Val("&H" & Left$(PalRGB, 2))
Put #FreieNr1, DaOff + k, data
k = k + 1
data = Val("&H" & Right$(PalRGB, 2))
Put #FreieNr1, DaOff + k, data

If k >= 3 Then
k = 0
DaOff = DaOff + 4
End If

i = i + 2
j = i + 1
Loop Until DaOff > 114

i = 1
Do
Put #FreieNr1, 118 + i, 0
i = i + 1
Loop Until i = 256

i = 1
j = (((Width * Height) / 2) - (Width / 2))
k = 0
l = 0
m = 0
n = 0
Do
Get #FreieNr2, SprOff + i, data

SprSpeicher = Hex$(data)
If Len(SprSpeicher) = 1 Then
SprSpeicher = "0" & SprSpeicher
End If
SprBytes = Right$(SprSpeicher, 1) & Left$(SprSpeicher, 1)

data = Val("&H" & SprBytes)
Put #FreieNr1, 119 + j, data

k = k + 1
j = j + 1
i = i + 1

If k = 4 Then
k = 0
j = j - ((Width / 2) + 4)
l = l + 1
End If

If l = 8 Then
l = 0
j = j + (((8 * Width) / 2) + 4)
m = m + 1
End If

If m = (Width / 8) Then
m = 0
j = j - ((Width * 4) + (Width / 2))
n = n + 1
End If

Loop Until n = Height / 8
Close #FreieNr2
Close #FreieNr1

End Function

Public Function PalImport(GBAPfad As String, PalOffset As Long, BMPPfad As String)
Dim speicher As String
Dim i As Integer
Dim j As Integer
Dim PalIndex As Byte
Dim Leer1 As Integer
Dim Leer2 As Integer
Dim data As Byte
Dim FarbSpeicher As String
Dim FarbBytes As String
Dim RGBPalette As String
Dim GBAPalette As String

Leer1 = FreeFile

Open BMPPfad For Binary As #Leer1
Leer2 = FreeFile
Open GBAPfad For Binary As #Leer2

i = 1
j = 1
PalIndex = 1
Do

Get #Leer1, 54 + i, data
FarbSpeicher = Right$("0" & Hex$(data), 2)
FarbBytes = FarbSpeicher
i = i + 1
Get #Leer1, 54 + i, data
FarbSpeicher = Right$("0" & Hex$(data), 2)
FarbBytes = FarbSpeicher & FarbBytes
i = i + 1
Get #Leer1, 54 + i, data
FarbSpeicher = Right$("0" & Hex$(data), 2)
FarbBytes = FarbSpeicher & FarbBytes
i = i + 2
RGBPalette = FarbBytes
Red = Val("&H" & Left$(RGBPalette, 2))
RGBPalette = Right$(RGBPalette, 4)
Green = Val("&H" & Left$(RGBPalette, 2))
Blue = Val("&H" & Right$(RGBPalette, 2))
speicher = Hex$((Blue \ 8) * 1024 + (Green \ 8) * 32 + (Red \ 8))

If Len(speicher) < 4 Then speicher = Right$("000" & speicher, 4)

GBAPalette = Right$("00" & Right$(speicher, 2) & Left$(speicher, 2), 4)

data = Val("&H" & Left$(GBAPalette, 2))
Put #Leer2, PalOffset + j, data

data = Val("&H" & Right$(GBAPalette, 2))
Put #Leer2, PalOffset + 1 + j, data

j = j + 2
PalIndex = PalIndex + 1
Loop Until PalIndex > 16

Close #Leer1
Close #Leer2
End Function
