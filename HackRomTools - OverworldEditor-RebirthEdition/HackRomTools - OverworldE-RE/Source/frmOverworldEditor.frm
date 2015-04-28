VERSION 5.00
Begin VB.Form frmOverworldEditor 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Overworld Editor - Rebirth Edition"
   ClientHeight    =   8160
   ClientLeft      =   150
   ClientTop       =   540
   ClientWidth     =   6975
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmOverworldEditor.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   544
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   465
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox picViewSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   960
      Left            =   120
      MousePointer    =   99  'Custom
      ScaleHeight     =   64
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   32
      TabIndex        =   51
      Top             =   240
      Visible         =   0   'False
      Width           =   480
      Begin VB.Shape shpSelectedTile 
         BorderColor     =   &H000000FF&
         Height          =   240
         Left            =   0
         Top             =   0
         Width           =   240
      End
   End
   Begin VB.Frame grpSpriteHeader1 
      Caption         =   "Info1: Sprite Header"
      Height          =   2520
      Left            =   120
      TabIndex        =   25
      Tag             =   "1011"
      Top             =   5520
      Width           =   6735
      Begin VB.PictureBox Picture2 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   375
         Left            =   1620
         ScaleHeight     =   375
         ScaleWidth      =   975
         TabIndex        =   54
         Top             =   560
         Width           =   975
         Begin VB.CommandButton cmdPaletteChange 
            Caption         =   "Change"
            Enabled         =   0   'False
            Height          =   375
            Left            =   0
            TabIndex        =   55
            Tag             =   "1025"
            Top             =   0
            Width           =   975
         End
      End
      Begin VB.TextBox txtPaletteNumber 
         Enabled         =   0   'False
         Height          =   285
         Left            =   1080
         MaxLength       =   2
         TabIndex        =   14
         Text            =   "0"
         Top             =   610
         Width           =   375
      End
      Begin VB.Label Label16 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Unknown Data 2:"
         Height          =   195
         Left            =   240
         TabIndex        =   50
         Tag             =   "1019"
         Top             =   2160
         Width           =   1245
      End
      Begin VB.Label Label15 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Sprite Data Size: "
         Height          =   195
         Left            =   240
         TabIndex        =   49
         Tag             =   "1016"
         Top             =   1680
         Width           =   1245
      End
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Unknown Data 1:"
         Height          =   195
         Left            =   240
         TabIndex        =   48
         Tag             =   "1015"
         Top             =   1920
         Width           =   1245
      End
      Begin VB.Label lblSpriteHeight 
         BackStyle       =   0  'Transparent
         Height          =   225
         Left            =   1130
         TabIndex        =   47
         Top             =   1200
         Width           =   375
      End
      Begin VB.Label lblSpriteWidth 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   1130
         TabIndex        =   46
         Top             =   960
         Width           =   375
      End
      Begin VB.Label lblUnknownData 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   2040
         TabIndex        =   45
         Top             =   1920
         Width           =   735
      End
      Begin VB.Label lblSpriteDataSize 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   2280
         TabIndex        =   44
         Top             =   1680
         Width           =   495
      End
      Begin VB.Label lblSpriteNumber 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   1130
         TabIndex        =   43
         Top             =   360
         Width           =   375
      End
      Begin VB.Label lblUnknownData2 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   1860
         TabIndex        =   42
         Top             =   2160
         Width           =   855
      End
      Begin VB.Label lblStarterBytes 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   2280
         TabIndex        =   41
         Top             =   1440
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.Label lblUnknownPointer1 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   5100
         TabIndex        =   40
         Top             =   960
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label lblUnknownPointer2 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   5100
         TabIndex        =   39
         Top             =   1200
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label lblUnknownPointer3 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   5100
         TabIndex        =   38
         Top             =   1440
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label lblSpritePointer 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   5100
         TabIndex        =   37
         Top             =   720
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label lblUnknownPointer4 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   5100
         TabIndex        =   36
         Top             =   1680
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Sprite #:"
         Height          =   195
         Left            =   240
         TabIndex        =   35
         Tag             =   "1012"
         Top             =   360
         Width           =   645
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Starter Bytes:"
         Height          =   195
         Left            =   240
         TabIndex        =   34
         Tag             =   "1013"
         Top             =   1440
         Visible         =   0   'False
         Width           =   1020
      End
      Begin VB.Label Label7 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Unknown Pointer 1:"
         Height          =   195
         Left            =   3525
         TabIndex        =   33
         Tag             =   "1020"
         Top             =   960
         Visible         =   0   'False
         Width           =   1410
      End
      Begin VB.Label Label8 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Unknown Pointer 2:"
         Height          =   195
         Left            =   3525
         TabIndex        =   32
         Tag             =   "1021"
         Top             =   1200
         Visible         =   0   'False
         Width           =   1410
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Unknown Pointer 3:"
         Height          =   195
         Left            =   3525
         TabIndex        =   31
         Tag             =   "1022"
         Top             =   1440
         Visible         =   0   'False
         Width           =   1410
      End
      Begin VB.Label Label9 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Sprite Pointer:"
         Height          =   195
         Left            =   3900
         TabIndex        =   30
         Tag             =   "1023"
         Top             =   720
         Visible         =   0   'False
         Width           =   1035
      End
      Begin VB.Label Label10 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Unknown Pointer 4:"
         Height          =   195
         Left            =   3525
         TabIndex        =   29
         Tag             =   "1024"
         Top             =   1680
         Visible         =   0   'False
         Width           =   1410
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Palette #:"
         Height          =   195
         Left            =   240
         TabIndex        =   28
         Tag             =   "1014"
         Top             =   660
         Width           =   735
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Width:"
         Height          =   195
         Left            =   240
         TabIndex        =   27
         Tag             =   "1017"
         Top             =   960
         Width           =   480
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Height:"
         Height          =   195
         Left            =   240
         TabIndex        =   26
         Tag             =   "1018"
         Top             =   1200
         Width           =   525
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Loaded ROM"
      Height          =   615
      Left            =   120
      TabIndex        =   23
      Tag             =   "1001"
      Top             =   3480
      Width           =   6735
      Begin VB.Label lblCurrentGame 
         BackStyle       =   0  'Transparent
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   24
         Tag             =   "1002"
         Top             =   260
         Width           =   5175
      End
   End
   Begin VB.Frame grpNavigation 
      Caption         =   "Sprite Navigator"
      ForeColor       =   &H00000000&
      Height          =   1215
      Left            =   120
      TabIndex        =   9
      Tag             =   "1003"
      Top             =   4200
      Width           =   6735
      Begin VB.PictureBox Picture6 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   3600
         ScaleHeight     =   255
         ScaleWidth      =   255
         TabIndex        =   62
         Top             =   720
         Width           =   255
         Begin VB.CommandButton cmdSpriteFrameForward 
            Caption         =   ">"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   0
            TabIndex        =   63
            Top             =   0
            Width           =   255
         End
      End
      Begin VB.PictureBox Picture5 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   2640
         ScaleHeight     =   255
         ScaleWidth      =   255
         TabIndex        =   60
         Top             =   720
         Width           =   255
         Begin VB.CommandButton cmdSpriteFrameBack 
            Caption         =   "<"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   0
            TabIndex        =   61
            Top             =   0
            Width           =   255
         End
      End
      Begin VB.PictureBox Picture4 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   3600
         ScaleHeight     =   255
         ScaleWidth      =   255
         TabIndex        =   58
         Top             =   360
         Width           =   255
         Begin VB.CommandButton cmdIndexForward 
            Caption         =   ">"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   0
            TabIndex        =   59
            Top             =   0
            Width           =   255
         End
      End
      Begin VB.PictureBox Picture3 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   2640
         ScaleHeight     =   255
         ScaleWidth      =   255
         TabIndex        =   56
         Top             =   360
         Width           =   255
         Begin VB.CommandButton cmdIndexBack 
            Caption         =   "<"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   0
            TabIndex        =   57
            Top             =   0
            Width           =   255
         End
      End
      Begin VB.PictureBox Picture1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   615
         Left            =   3960
         ScaleHeight     =   615
         ScaleWidth      =   495
         TabIndex        =   52
         Top             =   360
         Width           =   495
         Begin VB.CommandButton cmdGo 
            Caption         =   "Go"
            Height          =   615
            Left            =   0
            TabIndex        =   53
            Tag             =   "1006"
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.TextBox txtSpriteFrame 
         Alignment       =   2  'Center
         Height          =   285
         Left            =   3000
         MaxLength       =   2
         TabIndex        =   13
         Text            =   "0"
         Top             =   720
         Width           =   495
      End
      Begin VB.TextBox txtSpriteIndex 
         Alignment       =   2  'Center
         Height          =   285
         Left            =   3000
         MaxLength       =   3
         TabIndex        =   12
         Text            =   "0"
         Top             =   360
         Width           =   495
      End
      Begin VB.Label lblFrame 
         AutoSize        =   -1  'True
         Caption         =   "Frame "
         Height          =   195
         Left            =   2040
         TabIndex        =   11
         Tag             =   "1005"
         Top             =   735
         Width           =   495
      End
      Begin VB.Label lblSpriteIndex 
         AutoSize        =   -1  'True
         Caption         =   "Index "
         Height          =   195
         Left            =   2040
         TabIndex        =   10
         Tag             =   "1004"
         Top             =   375
         Width           =   465
      End
   End
   Begin VB.PictureBox picMouseOverColor 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   5640
      ScaleHeight     =   465
      ScaleWidth      =   1185
      TabIndex        =   6
      Top             =   2625
      Width           =   1215
   End
   Begin VB.PictureBox picSelectPalette 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1920
      Left            =   6360
      MouseIcon       =   "frmOverworldEditor.frx":000C
      MousePointer    =   99  'Custom
      ScaleHeight     =   128
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   32
      TabIndex        =   2
      Top             =   240
      Width           =   480
      Begin VB.Line lnePaletteGrid 
         Index           =   7
         X1              =   16
         X2              =   16
         Y1              =   0
         Y2              =   128
      End
      Begin VB.Line lnePaletteGrid 
         Index           =   6
         X1              =   0
         X2              =   32
         Y1              =   112
         Y2              =   112
      End
      Begin VB.Line lnePaletteGrid 
         Index           =   5
         X1              =   0
         X2              =   32
         Y1              =   96
         Y2              =   96
      End
      Begin VB.Line lnePaletteGrid 
         Index           =   4
         X1              =   0
         X2              =   32
         Y1              =   80
         Y2              =   80
      End
      Begin VB.Line lnePaletteGrid 
         Index           =   3
         X1              =   0
         X2              =   32
         Y1              =   64
         Y2              =   64
      End
      Begin VB.Line lnePaletteGrid 
         Index           =   2
         X1              =   0
         X2              =   32
         Y1              =   48
         Y2              =   48
      End
      Begin VB.Line lnePaletteGrid 
         Index           =   1
         X1              =   0
         X2              =   32
         Y1              =   32
         Y2              =   32
      End
      Begin VB.Line lnePaletteGrid 
         Index           =   0
         X1              =   0
         X2              =   32
         Y1              =   16
         Y2              =   16
      End
      Begin VB.Shape shpPaletteBorder 
         Height          =   1920
         Left            =   0
         Top             =   0
         Width           =   480
      End
   End
   Begin VB.PictureBox picEditTile 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1920
      Left            =   4200
      MouseIcon       =   "frmOverworldEditor.frx":015E
      MousePointer    =   99  'Custom
      ScaleHeight     =   128
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   128
      TabIndex        =   0
      Top             =   240
      Width           =   1920
      Begin VB.Line lneTileEditGrid 
         Index           =   7
         X1              =   128
         X2              =   0
         Y1              =   16
         Y2              =   16
      End
      Begin VB.Line lneTileEditGrid 
         Index           =   13
         X1              =   128
         X2              =   0
         Y1              =   112
         Y2              =   112
      End
      Begin VB.Line lneTileEditGrid 
         Index           =   12
         X1              =   128
         X2              =   0
         Y1              =   96
         Y2              =   96
      End
      Begin VB.Line lneTileEditGrid 
         Index           =   11
         X1              =   128
         X2              =   0
         Y1              =   80
         Y2              =   80
      End
      Begin VB.Line lneTileEditGrid 
         Index           =   10
         X1              =   128
         X2              =   0
         Y1              =   64
         Y2              =   64
      End
      Begin VB.Line lneTileEditGrid 
         Index           =   9
         X1              =   128
         X2              =   0
         Y1              =   48
         Y2              =   48
      End
      Begin VB.Line lneTileEditGrid 
         Index           =   8
         X1              =   128
         X2              =   0
         Y1              =   32
         Y2              =   32
      End
      Begin VB.Line lneTileEditGrid 
         Index           =   6
         X1              =   112
         X2              =   112
         Y1              =   0
         Y2              =   128
      End
      Begin VB.Line lneTileEditGrid 
         Index           =   5
         X1              =   96
         X2              =   96
         Y1              =   0
         Y2              =   128
      End
      Begin VB.Line lneTileEditGrid 
         Index           =   4
         X1              =   80
         X2              =   80
         Y1              =   0
         Y2              =   128
      End
      Begin VB.Line lneTileEditGrid 
         Index           =   3
         X1              =   64
         X2              =   64
         Y1              =   0
         Y2              =   128
      End
      Begin VB.Line lneTileEditGrid 
         Index           =   2
         X1              =   48
         X2              =   48
         Y1              =   0
         Y2              =   128
      End
      Begin VB.Line lneTileEditGrid 
         Index           =   1
         X1              =   32
         X2              =   32
         Y1              =   0
         Y2              =   128
      End
      Begin VB.Line lneTileEditGrid 
         Index           =   0
         X1              =   16
         X2              =   16
         Y1              =   0
         Y2              =   128
      End
      Begin VB.Shape shpCanvasBorder 
         Height          =   1920
         Left            =   0
         Top             =   0
         Width           =   1920
      End
   End
   Begin VB.PictureBox picSelectedColor 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   4200
      ScaleHeight     =   465
      ScaleWidth      =   1185
      TabIndex        =   1
      Top             =   2625
      Width           =   1215
      Begin VB.Line Line1 
         X1              =   0
         X2              =   1200
         Y1              =   240
         Y2              =   240
      End
      Begin VB.Label lblPaletteIndex 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "Index: 00"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   0
         TabIndex        =   8
         Top             =   255
         Width           =   1215
      End
   End
   Begin VB.PictureBox SavePic 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   360
      Left            =   6600
      MousePointer    =   99  'Custom
      ScaleHeight     =   24
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   24
      TabIndex        =   19
      Top             =   3240
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Frame grpSpriteHeaderTwo 
      Caption         =   "Info2: Sprite Header"
      Height          =   1215
      Left            =   3120
      TabIndex        =   15
      Tag             =   "1007"
      Top             =   4200
      Visible         =   0   'False
      Width           =   3735
      Begin VB.Label Label6 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Unknown 1:"
         Height          =   195
         Left            =   1080
         TabIndex        =   22
         Tag             =   "1010"
         Top             =   840
         Width           =   855
      End
      Begin VB.Label Label5 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Data Size:"
         Height          =   195
         Left            =   1200
         TabIndex        =   21
         Tag             =   "1009"
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Sprite Pointer:"
         Height          =   195
         Left            =   900
         TabIndex        =   20
         Tag             =   "1008"
         Top             =   600
         Width           =   1035
      End
      Begin VB.Label lblUnknownHdr2 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   2100
         TabIndex        =   18
         Top             =   840
         Width           =   495
      End
      Begin VB.Label lblSpriteDataSizeHdr2 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   2100
         TabIndex        =   17
         Top             =   360
         Width           =   495
      End
      Begin VB.Label lblSpritePointerHdr2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Height          =   195
         Left            =   2100
         TabIndex        =   16
         Top             =   600
         Width           =   645
      End
   End
   Begin VB.Label lblMouseOverColor 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Mouse Over"
      Height          =   195
      Left            =   5790
      TabIndex        =   7
      Tag             =   "1104"
      Top             =   2370
      Width           =   870
   End
   Begin VB.Label lblSelectedColor 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Selected Color"
      Height          =   195
      Left            =   4200
      TabIndex        =   5
      Tag             =   "1103"
      Top             =   2370
      Width           =   1035
   End
   Begin VB.Label lblDrawingCanvas 
      BackStyle       =   0  'Transparent
      Caption         =   "Drawing Canvas"
      Height          =   255
      Left            =   4200
      TabIndex        =   4
      Tag             =   "1101"
      Top             =   0
      Width           =   1935
   End
   Begin VB.Label lblPallete 
      BackStyle       =   0  'Transparent
      Caption         =   "Palette"
      Height          =   255
      Left            =   6360
      TabIndex        =   3
      Tag             =   "1102"
      Top             =   0
      Width           =   615
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      HelpContextID   =   1
      Begin VB.Menu mnuOpen 
         Caption         =   "Open ROM..."
         HelpContextID   =   2
         Shortcut        =   ^O
      End
      Begin VB.Menu mnuSave 
         Caption         =   "Save ROM"
         Enabled         =   0   'False
         HelpContextID   =   3
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuSeperator1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuImportBitmap 
         Caption         =   "Import Bitmap..."
         Enabled         =   0   'False
         HelpContextID   =   4
         Shortcut        =   ^I
      End
      Begin VB.Menu mnuExportBitmap 
         Caption         =   "Export Bitmap..."
         Enabled         =   0   'False
         HelpContextID   =   5
         Shortcut        =   ^E
      End
      Begin VB.Menu mnuSeparator2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "Exit"
         HelpContextID   =   6
         Shortcut        =   ^Q
      End
   End
   Begin VB.Menu mnuEdit 
      Caption         =   "&Edit"
      HelpContextID   =   7
      Begin VB.Menu mnuUndo 
         Caption         =   "Undo"
         Enabled         =   0   'False
         HelpContextID   =   8
         Shortcut        =   ^Z
      End
      Begin VB.Menu mnuRedo 
         Caption         =   "Redo"
         Enabled         =   0   'False
         HelpContextID   =   9
         Shortcut        =   ^Y
      End
   End
   Begin VB.Menu mnuView 
      Caption         =   "&View"
      HelpContextID   =   10
      Begin VB.Menu mnuReloadSprite 
         Caption         =   "Reload sprite"
         Enabled         =   0   'False
         HelpContextID   =   11
         Shortcut        =   {F5}
      End
      Begin VB.Menu mnuSeparator3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPrevIndex 
         Caption         =   "Previous Index"
         Enabled         =   0   'False
         HelpContextID   =   12
      End
      Begin VB.Menu mnuNextIndex 
         Caption         =   "Next Index"
         Enabled         =   0   'False
         HelpContextID   =   13
      End
      Begin VB.Menu mnuSeparator4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPrevFrame 
         Caption         =   "Previous Frame"
         Enabled         =   0   'False
         HelpContextID   =   14
      End
      Begin VB.Menu mnuNextFrame 
         Caption         =   "Next Frame"
         Enabled         =   0   'False
         HelpContextID   =   15
      End
   End
   Begin VB.Menu mnuTools 
      Caption         =   "&Options"
      HelpContextID   =   16
      Begin VB.Menu mnuShowGridlines 
         Caption         =   "Gridlines"
         HelpContextID   =   17
         Begin VB.Menu mnuGridsDrawingCanvas 
            Caption         =   "Drawing Canvas"
            Checked         =   -1  'True
            HelpContextID   =   1101
         End
         Begin VB.Menu mnuGridsPalette 
            Caption         =   "Palette"
            Checked         =   -1  'True
            HelpContextID   =   1102
         End
      End
      Begin VB.Menu mnuSeparator5 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExpertMode 
         Caption         =   "Expert Mode"
         HelpContextID   =   18
         Shortcut        =   ^M
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      HelpContextID   =   19
      Begin VB.Menu mnuReadme 
         Caption         =   "Readme"
      End
      Begin VB.Menu mnuAbout 
         Caption         =   "About"
         HelpContextID   =   20
      End
   End
