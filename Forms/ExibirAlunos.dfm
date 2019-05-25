object Form10: TForm10
  Left = 427
  Top = 222
  BorderStyle = bsNone
  Caption = 'Form10'
  ClientHeight = 240
  ClientWidth = 463
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
  object ListBox1: TListBox
    Left = 217
    Top = 0
    Width = 246
    Height = 240
    Align = alRight
    ItemHeight = 13
    TabOrder = 0
  end
  object Button1: TButton
    Left = 112
    Top = 207
    Width = 91
    Height = 25
    Caption = 'Dados do Aluno'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 207
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Button2Click
  end
end
