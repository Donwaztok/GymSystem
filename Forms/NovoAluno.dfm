object Form3: TForm3
  Left = 455
  Top = 266
  BorderStyle = bsNone
  Caption = 'Form3'
  ClientHeight = 233
  ClientWidth = 380
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
    Top = 127
    Width = 30
    Height = 13
    Caption = 'Senha'
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
    Top = 62
    Width = 77
    Height = 13
    Caption = 'Nivel de Usu'#225'rio'
  end
  object Edit1: TEdit
    Left = 56
    Top = 8
    Width = 313
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 56
    Top = 35
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 56
    Top = 146
    Width = 145
    Height = 21
    TabOrder = 3
    OnKeyUp = Edit3KeyUp
  end
  object Edit4: TEdit
    Left = 224
    Top = 146
    Width = 145
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 224
    Top = 173
    Width = 145
    Height = 21
    PasswordChar = '*'
    TabOrder = 5
    OnKeyPress = Edit5KeyPress
    OnKeyUp = Edit5KeyUp
  end
  object Button1: TButton
    Left = 294
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Criar'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 7
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
  object ComboBox1: TComboBox
    Left = 224
    Top = 76
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 8
    Text = '0 - Aluno'
    Items.Strings = (
      '0 - Aluno'
      '1 - Funcion'#225'rio'
      '2 - Professor'
      '9 - Gerente')
  end
end
