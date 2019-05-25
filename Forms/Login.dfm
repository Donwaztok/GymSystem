object Form2: TForm2
  Left = 498
  Top = 340
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 105
  ClientWidth = 325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 83
    Top = 11
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object Label2: TLabel
    Left = 83
    Top = 38
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Edit1: TEdit
    Left = 120
    Top = 8
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 120
    Top = 35
    Width = 193
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Button1: TButton
    Left = 238
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Entrar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object BTNNA: TButton
    Left = 8
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Novo Aluno'
    TabOrder = 3
    OnClick = BTNNAClick
  end
end
