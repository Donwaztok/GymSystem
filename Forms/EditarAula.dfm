object Form8: TForm8
  Left = 455
  Top = 251
  BorderStyle = bsNone
  Caption = 'Form8'
  ClientHeight = 192
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 36
    Top = 67
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 6
    Top = 94
    Width = 61
    Height = 13
    Caption = 'Valor p/ Aula'
  end
  object Label3: TLabel
    Left = 21
    Top = 122
    Width = 46
    Height = 13
    Caption = 'Professor'
  end
  object Label4: TLabel
    Left = 249
    Top = 94
    Width = 32
    Height = 13
    Caption = 'Alunos'
  end
  object Label5: TLabel
    Left = 239
    Top = 121
    Width = 45
    Height = 13
    Caption = 'Comiss'#227'o'
  end
  object Label6: TLabel
    Left = 337
    Top = 121
    Width = 11
    Height = 13
    Caption = '%'
  end
  object Edit1: TEdit
    Left = 73
    Top = 64
    Width = 262
    Height = 21
    TabOrder = 0
  end
  object MaskEdit1: TMaskEdit
    Left = 73
    Top = 91
    Width = 115
    Height = 21
    EditMask = '999,99;1;_'
    MaxLength = 6
    TabOrder = 1
    Text = '   ,  '
  end
  object Button1: TButton
    Left = 262
    Top = 160
    Width = 74
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 153
    Top = 160
    Width = 74
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 73
    Top = 118
    Width = 144
    Height = 21
    KeyField = 'nome'
    ListField = 'nome'
    ListSource = DataModule1.DataQuery
    TabOrder = 4
  end
  object MaskEdit2: TMaskEdit
    Left = 287
    Top = 91
    Width = 47
    Height = 21
    EditMask = '99;1;_'
    MaxLength = 2
    TabOrder = 5
    Text = '  '
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 72
    Top = 8
    Width = 145
    Height = 21
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DataModule1.DataAulas
    TabOrder = 6
    OnClick = DBLookupComboBox2Click
  end
  object MaskEdit3: TMaskEdit
    Left = 287
    Top = 118
    Width = 45
    Height = 21
    EditMask = '99,99;1;_'
    MaxLength = 5
    TabOrder = 7
    Text = '  ,  '
  end
end
