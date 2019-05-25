object Form5: TForm5
  Left = 541
  Top = 266
  BorderStyle = bsNone
  Caption = 'Form5'
  ClientHeight = 293
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 23
    Top = 11
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 5
    Top = 38
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label3: TLabel
    Left = 56
    Top = 127
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object Label4: TLabel
    Left = 224
    Top = 175
    Width = 58
    Height = 13
    Caption = 'Nova Senha'
  end
  object Label5: TLabel
    Left = 8
    Top = 79
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label6: TLabel
    Left = 224
    Top = 127
    Width = 64
    Height = 13
    Caption = 'Senha Antiga'
  end
  object Edit1: TEdit
    Left = 56
    Top = 8
    Width = 311
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 56
    Top = 35
    Width = 311
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 56
    Top = 146
    Width = 143
    Height = 21
    Enabled = False
    TabOrder = 9
  end
  object Edit4: TEdit
    Left = 224
    Top = 194
    Width = 143
    Height = 21
    PasswordChar = '*'
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 224
    Top = 221
    Width = 143
    Height = 21
    PasswordChar = '*'
    TabOrder = 6
    OnKeyUp = Edit5KeyUp
  end
  object Button1: TButton
    Left = 126
    Top = 248
    Width = 73
    Height = 25
    Caption = 'Alterar Dados'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 248
    Width = 73
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 8
    OnClick = Button2Click
  end
  object MaskEdit1: TMaskEdit
    Left = 56
    Top = 76
    Width = 119
    Height = 21
    EditMask = '(99) 9 9999-9999;1;_'
    MaxLength = 16
    TabOrder = 2
    Text = '(  )       -    '
  end
  object Edit6: TEdit
    Left = 224
    Top = 146
    Width = 143
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
  object Button3: TButton
    Left = 294
    Top = 248
    Width = 73
    Height = 25
    Caption = 'Alterar Senha'
    TabOrder = 7
    OnClick = Button3Click
  end
end
