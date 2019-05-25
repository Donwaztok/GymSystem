object Form7: TForm7
  Left = 441
  Top = 148
  BorderStyle = bsNone
  Caption = 'Form7'
  ClientHeight = 206
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 96
    Width = 63
    Height = 13
    Caption = 'Mensalidade:'
  end
  object Button1: TButton
    Left = 144
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Desistir'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 241
    Top = 0
    Width = 222
    Height = 206
    Align = alRight
    ItemHeight = 13
    TabOrder = 2
  end
end
