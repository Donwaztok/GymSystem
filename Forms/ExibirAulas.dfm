object Form9: TForm9
  Left = 421
  Top = 274
  BorderStyle = bsNone
  Caption = 'Form9'
  ClientHeight = 240
  ClientWidth = 536
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
    Left = 16
    Top = 144
    Width = 49
    Height = 13
    Caption = 'Comiss'#227'o:'
  end
  object Button1: TButton
    Left = 120
    Top = 207
    Width = 75
    Height = 25
    Caption = 'Alunos'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 207
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 208
    Top = 0
    Width = 328
    Height = 240
    Align = alRight
    DataSource = DataModule1.DataQueryAulas
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'professor'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtdalunos'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'comissao'
        Width = 60
        Visible = True
      end>
  end
end
