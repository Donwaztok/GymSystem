object Form4: TForm4
  Left = 498
  Top = 266
  BorderStyle = bsNone
  Caption = 'Form4'
  ClientHeight = 149
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 36
    Top = 11
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 6
    Top = 38
    Width = 61
    Height = 13
    Caption = 'Valor p/ Aula'
  end
  object Label3: TLabel
    Left = 21
    Top = 66
    Width = 46
    Height = 13
    Caption = 'Professor'
  end
  object Label4: TLabel
    Left = 250
    Top = 38
    Width = 32
    Height = 13
    Caption = 'Alunos'
  end
  object Label5: TLabel
    Left = 240
    Top = 65
    Width = 45
    Height = 13
    Caption = 'Comiss'#227'o'
  end
  object Label6: TLabel
    Left = 343
    Top = 65
    Width = 11
    Height = 13
    Caption = '%'
  end
  object Edit1: TEdit
    Left = 73
    Top = 8
    Width = 264
    Height = 21
    TabOrder = 0
  end
  object MaskEdit1: TMaskEdit
    Left = 73
    Top = 35
    Width = 116
    Height = 21
    EditMask = '999,99;1;_'
    MaxLength = 6
    TabOrder = 1
    Text = '   ,  '
  end
  object Button1: TButton
    Left = 262
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Criar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = Button2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 73
    Top = 62
    Width = 145
    Height = 21
    KeyField = 'nome'
    ListField = 'nome'
    ListSource = DataModule1.DataQuery
    TabOrder = 3
  end
  object MaskEdit2: TMaskEdit
    Left = 288
    Top = 35
    Width = 47
    Height = 21
    EditMask = '99;1;_'
    MaxLength = 2
    TabOrder = 2
    Text = '  '
  end
  object MaskEdit3: TMaskEdit
    Left = 288
    Top = 62
    Width = 45
    Height = 21
    EditMask = '99,99;1;_'
    MaxLength = 5
    TabOrder = 6
    Text = '  ,  '
  end
end