End
Attribute VB_Name = "frmOverworldEditor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private lngSpritePaletteHeaders As Long
Private lngSpriteBank As Long
Public bytSpriteMax As Byte
Private lngGraphicWidthBlocks As Long
Private lngGraphicHeightBlocks As Long
Private lngGraphicStartOffset As Long

Public strCurrentROM As String

Private lngCurrentMouseX As Long
Private lngCurrentMouseY As Long
Private bytPaletteCurrentMouseX As Byte
Private bytPaletteCurrentMouseY As Byte
Private bytEditCurrentMouseX As Byte
Private bytEditCurrentMouseY As Byte

Private lngCurrentTile As Long
Private bytSelectedPaletteEntry As Byte
Private blnStartColorDrag As Boolean
Private blnROMOpened As Boolean

Dim Buffer() As Long
Dim EditBuffer() As Byte
Dim Data1 As Byte, Data2 As Byte
Dim Data3 As Byte, Data4 As Byte
Dim iFreeFile As Integer
Dim i As Integer
Dim X As Integer, Y As Integer
Dim PaletteData(0 To 15) As Integer
Dim PaletteData2(0 To 15) As Long
Dim XLine As Long, YLine As Long
Public HeightB As Integer
Public WidthB As Integer
Public SpriteOff As Long
Public PaletteOffset As Long

