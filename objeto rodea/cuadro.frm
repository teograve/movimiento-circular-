VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   11415
   ClientLeft      =   5220
   ClientTop       =   585
   ClientWidth     =   18960
   LinkTopic       =   "Form1"
   ScaleHeight     =   11415
   ScaleWidth      =   18960
   Begin VB.CommandButton iniciar 
      Caption         =   "START"
      Height          =   495
      Left            =   1080
      TabIndex        =   0
      Top             =   1200
      Width           =   2535
   End
   Begin VB.Timer falsotop 
      Enabled         =   0   'False
      Interval        =   25
      Left            =   600
      Top             =   1200
   End
   Begin VB.Timer verdaderotop 
      Enabled         =   0   'False
      Interval        =   25
      Left            =   3720
      Top             =   1200
   End
   Begin VB.Shape objeto 
      BackColor       =   &H000000FF&
      BorderColor     =   &H008080FF&
      FillColor       =   &H0000FFFF&
      Height          =   975
      Left            =   120
      Shape           =   3  'Circle
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub iniciar_Click()
    verdaderotop.Enabled = True
    falsotop.Enabled = True
End Sub


Private Sub parar_Click()
falsotop.Enabled = True
End Sub

Private Sub verdaderotop_Timer()

If objeto.Left > 18000 Then
   falsotop.Enabled = True
End If

If falsotop.Enabled Then
    verdaderotop.Enabled = False

ElseIf objeto.Top < 10000 Then
    objeto.Top = objeto.Top + 200
ElseIf objeto.Top > 10000 Then
    objeto.Left = objeto.Left + 200
End If

End Sub


Private Sub falsotop_Timer()

If objeto.Left < 120 Then
   verdaderotop.Enabled = True
End If


If verdaderotop.Enabled Then
    falsotop.Enabled = False
End If

If objeto.Left > 18000 Then
    objeto.Top = objeto.Top - 200
End If
If objeto.Top < 120 Then
    objeto.Left = objeto.Left - 200
End If


End Sub


