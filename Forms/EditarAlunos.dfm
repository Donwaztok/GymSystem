object Form11: TForm11
  Left = 583
  Top = 236
  BorderStyle = bsNone
  Caption = 'Form11'
  ClientHeight = 171
  ClientWidth = 290
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
    Left = 92
    Top = 24
    Width = 103
    Height = 13
    Caption = 'Batimentos Cardiacos'
  end
  object Label2: TLabel
    Left = 165
    Top = 51
    Width = 30
    Height = 13
    Caption = 'Massa'
  end
  object Label3: TLabel
    Left = 119
    Top = 78
    Width = 76
    Height = 13
    Caption = 'Press'#227'o Arterial'
  end
  object Button1: TButton
    Left = 120
    Top = 135
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 135
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object MaskEdit1: TMaskEdit
    Left = 201
    Top = 21
    Width = 72
    Height = 21
    EditMask = '999 BPM;1;_'
    MaxLength = 7
    TabOrder = 2
    Text = '    BPM'
  end
  object MaskEdit2: TMaskEdit
    Left = 201
    Top = 48
    Width = 72
    Height = 21
    EditMask = '999,99 Kg;1;_'
    MaxLength = 9
    TabOrder = 3
    Text = '   ,   Kg'
  end
  object MaskEdit3: TMaskEdit
    Left = 201
    Top = 75
    Width = 70
    Height = 21
    EditMask = '99/99;1;_'
    MaxLength = 5
    TabOrder = 4
    Text = '  /  '
  end
end