Dim bIgnoreChange As Boolean
Dim iIndex As Integer
Dim iMaxRedo As Integer
Dim lMouseX(1000) As Long
Dim lMouseY(1000) As Long
Dim bColor(1000) As Byte
Dim bColor2(1000) As Byte

Public Changed As Boolean
Dim arrFrameLimits() As Byte

Private Sub cmdGo_Click()

    If Val(txtSpriteIndex.Text) >= 0 And Val(txtSpriteIndex.Text) <= bytSpriteMax Then
        If Val(txtSpriteFrame.Text) > arrFrameLimits(txtSpriteIndex.Text) Then
            txtSpriteFrame.Text = arrFrameLimits(txtSpriteIndex.Text)
            LoadSpriteStructure Val(txtSpriteIndex.Text), Val(txtSpriteFrame.Text)
        Else
            LoadSpriteStructure Val(txtSpriteIndex.Text), Val(txtSpriteFrame.Text)
        End If
        picSelectedColor.BackColor = vbWhite
        lblPaletteIndex.Caption = "Index: 00"
    ElseIf Val(txtSpriteIndex.Text) > bytSpriteMax Then
        txtSpriteIndex.Text = bytSpriteMax
        LoadSpriteStructure Val(txtSpriteIndex.Text), Val(txtSpriteFrame.Text)
        picSelectedColor.BackColor = vbWhite
        lblPaletteIndex.Caption = "Index: 00"
    End If
End Sub

Private Sub IndexBack()
    picViewSprite.Cls
    If LenB(txtSpriteIndex.Text) = 0 Then txtSpriteIndex.Text = 0
        If Val(txtSpriteIndex.Text) > 0 Then txtSpriteIndex.Text = txtSpriteIndex.Text - 1
        txtSpriteFrame.Text = 0
        LoadSpriteStructure Val(txtSpriteIndex.Text), Val(txtSpriteFrame.Text)
    Call ClearUndoBuffer
    picSelectedColor.BackColor = vbWhite
    lblPaletteIndex.Caption = "Index: 00"
End Sub

Private Sub IndexForward()
    picViewSprite.Cls
    If LenB(txtSpriteIndex.Text) = 0 Then txtSpriteIndex.Text = 0
    If Val(txtSpriteIndex.Text) < bytSpriteMax Then txtSpriteIndex.Text = txtSpriteIndex.Text + 1
    txtSpriteFrame.Text = 0
    LoadSpriteStructure Val(txtSpriteIndex.Text), Val(txtSpriteFrame.Text)
    Call ClearUndoBuffer
    picSelectedColor.BackColor = vbWhite
    lblPaletteIndex.Caption = "Index: 00"
End Sub

Private Sub FrameBack()
    picViewSprite.Cls
    If LenB(txtSpriteFrame.Text) = 0 Then txtSpriteFrame.Text = 0
    If Val(txtSpriteFrame.Text) > 0 Then txtSpriteFrame.Text = txtSpriteFrame.Text - 1
    LoadSpriteStructure Val(txtSpriteIndex.Text), Val(txtSpriteFrame.Text)
    Call ClearUndoBuffer
End Sub

Private Sub FrameForward()
    picViewSprite.Cls
    If LenB(txtSpriteFrame.Text) = 0 Then txtSpriteFrame.Text = 0
    If Val(txtSpriteFrame.Text) < arrFrameLimits(txtSpriteIndex.Text) Then txtSpriteFrame.Text = txtSpriteFrame.Text + 1
    LoadSpriteStructure Val(txtSpriteIndex.Text), Val(txtSpriteFrame.Text)
    Call ClearUndoBuffer
End Sub

Private Sub cmdIndexBack_Click()

Dim Answer As Byte

    If Changed = True Then
    Answer = MsgBox(LoadResString(1203) & vbNewLine & LoadResString(1204), vbYesNo + vbExclamation)
        If Answer = vbYes Then
            Call mnuSave_Click
            Call IndexBack
            Changed = False
        Else
            Call IndexBack
            Changed = False
        End If
    Else
    Call IndexBack
    Changed = False
    End If
End Sub

Private Sub cmdIndexForward_Click()

Dim Answer As Byte

If Changed = True Then
    Answer = MsgBox(LoadResString(1203) & vbNewLine & LoadResString(1204), vbYesNo + vbExclamation)
        If Answer = vbYes Then
            Call mnuSave_Click
            Call IndexForward
            Changed = False
        Else
            Call IndexForward
            Changed = False
        End If
    Else
    Call IndexForward
    Changed = False
    End If
    
End Sub

Private Sub cmdPaletteChange_Click()
Call ChangePalette(lblSpriteNumber.Caption)
End Sub

Private Sub cmdSpriteFrameBack_Click()

