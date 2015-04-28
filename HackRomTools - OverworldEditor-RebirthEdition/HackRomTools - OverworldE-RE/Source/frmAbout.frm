VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "About"
   ClientHeight    =   3690
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6150
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmAbout.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3690
   ScaleWidth      =   6150
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Tag             =   "3001"
   Begin VB.Frame Frame3 
      Caption         =   "Original Comment"
      Height          =   1335
      Left            =   128
      TabIndex        =   3
      Tag             =   "3002"
      Top             =   1680
      Width           =   5895
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   $"frmAbout.frx":000C
         Height          =   855
         Left            =   120
         TabIndex        =   4
         Top             =   360
         Width           =   5895
      End
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Height          =   345
      Left            =   128
      TabIndex        =   1
      Top             =   3240
      Width           =   5895
   End
   Begin VB.Label lblVersion 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "<Version>"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   2918
      TabIndex        =   8
      Top             =   1320
      Width           =   885
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Version"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   2348
      TabIndex        =   7
      Tag             =   "3003"
      Top             =   1320
      Width           =   645
   End
   Begin VB.Image imgIcon 
      Height          =   480
      Left            =   180
      Picture         =   "frmAbout.frx":011E
      Top             =   360
      Width           =   480
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Rebirth Edition by HackMew"
      Height          =   195
      Left            =   840
      TabIndex        =   6
      Top             =   840
      Width           =   1995
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      BackColor       =   &H80000009&
      BackStyle       =   0  'Transparent
      Caption         =   "Modded by Tutti/dark01"
      Height          =   195
      Left            =   840
      TabIndex        =   5
      Top             =   600
      Width           =   1725
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackColor       =   &H80000009&
      BackStyle       =   0  'Transparent
      Caption         =   "Original by Xeon"
      Height          =   195
      Left            =   840
      TabIndex        =   2
      Top             =   360
      Width           =   1170
   End
   Begin VB.Label lblApplicationTitle 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Overworld Editor - Rebirth Edition"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   840
      TabIndex        =   0
      Top             =   120
      Width           =   2820
   End
   Begin VB.Shape shpHeaderBackground 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   1125
      Left            =   -30
      Top             =   0
      Width           =   6200
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdOK_Click()
    Unload Me
End Sub

Private Sub Form_Load()
LoadResStrings Me
lblVersion.Caption = App.Major & "." & App.Minor & "." & App.Revision
End Sub
