object Form12: TForm12
  Left = 285
  Top = 133
  BorderStyle = bsNone
  Caption = 'Form12'
  ClientHeight = 443
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  DesignSize = (
    730
    443)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 410
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 24
    Width = 714
    Height = 189
    Anchors = [akLeft, akTop, akRight]
    DataSource = DataModule1.DataPessoas
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'batimentos'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pressao'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'massa'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'privilegio'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 224
    Width = 714
    Height = 180
    Anchors = [akLeft, akTop, akRight]
    DataSource = DataModule1.DataAulas
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alunos'
        Width = 340
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
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtdalunos'
        Width = 54
        Visible = True
      end>
  end
end