Dim Answer As Byte

    If Changed = True Then
    Answer = MsgBox(LoadResString(1203) & vbNewLine & LoadResString(1204), vbYesNo + vbExclamation)
        If Answer = vbYes Then
            Call mnuSave_Click
            Call FrameBack
            Changed = False
        Else
            Call FrameBack
            Changed = False
        End If
    Else
    Call FrameBack
    Changed = False
    End If
End Sub

Private Sub cmdSpriteFrameForward_Click()

Dim Answer As Byte

If Changed = True Then
    Answer = MsgBox(LoadResString(1203) & vbNewLine & LoadResString(1204), vbYesNo + vbExclamation)
        If Answer = vbYes Then
            Call mnuSave_Click
            Call FrameForward
            Changed = False
        Else
            Call FrameForward
            Changed = False
        End If
    Else
    Call FrameForward
    Changed = False
    End If
    
End Sub

Private Sub Form_Load()
    SetIcon Me.hWnd, "AAA"
    ToggleEditing False
    Me.Height = 7965
    grpSpriteHeader1.Height = 104
    grpNavigation.Width = 449
    Me.Height = 7965
    Realign (False)
    mnuExpertMode.Checked = False
    LoadResStrings Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Unload frmBMPImport
End Sub

Private Sub mnuAbout_Click()
    frmAbout.Show vbModal, frmOverworldEditor
End Sub

Private Sub mnuExit_Click()
    Unload Me
End Sub

Private Sub ToggleExpert(blEnable As Boolean)
grpSpriteHeaderTwo.Visible = blEnable
Label1.Visible = blEnable
Label3.Visible = blEnable
Label7.Visible = blEnable
Label8.Visible = blEnable
Label9.Visible = blEnable
Label10.Visible = blEnable
lblStarterBytes.Visible = blEnable
lblSpritePointer.Visible = blEnable
lblUnknownPointer1.Visible = blEnable
lblUnknownPointer2.Visible = blEnable
lblUnknownPointer3.Visible = blEnable
lblUnknownPointer4.Visible = blEnable
grpSpriteHeaderTwo.Visible = blEnable
End Sub

Private Sub Realign(blValue As Boolean)
If blValue = True Then
    lblSpriteIndex.Left = 240
    lblFrame.Left = 240
    Picture3.Left = 840
    Picture5.Left = 840
    txtSpriteIndex.Left = 1200
    txtSpriteFrame.Left = 1200
    Picture4.Left = 1800
    Picture6.Left = 1800
    Picture1.Left = 2160
Else
    lblSpriteIndex.Left = 2040
    lblFrame.Left = 2040
    Picture3.Left = 2640
    Picture5.Left = 2640
    txtSpriteIndex.Left = 3000
    txtSpriteFrame.Left = 3000
    Picture4.Left = 3600
    Picture6.Left = 3600
    Picture1.Left = 3960
End If
End Sub

Private Sub mnuExpertMode_Click()
If mnuExpertMode.Checked = False Then
    ToggleExpert (True)
    grpSpriteHeader1.Height = 168
    Me.Height = 8940
    grpNavigation.Width = 193
    Realign (True)
    mnuExpertMode.Checked = True
Else
    ToggleExpert (False)
    grpSpriteHeader1.Height = 104
    grpNavigation.Width = 449
    Me.Height = 7965
    Realign (False)
    mnuExpertMode.Checked = False
End If
End Sub

Private Sub mnuExportBitmap_Click()
Dim OutPutPath As String
Dim SpeicherDialog As clsCommonDialog
Set SpeicherDialog = New clsCommonDialog
Dim Name As String

Name = txtSpriteIndex.Text & "_" & txtSpriteFrame.Text & ".bmp"
SavePic.Picture = picViewSprite.Image

OutPutPath = SpeicherDialog.ShowSave("Bitmaps (*.bmp)|*.bmp|", Me.hWnd, Name, PATHMUSTEXIST)

If LenB(OutPutPath) = 0 Then Exit Sub
BMPExport OutPutPath, strCurrentROM, SpriteOff, HeightB, WidthB, PaletteOffset

End Sub

Private Sub mnuGridsDrawingCanvas_Click()
mnuGridsDrawingCanvas.Checked = Not mnuGridsDrawingCanvas.Checked
    For i = 0 To lneTileEditGrid.UBound
        lneTileEditGrid(i).Visible = mnuGridsDrawingCanvas.Checked
    Next i
End Sub

Private Sub mnuGridsPalette_Click()
    mnuGridsPalette.Checked = Not mnuGridsPalette.Checked
    For i = 0 To lnePaletteGrid.UBound
        lnePaletteGrid(i).Visible = mnuGridsPalette.Checked
    Next i
End Sub

Private Sub mnuImportBitmap_Click()
frmBMPImport.Show vbModal
Call cmdGo_Click
End Sub

Private Sub mnuNextFrame_Click()
Call cmdSpriteFrameForward_Click
End Sub

Private Sub mnuNextIndex_Click()
Call cmdIndexForward_Click
End Sub

Private Sub LoadLimits(sGamecode As String)
sGamecode = Mid$(lblCurrentGame.Caption, 1, 3)
Dim i As Byte

Select Case sGamecode
    Case "AXV", "AXP"
        ReDim arrFrameLimits(217) As Byte
        
        arrFrameLimits(0) = 17
        arrFrameLimits(1) = 8
        arrFrameLimits(2) = 26
        arrFrameLimits(3) = 11
        arrFrameLimits(4) = 4
        arrFrameLimits(5) = 6
        For i = 6 To 58
            arrFrameLimits(i) = 8
        Next
        arrFrameLimits(59) = 9
        arrFrameLimits(60) = 0
        arrFrameLimits(61) = 2
        arrFrameLimits(62) = 2
        For i = 63 To 75
            arrFrameLimits(i) = 8
        Next
        arrFrameLimits(76) = 0
        arrFrameLimits(77) = 0
        arrFrameLimits(78) = 0
        arrFrameLimits(79) = 0
        arrFrameLimits(80) = 0
        arrFrameLimits(81) = 0
        arrFrameLimits(82) = 3
        arrFrameLimits(83) = 8
        arrFrameLimits(84) = 8
        arrFrameLimits(85) = 8
        arrFrameLimits(86) = 3
        arrFrameLimits(87) = 0
        arrFrameLimits(88) = 8
        arrFrameLimits(89) = 17
        arrFrameLimits(90) = 8
        arrFrameLimits(91) = 26
        arrFrameLimits(92) = 11
        arrFrameLimits(93) = 4
        arrFrameLimits(94) = 0
        arrFrameLimits(95) = 8
        arrFrameLimits(96) = 8
        arrFrameLimits(97) = 0
        arrFrameLimits(98) = 8
        arrFrameLimits(99) = 8
        arrFrameLimits(100) = 17
        arrFrameLimits(101) = 8
        arrFrameLimits(102) = 26
        arrFrameLimits(103) = 11
        arrFrameLimits(104) = 4
        arrFrameLimits(105) = 17
        arrFrameLimits(106) = 8
        arrFrameLimits(107) = 26
        arrFrameLimits(108) = 11
        arrFrameLimits(109) = 4
        arrFrameLimits(110) = 8
        arrFrameLimits(111) = 8
        arrFrameLimits(112) = 8
        arrFrameLimits(113) = 0
        arrFrameLimits(114) = 0
        For i = 113 To 136
            arrFrameLimits(i) = 8
        Next
        arrFrameLimits(137) = 11
        arrFrameLimits(138) = 11
        arrFrameLimits(139) = 8
        arrFrameLimits(140) = 8
        arrFrameLimits(141) = 8
        For i = 142 To 186
            arrFrameLimits(i) = 0
        Next
        arrFrameLimits(187) = 8
        arrFrameLimits(188) = 8
        arrFrameLimits(189) = 8
        arrFrameLimits(190) = 8
        arrFrameLimits(191) = 8
        arrFrameLimits(192) = 8
        arrFrameLimits(193) = 0
        arrFrameLimits(194) = 0
        arrFrameLimits(195) = 8
        arrFrameLimits(196) = 8
        arrFrameLimits(197) = 8
        arrFrameLimits(198) = 8
        arrFrameLimits(199) = 0
        For i = 200 To 215
            arrFrameLimits(i) = 8
        Next
        arrFrameLimits(216) = 17
        arrFrameLimits(217) = 17

    Case "BPE"
        ReDim arrFrameLimits(244) As Byte
        
        arrFrameLimits(0) = 17
        arrFrameLimits(1) = 8
        arrFrameLimits(2) = 26
        arrFrameLimits(3) = 11
        arrFrameLimits(4) = 4
        arrFrameLimits(5) = 6
        For i = 6 To 58
            arrFrameLimits(i) = 8
        Next
        arrFrameLimits(59) = 9
        arrFrameLimits(60) = 0
        arrFrameLimits(61) = 2
        arrFrameLimits(62) = 2
        For i = 63 To 75
            arrFrameLimits(i) = 8
        Next
        arrFrameLimits(76) = 0
        arrFrameLimits(77) = 0
        arrFrameLimits(78) = 0
        arrFrameLimits(79) = 0
        arrFrameLimits(80) = 0
        arrFrameLimits(81) = 0
        arrFrameLimits(82) = 3
        arrFrameLimits(83) = 8
        arrFrameLimits(84) = 8
        arrFrameLimits(85) = 8
        arrFrameLimits(86) = 3
        arrFrameLimits(87) = 0
        arrFrameLimits(88) = 8
        arrFrameLimits(89) = 17
        arrFrameLimits(90) = 8
        arrFrameLimits(91) = 26
        arrFrameLimits(92) = 11
        arrFrameLimits(93) = 4
        arrFrameLimits(94) = 0
        arrFrameLimits(95) = 8
        arrFrameLimits(96) = 8
        arrFrameLimits(97) = 0
        arrFrameLimits(98) = 8
        arrFrameLimits(99) = 8
        arrFrameLimits(100) = 8
        arrFrameLimits(101) = 17
        arrFrameLimits(102) = 8
        arrFrameLimits(103) = 26
        arrFrameLimits(104) = 11
        arrFrameLimits(105) = 4
        arrFrameLimits(106) = 17
        arrFrameLimits(107) = 8
        arrFrameLimits(108) = 26
        arrFrameLimits(109) = 11
        arrFrameLimits(110) = 4
        arrFrameLimits(111) = 8
        arrFrameLimits(112) = 8
        arrFrameLimits(113) = 8
        arrFrameLimits(114) = 0
        arrFrameLimits(115) = 0
        For i = 116 To 137
            arrFrameLimits(i) = 8
        Next
        arrFrameLimits(138) = 11
        arrFrameLimits(139) = 11
        arrFrameLimits(140) = 8
        arrFrameLimits(141) = 8
        arrFrameLimits(142) = 8
        For i = 143 To 187
            arrFrameLimits(i) = 0
        Next
        arrFrameLimits(188) = 8
        arrFrameLimits(189) = 8
        arrFrameLimits(190) = 8
        arrFrameLimits(191) = 8
        arrFrameLimits(192) = 8
        arrFrameLimits(193) = 8
        arrFrameLimits(194) = 0
        arrFrameLimits(195) = 0
        arrFrameLimits(196) = 8
        arrFrameLimits(197) = 8
        arrFrameLimits(198) = 8
        arrFrameLimits(199) = 8
        arrFrameLimits(200) = 8
        arrFrameLimits(201) = 8
        arrFrameLimits(202) = 0
        For i = 203 To 218
            arrFrameLimits(i) = 8
        Next
        arrFrameLimits(219) = 17
        arrFrameLimits(220) = 17
        arrFrameLimits(221) = 8
        arrFrameLimits(222) = 8
        arrFrameLimits(223) = 8
        arrFrameLimits(224) = 0
        For i = 225 To 244
            arrFrameLimits(i) = 8
        Next

    Case "BPR", "BPG"
        ReDim arrFrameLimits(153) As Byte
        
        arrFrameLimits(0) = 19
        arrFrameLimits(1) = 8
        arrFrameLimits(2) = 11
        For i = 3 To 7
            arrFrameLimits(i) = 8
        Next
        arrFrameLimits(8) = 9
        arrFrameLimits(9) = 8
        arrFrameLimits(10) = 9
        arrFrameLimits(11) = 9
        arrFrameLimits(12) = 9
        arrFrameLimits(13) = 8
        arrFrameLimits(14) = 9
        arrFrameLimits(15) = 9
        arrFrameLimits(16) = 9
        arrFrameLimits(17) = 8
        arrFrameLimits(18) = 9
        arrFrameLimits(19) = 9
        arrFrameLimits(20) = 9
        arrFrameLimits(21) = 8
        arrFrameLimits(22) = 8
        arrFrameLimits(23) = 9
        arrFrameLimits(24) = 8
        arrFrameLimits(25) = 8
        arrFrameLimits(26) = 8
        arrFrameLimits(27) = 9
        arrFrameLimits(28) = 9
        arrFrameLimits(29) = 9
        arrFrameLimits(30) = 9
        arrFrameLimits(31) = 9
        arrFrameLimits(32) = 9
        arrFrameLimits(33) = 8
        arrFrameLimits(34) = 9
        arrFrameLimits(35) = 9
        arrFrameLimits(36) = 9
        arrFrameLimits(37) = 9
        arrFrameLimits(38) = 9
        arrFrameLimits(39) = 9
        arrFrameLimits(40) = 9
        arrFrameLimits(41) = 9
        arrFrameLimits(42) = 8
        arrFrameLimits(43) = 9
        arrFrameLimits(44) = 8
        arrFrameLimits(45) = 8
        arrFrameLimits(46) = 9
        arrFrameLimits(47) = 9
        arrFrameLimits(48) = 9
        arrFrameLimits(49) = 9
        arrFrameLimits(50) = 9
        arrFrameLimits(51) = 8
        arrFrameLimits(52) = 9
        arrFrameLimits(53) = 8
        arrFrameLimits(54) = 0
        arrFrameLimits(55) = 8
        arrFrameLimits(56) = 9
        arrFrameLimits(57) = 9
        arrFrameLimits(58) = 8
        arrFrameLimits(59) = 8
        arrFrameLimits(60) = 8
        arrFrameLimits(61) = 3
        arrFrameLimits(62) = 8
        arrFrameLimits(63) = 8
        arrFrameLimits(64) = 8
        arrFrameLimits(65) = 8
        arrFrameLimits(66) = 8
        arrFrameLimits(67) = 3
        arrFrameLimits(68) = 0
        arrFrameLimits(69) = 19
        arrFrameLimits(70) = 8
        arrFrameLimits(71) = 11
        For i = 72 To 89
            arrFrameLimits(i) = 8
        Next
        arrFrameLimits(90) = 11
        arrFrameLimits(91) = 11
        arrFrameLimits(92) = 8
        arrFrameLimits(93) = 5
        arrFrameLimits(94) = 8
        arrFrameLimits(95) = 5
        arrFrameLimits(96) = 0
        arrFrameLimits(97) = 0
        arrFrameLimits(98) = 8
        arrFrameLimits(99) = 8
        For i = 100 To 109
            arrFrameLimits(i) = 0
        Next
        For i = 110 To 153
            arrFrameLimits(i) = 8
        Next
        
End Select

End Sub

Private Sub mnuOpen_Click()
    Dim oOpenDialog As clsCommonDialog
    Set oOpenDialog = New clsCommonDialog
    Dim sResult As String
    Dim sGamecode As String * 4
    sResult = oOpenDialog.ShowOpen(Me.hWnd, LoadResString(4000), , "GameBoy Advance ROMs (*.gba, *.agb, *.bin)|*.gba;*.agb;*.bin|", FILEMUSTEXIST Or PATHMUSTEXIST Or HIDEREADONLY)
    If LenB(sResult) > 0 Then
        strCurrentROM = sResult
        If FileExists(strCurrentROM) Then
            blnROMOpened = True
            iFreeFile = FreeFile
            Open strCurrentROM For Binary As #iFreeFile
                Get #iFreeFile, &HAD, sGamecode
                If LenB(ReadINI(sGamecode, "Name", App.Path & "\Sprites.ini")) > 0 Then
                    lblCurrentGame.Caption = sGamecode & " - " & ReadINI(sGamecode, "Name", App.Path & "\Sprites.ini")
                    lngSpriteBank = Val(ReadINI(sGamecode, "SpriteBank", App.Path & "\Sprites.ini")) + 1
                    lngSpritePaletteHeaders = Val(ReadINI(sGamecode, "SpritePaletteHeaders", App.Path & "\Sprites.ini")) + 1
                    bytSpriteMax = Val(ReadINI(sGamecode, "SpriteCount", App.Path & "\Sprites.ini"))
                    If lngSpriteBank = 1 Or lngSpritePaletteHeaders = 1 Then
                        MsgBox LoadResString(1200), vbExclamation
                        Exit Sub
                    End If
                Else
                    MsgBox LoadResString(1200), vbExclamation
                    Exit Sub
                End If
            Close #iFreeFile
            
            picViewSprite.Visible = True
            
            txtSpriteFrame.Text = 0
            txtSpriteIndex.Text = 0
            LoadSpriteStructure Val(txtSpriteIndex.Text), Val(txtSpriteFrame.Text)
            
            bytSelectedPaletteEntry = 0
            picSelectedColor.BackColor = &H80000005
            lblPaletteIndex.Caption = "Index: 00"
            
            ToggleEditing True
            
            Call LoadLimits(sGamecode)
            
        End If
    End If
End Sub

Private Sub mnuPrevFrame_Click()
Call cmdSpriteFrameBack_Click
End Sub

Private Sub mnuPrevIndex_Click()
Call cmdIndexBack_Click
End Sub

Private Sub mnuReadme_Click()
Shell "notepad.exe " & App.Path & "\Readme.txt", vbNormalFocus
End Sub

Private Sub mnuRedo_Click()
' If stack index is equal to the max number of Redo then there can't be any Redo
If iIndex = iMaxRedo Then Exit Sub

mnuUndo.Enabled = True ' enable Undo
bIgnoreChange = True
iIndex = iIndex + 1 ' set the index to set the stack to appropriate state
bytEditCurrentMouseX = lMouseX(iIndex) 'set mouse coordinates
bytEditCurrentMouseY = lMouseY(iIndex)
EditBuffer((lngCurrentTile * 64) + (bytEditCurrentMouseX + bytEditCurrentMouseY * 8)) = bColor2(iIndex)
bIgnoreChange = False
Call DrawTileEdit
Call DrawSpriteView
If iIndex = iMaxRedo Then mnuRedo.Enabled = False 'if it's the last Redo, disable it
End Sub

Private Sub mnuReloadSprite_Click()
LoadSpriteStructure Val(txtSpriteIndex.Text), Val(txtSpriteFrame.Text)
Changed = False ' Reset change check
Call ClearUndoBuffer 'Clear Undo/Redo buffer
End Sub

Private Sub mnuSave_Click()
SaveSprite lngGraphicStartOffset
Changed = False
Call ClearUndoBuffer
End Sub

Private Sub ClearUndoBuffer()
iIndex = 0 ' reset iIndex
Erase lMouseX
Erase lMouseY
Erase bColor
Erase bColor2
mnuUndo.Enabled = False ' disable Undo
mnuRedo.Enabled = False ' and Redo
End Sub
Private Sub mnuUndo_Click()
If iIndex = 0 Then Exit Sub ' If iIndex is 0 then there isn't Undo operation to be done

mnuRedo.Enabled = True 'enable Redo
bIgnoreChange = True
iIndex = iIndex - 1 ' reduce the index to set the stack to previous state
bytEditCurrentMouseX = lMouseX(iIndex + 1) ' set cursor position (X)
bytEditCurrentMouseY = lMouseY(iIndex + 1) ' set cursor position (Y)
EditBuffer((lngCurrentTile * 64) + (bytEditCurrentMouseX + bytEditCurrentMouseY * 8)) = bColor(iIndex) ' set color
bIgnoreChange = False ' make sure the stack is updated again
Call DrawTileEdit
Call DrawSpriteView
If iIndex = 0 Then mnuUndo.Enabled = False 'if there aren't other Undo, disable it
End Sub

Private Sub txtPaletteNumber_KeyPress(KeyCode As Integer)
If KeyCode <> vbKeyBack And KeyCode <> 22 And KeyCode <> 3 And KeyCode <> 24 Then
        If Not IsNumeric(Chr$(KeyCode)) Then
            KeyCode = 0
        End If
    End If
End Sub

Private Sub txtSpriteFrame_Change()
    If Val(txtSpriteFrame.Text) > 26 Then txtSpriteFrame.Text = 26
End Sub

Private Sub txtSpriteIndex_Change()
    If Val(txtSpriteIndex.Text) > bytSpriteMax Then txtSpriteIndex.Text = bytSpriteMax
End Sub

Private Sub txtSpriteIndex_KeyPress(KeyCode As Integer)
    Call txtPaletteNumber_KeyPress(KeyCode)
End Sub

Private Sub txtSpriteFrame_KeyPress(KeyCode As Integer)
    Call txtPaletteNumber_KeyPress(KeyCode)
End Sub

Private Sub picEditTile_Click()
On Error Resume Next
    EditBuffer((lngCurrentTile * 64) + (bytEditCurrentMouseX + bytEditCurrentMouseY * 8)) = bytSelectedPaletteEntry
    Call DrawTileEdit
End Sub

Private Sub picEditTile_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
    If X + 1 > picEditTile.Width Or Y + 1 > picEditTile.Height Or X < 0 Or Y < 0 Then Exit Sub
    If Button = 1 Then
        
        Changed = True ' sprite is changed
        
        If mnuUndo.Enabled = False And iIndex > 0 Then ' if it's necessary, enable Undo
            mnuUndo.Enabled = True
        End If
        
    If Not bIgnoreChange Then 'this update the Undo/Redo
    
        iIndex = iIndex + 1 ' increase the stack index number
        iMaxRedo = iIndex ' update the maximum Redo commands variable
        lMouseX(iIndex) = bytEditCurrentMouseX ' remember cursor position
        lMouseY(iIndex) = bytEditCurrentMouseY ' the same...
        
        bColor(iIndex - 1) = EditBuffer((lngCurrentTile * 64) + (bytEditCurrentMouseX + bytEditCurrentMouseY * 8)) ' remember previous color
    
        EditBuffer((lngCurrentTile * 64) + (bytEditCurrentMouseX + bytEditCurrentMouseY * 8)) = bytSelectedPaletteEntry
               
        Call DrawTileEdit
        bColor2(iIndex) = EditBuffer((lngCurrentTile * 64) + (bytEditCurrentMouseX + bytEditCurrentMouseY * 8)) ' remember current color
        blnStartColorDrag = True
    End If
    
    End If

End Sub

Private Sub picEditTile_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next

    picMouseOverColor.BackColor = Colour15To24RGB(PaletteData(EditBuffer((lngCurrentTile * 64) + (bytEditCurrentMouseX + bytEditCurrentMouseY * 8))))
    If Fix(X \ 16) = bytEditCurrentMouseX And bytEditCurrentMouseY = Fix(Y \ 16) Then Exit Sub
     bytEditCurrentMouseX = Fix(X \ 16)
     bytEditCurrentMouseY = Fix(Y \ 16)
   
    If blnStartColorDrag = True Then
        If X + 1 > picEditTile.Width Or Y + 1 > picEditTile.Height Or X < 0 Or Y < 0 Then Exit Sub
        
         Changed = True
         
         If mnuUndo.Enabled = False And iIndex > 0 Then
            mnuUndo.Enabled = True
         End If
        
         If Not bIgnoreChange Then
         
         iIndex = iIndex + 1
         iMaxRedo = iIndex
         lMouseX(iIndex) = bytEditCurrentMouseX
         lMouseY(iIndex) = bytEditCurrentMouseY
         
        bColor(iIndex - 1) = EditBuffer((lngCurrentTile * 64) + (bytEditCurrentMouseX + bytEditCurrentMouseY * 8))
         
        EditBuffer((lngCurrentTile * 64) + (bytEditCurrentMouseX + bytEditCurrentMouseY * 8)) = bytSelectedPaletteEntry
        Call DrawTileEdit
        bColor2(iIndex) = EditBuffer((lngCurrentTile * 64) + (bytEditCurrentMouseX + bytEditCurrentMouseY * 8))
        Call DrawSpriteView

        End If
         
    End If

End Sub

Private Sub picEditTile_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
    If Len(strCurrentROM) <= 0 Or blnROMOpened = False Then Exit Sub
    If Button = 1 Then
        blnStartColorDrag = False
        If X + 1 > picEditTile.Width Or Y + 1 > picEditTile.Height Or X < 0 Or Y < 0 Then Exit Sub
        
        If mnuUndo.Enabled = False And iIndex > 0 Then
        mnuUndo.Enabled = True
        End If
         
        EditBuffer((lngCurrentTile * 64) + (bytEditCurrentMouseX + bytEditCurrentMouseY * 8)) = bytSelectedPaletteEntry
        Call DrawTileEdit
        Call DrawSpriteView
    End If
    If Button = 2 Then
        If X + 1 > picEditTile.Width Or Y + 1 > picEditTile.Height Or X < 0 Or Y < 0 Then Exit Sub
        bytSelectedPaletteEntry = EditBuffer((lngCurrentTile * 64) + (bytEditCurrentMouseX + bytEditCurrentMouseY * 8))
        picSelectedColor.BackColor = Colour15To24RGB(PaletteData(bytSelectedPaletteEntry))
        lblPaletteIndex.Caption = "Index: " & Right$("00" & Hex$(bytSelectedPaletteEntry), 2)
        Exit Sub
    End If
End Sub

Private Sub picSelectPalette_Click()
    bytSelectedPaletteEntry = bytPaletteCurrentMouseX + (bytPaletteCurrentMouseY * 2)
    picSelectedColor.BackColor = Colour15To24RGB(PaletteData(bytSelectedPaletteEntry))
    lblPaletteIndex.Caption = "Index: " & Right$("00" & Hex$(bytSelectedPaletteEntry), 2)
End Sub

Private Sub picSelectPalette_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    bytPaletteCurrentMouseX = Fix(X \ 16)
    bytPaletteCurrentMouseY = Fix(Y \ 16)
    picMouseOverColor.BackColor = Colour15To24RGB(PaletteData(bytPaletteCurrentMouseX + (bytPaletteCurrentMouseY * 2)))
End Sub

Private Sub picViewSprite_Click()
    lngCurrentTile = lngCurrentMouseX + (lngCurrentMouseY * lngGraphicWidthBlocks)
    shpSelectedTile.Top = lngCurrentMouseY * 16
    shpSelectedTile.Left = lngCurrentMouseX * 16
    Call DrawTileEdit
    Call ClearUndoBuffer
End Sub

Private Sub picViewSprite_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    lngCurrentMouseX = Fix(X \ 16)
    lngCurrentMouseY = Fix(Y \ 16)
End Sub

Private Sub LoadSprite(FilePath As String, SpriteOffset As Long, PaletteOffset As Long, Height As Long, Width As Long)
    'Set the global image properties
    lngGraphicHeightBlocks = Height
    lngGraphicWidthBlocks = Width
    'Gets us a new file handle.
    iFreeFile = FreeFile
    'Current position in decoding
    Dim lngCurrentPosition As Long
    'Resizes the buffers for the required space.
    ReDim Buffer(0 To ((lngGraphicHeightBlocks * 8) * (lngGraphicWidthBlocks * 8)))
    ReDim EditBuffer(0 To ((lngGraphicHeightBlocks * 8) * (lngGraphicWidthBlocks * 8)))
    'Resize the Sprite View (Double-Size mode!)
    picViewSprite.Width = (lngGraphicWidthBlocks * 8) * 2
    picViewSprite.Height = (lngGraphicHeightBlocks * 8) * 2
    'Reset current tile
    lngCurrentTile = 0
    shpSelectedTile.Top = 0
    shpSelectedTile.Left = 0
    'Set offsets
    lngGraphicStartOffset = SpriteOffset
    'Opens the ROM
    Open FilePath For Binary As #iFreeFile
        'Goto the offset of the Palette
        Seek #iFreeFile, PaletteOffset
        'Load the Palette up
        Get #iFreeFile, , PaletteData
        'Goto offset of sprite
        Seek #iFreeFile, SpriteOffset
        'The Y-Line is the row of blocks we are reading
        For YLine = 0 To lngGraphicHeightBlocks - 1
            'The X-Line is the column of blocks we are reading
            For XLine = 0 To lngGraphicWidthBlocks - 1
                For Y = 0 To 7
                    'We are reading the data in chunks of DWORD's! HOW EFFECIENT OF ME!
                    'I MUST BE GAWD!
                    Get #iFreeFile, , Data1
                    Get #iFreeFile, , Data2
                    Get #iFreeFile, , Data3
                    Get #iFreeFile, , Data4
                    '4BPP graphics are 4-bits per pixel, so 4 bytes is 8 pixels or 1 row.
                    'they are in reverse order. XXXXRRRR
                    'RRRR = First Pixel
                    'XXXX = Second Pixel
                    'Below ...that could probely be shortend to a loop.
                    EditBuffer(lngCurrentPosition + 0) = (Data1 And &HF)  'High Nibble
                    EditBuffer(lngCurrentPosition + 1) = (Data1 \ 16)     'Low Nibble
                    EditBuffer(lngCurrentPosition + 2) = (Data2 And &HF)  'High Nibble
                    EditBuffer(lngCurrentPosition + 3) = (Data2 \ 16)     'Low Nibble
                    EditBuffer(lngCurrentPosition + 4) = (Data3 And &HF)  'High Nibble
                    EditBuffer(lngCurrentPosition + 5) = (Data3 \ 16)     'Low Nibble
                    EditBuffer(lngCurrentPosition + 6) = (Data4 And &HF)  'High Nibble
                    EditBuffer(lngCurrentPosition + 7) = (Data4 \ 16)     'Low Nibble
                    'Increase current position by 8
                    lngCurrentPosition = lngCurrentPosition + 8
                Next Y
            Next XLine
        Next YLine
    Close #iFreeFile
End Sub

Private Sub SaveSprite(SpriteOffset As Long)
    'Current position in decoding
    Dim lngCurrentPosition As Long
    Dim bytTempBuffer() As Byte
    On Error GoTo ErrSaveSprite
    ReDim bytTempBuffer((UBound(EditBuffer) \ 2) - 1)
    'Make sure file is open
    If Len(strCurrentROM) <= 0 Or blnROMOpened = False Then Exit Sub
    'Gets us a new file handle.
    iFreeFile = FreeFile
    'Opens the ROM
    SetAttr strCurrentROM, vbNormal
    Open strCurrentROM For Binary As #iFreeFile
        'Goto offset of sprite
        Seek #iFreeFile, SpriteOffset
        For i = 0 To UBound(EditBuffer) - 1 Step 2
            bytTempBuffer(lngCurrentPosition) = EditBuffer(i) Or (EditBuffer(i + 1) * 16)
            lngCurrentPosition = lngCurrentPosition + 1
        Next i
        Put #iFreeFile, , bytTempBuffer
        
        If Val(txtSpriteIndex.Text) = 89 Then
        
            Dim GameCode As String, GameLang As String, GaryOffset As Long
            GameCode = Mid$(lblCurrentGame.Caption, 1, 3)
            GameLang = Mid$(lblCurrentGame.Caption, 4, 1)
        
            Select Case GameCode
                Case "BPR"
                    Select Case GameLang
                        Case "J"
                            GaryOffset = 364500
                        Case "E"
                            GaryOffset = 357720
                        Case "I"
                            GaryOffset = 349080
                        Case "S"
                            GaryOffset = 351512
                        Case "F"
                            GaryOffset = 349284
                        Case "D"
                            GaryOffset = 355204
                    End Select
                    Seek #iFreeFile, SpriteOffset + GaryOffset
                    Put #iFreeFile, , bytTempBuffer
                Case "BPG"
                    Select Case GameLang
                        Case "J"
                            GaryOffset = 364132
                        Case "E"
                            GaryOffset = 357300
                        Case "I"
                            GaryOffset = 348660
                        Case "S"
                            GaryOffset = 351092
                        Case "F"
                            GaryOffset = 348864
                        Case "D"
                            GaryOffset = 354784
                    End Select
                    Seek #iFreeFile, SpriteOffset + GaryOffset
                    Put #iFreeFile, , bytTempBuffer
            End Select
        End If
        
    Close #iFreeFile

    On Error GoTo 0
    Exit Sub

ErrSaveSprite:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SaveSprite of frmOverworldEditor", vbCritical
    
End Sub

Private Sub DrawPalette()
    For i = 0 To 15
        PaletteData2(i) = Colour15To24(PaletteData(i))
    Next i
    Blit32 PaletteData2, picSelectPalette, 2, 8
    picSelectPalette.Refresh
End Sub

Private Sub DrawTileEdit()
    Dim lngTempBuffer(0 To 63) As Long
        
    For Y = 0 To 7
        For X = 0 To 7
            lngTempBuffer(X + Y * 8) = Colour15To24(PaletteData(EditBuffer((lngCurrentTile * 64) + (X + Y * 8))))
        Next X
    Next Y
    Blit32 lngTempBuffer, picEditTile, 8, 8
    picEditTile.Refresh
End Sub

Private Sub DrawSpriteView()
    Dim lngCurrentPosition As Long
    For YLine = 0 To lngGraphicHeightBlocks - 1
        For XLine = 0 To lngGraphicWidthBlocks - 1
            For Y = 0 To 7
                For X = 0 To 7
                    Buffer((((XLine * 8) + X) + ((YLine * 8) + Y) * (lngGraphicWidthBlocks * 8))) = Colour15To24(PaletteData(EditBuffer(lngCurrentPosition + X)))
                Next X
                lngCurrentPosition = lngCurrentPosition + 8
            Next Y
        Next XLine
    Next YLine
    Blit32 Buffer, picViewSprite, lngGraphicWidthBlocks * 8, lngGraphicHeightBlocks * 8
    picViewSprite.Refresh
End Sub

Public Sub LoadSpriteStructure(Index As Byte, Frame As Byte)

    Dim PrimarySpriteHeader As SpriteHeader
    Dim SecondarySpriteHeader As SpriteHeader2
    Dim PaletteHeaders(0 To 26) As PaletteHeader
    Dim j As Integer
    On Error GoTo ErrLoadSpriteStructure

    iFreeFile = FreeFile
    
    If Len(strCurrentROM) <= 0 Or blnROMOpened = False Then Exit Sub
    
    Open strCurrentROM For Binary As #iFreeFile
        Seek #iFreeFile, lngSpriteBank + (36 * Index)
        Get #iFreeFile, , PrimarySpriteHeader
        
        lblSpriteNumber.Caption = Index
        lblStarterBytes.Caption = Right$("0000" & Hex$(PrimarySpriteHeader.StarterBytes), 4)
        txtPaletteNumber = PrimarySpriteHeader.PaletteModifier
        lblUnknownData.Caption = Right$("00" & Hex$(PrimarySpriteHeader.Unknown1(0)), 2) & Space$(1) & _
                                 Right$("00" & Hex$(PrimarySpriteHeader.Unknown1(1)), 2) & Space$(1) & _
                                 Right$("00" & Hex$(PrimarySpriteHeader.Unknown1(2)), 2)
        lblSpriteDataSize.Caption = Right$("0000" & Hex$(PrimarySpriteHeader.SpriteDataSize), 4)
        lblSpriteWidth.Caption = PrimarySpriteHeader.Width
        lblSpriteHeight.Caption = PrimarySpriteHeader.Height
        WidthB = PrimarySpriteHeader.Width
        HeightB = PrimarySpriteHeader.Height
        lblUnknownData2.Caption = Right$("00" & Hex$(PrimarySpriteHeader.Unknown2), 2) & Space$(1) & Right$("00" & Hex$(PrimarySpriteHeader.Unknown3), 2) & Space$(1) & Right$("0000" & Hex$(PrimarySpriteHeader.Unknown4), 4)
        lblSpritePointer.Caption = Right$("00000000" & Hex$(PrimarySpriteHeader.SpriteHeader2Pointer), 8)
        lblUnknownPointer1.Caption = Right$("00000000" & Hex$(PrimarySpriteHeader.Pointer1), 8)
        lblUnknownPointer2.Caption = Right$("00000000" & Hex$(PrimarySpriteHeader.Pointer2), 8)
        lblUnknownPointer3.Caption = Right$("00000000" & Hex$(PrimarySpriteHeader.Pointer3), 8)
        lblUnknownPointer4.Caption = Right$("00000000" & Hex$(PrimarySpriteHeader.Pointer5), 8)
        
        
        Seek #iFreeFile, (PrimarySpriteHeader.SpriteHeader2Pointer - &H8000000) + 1 + (8 * Frame)
        Get #iFreeFile, , SecondarySpriteHeader
        
        lblSpritePointerHdr2.Caption = Right$("00000000" & Hex$(SecondarySpriteHeader.SpritePointer), 8)
        SpriteOff = Val("&H" & Right$("00000000" & Hex$(SecondarySpriteHeader.SpritePointer), 6))
        lblSpriteDataSizeHdr2.Caption = Right$("0000" & Hex$(SecondarySpriteHeader.SpriteDataSize), 4)
        lblUnknownHdr2.Caption = Right$("0000" & Hex$(SecondarySpriteHeader.Unknown), 4)
        
        Seek #iFreeFile, lngSpritePaletteHeaders
        Get #iFreeFile, , PaletteHeaders
        
    Close #iFreeFile
    
    For i = 0 To UBound(PaletteHeaders)
        If PaletteHeaders(i).Index = PrimarySpriteHeader.PaletteModifier Then
            j = i
            Exit For
        End If
    Next i
          
    PaletteOffset = (PaletteHeaders(j).DataPointer - &H8000000) + 1
    Call LoadSprite(strCurrentROM, (SecondarySpriteHeader.SpritePointer - &H8000000) + 1, (PaletteHeaders(j).DataPointer - &H8000000) + 1, PrimarySpriteHeader.Height / 8, PrimarySpriteHeader.Width / 8)
    Call DrawSpriteView
    Call DrawTileEdit
    Call DrawPalette

    On Error GoTo 0
    Exit Sub

ErrLoadSpriteStructure:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LoadSpriteStructure of frmOverworldEditor", vbCritical

End Sub

Private Sub ChangePalette(Index As Byte)

Dim PaletteNumber As Byte, PaletteModifier As Byte, PrevPal As Byte, PrevPal2 As String, PrevPal3 As String, GameCode As String

iFreeFile = FreeFile
GameCode = Mid$(lblCurrentGame.Caption, 1, 3)
PaletteNumber = Val(txtPaletteNumber.Text)
    
    If Len(strCurrentROM) <= 0 Or blnROMOpened = False Then Exit Sub
        
        If GameCode = "AXV" Or GameCode = "AXP" Then
            Select Case PaletteNumber
                Case 0, 3, 4, 5, 6, 11, 13, 14, 15, 16, 18, 19, 20, 21, 22, 24, 26
                   GoTo continue
                Case Else
                    MsgBox LoadResString(1201) & vbNewLine & _
                        vbNewLine & LoadResString(1202) & vbNewLine & "0, 3, 4, 5, 6, 11, 13, 14, 15, 16, 18, 19, 20, 21, 22, 24, 26", vbExclamation
                    Call mnuReloadSprite_Click
                    Exit Sub
            End Select
        ElseIf GameCode = "BPE" Then
            Select Case PaletteNumber
                Case 0, 3, 4, 5, 6, 11, 13, 14, 15, 16, 18, 19, 20, 21, 22, 24, 27, 28, 29, 30, 31, 32, 33, 34, 35
                   GoTo continue
                Case Else
                    MsgBox LoadResString(1201) & vbNewLine & _
                        vbNewLine & LoadResString(1202) & vbNewLine & "0, 3, 4, 5, 6, 11, 13, 14, 15, 16, 18, 19, 20, 21, 22, 24, 27, 28, 29, 30, 31, 32, 33, 34, 35", vbExclamation
                    Call mnuReloadSprite_Click
                    Exit Sub
            End Select
        ElseIf GameCode = "BPR" Or GameCode = "BPG" Then
            Select Case PaletteNumber
                Case 0, 3, 4, 5, 6, 16, 19, 20, 21
                   GoTo continue
                Case Else
                    MsgBox LoadResString(1201) & vbNewLine & _
                        vbNewLine & LoadResString(1202) & vbNewLine & "0, 3, 4, 5, 6, 16, 19, 20, 21", vbExclamation
                    Call mnuReloadSprite_Click
                    Exit Sub
            End Select
        End If
        
continue:

    Open strCurrentROM For Binary As #iFreeFile
        
        Get #iFreeFile, lngSpriteBank + (36 * Index) + 1, PaletteModifier
        PaletteModifier = PaletteNumber ' set palette number
        
        Put #iFreeFile, , PaletteModifier ' write to ROM
        
        Get #iFreeFile, lngSpriteBank + (36 * Index) + 12, PrevPal
        Get #iFreeFile, lngSpriteBank + (36 * Index) + 11, PaletteModifier
              
        PrevPal2 = Left$(Hex$(PrevPal), 1) ' first part of the previous palette
        PrevPal3 = Right$(Hex$(PrevPal), 1) 'second part of the previuos palette
        
        If PaletteNumber > 0 And PaletteNumber < 10 Then
            PaletteModifier = Val("&H" & (Val(PrevPal2 & txtPaletteNumber.Text - 1)))
            If PaletteModifier = PrevPal Then Exit Sub
        ElseIf PaletteNumber = 0 Or PaletteNumber = 16 Then
            PaletteModifier = Val("&H" & (Val(PrevPal2 & "0")))
            If PaletteModifier = PrevPal Or PrevPal3 = "A" Then Exit Sub
        Else
            PaletteModifier = Val("&H" & PrevPal2 & "A")
            If PaletteModifier = PrevPal Then
                Call mnuReloadSprite_Click
                Exit Sub
            End If
        End If
        
        Put #iFreeFile, , PaletteModifier
        
    Close #iFreeFile
    Call mnuReloadSprite_Click ' reload sprite
   
End Sub


Private Sub ToggleEditing(blnEnable As Boolean)
    picEditTile.Enabled = blnEnable
    picSelectPalette.Enabled = blnEnable
    picViewSprite.Enabled = blnEnable
    cmdGo.Enabled = blnEnable
    cmdIndexBack.Enabled = blnEnable
    cmdIndexForward.Enabled = blnEnable
    cmdSpriteFrameBack.Enabled = blnEnable
    cmdSpriteFrameForward.Enabled = blnEnable
    txtSpriteFrame.Enabled = blnEnable
    txtSpriteIndex.Enabled = blnEnable
    mnuSave.Enabled = blnEnable
    mnuImportBitmap.Enabled = blnEnable
    mnuExportBitmap.Enabled = blnEnable
    mnuReloadSprite.Enabled = blnEnable
    mnuPrevIndex.Enabled = blnEnable
    mnuNextIndex.Enabled = blnEnable
    mnuPrevFrame.Enabled = blnEnable
    mnuNextFrame.Enabled = blnEnable
    txtPaletteNumber.Enabled = blnEnable
    cmdPaletteChange.Enabled = blnEnable
End Sub
