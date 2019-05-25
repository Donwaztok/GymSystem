object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 188
  Width = 466
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\data.mdb;Persist ' +
      'Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 8
  end
  object ADOPessoas: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Pessoas'
    Left = 40
    Top = 88
  end
  object DataPessoas: TDataSource
    DataSet = ADOPessoas
    Left = 40
    Top = 136
  end
  object ADOAulas: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Aulas'
    Left = 120
    Top = 88
  end
  object DataAulas: TDataSource
    DataSet = ADOAulas
    Left = 120
    Top = 136
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Pessoas where privilegio like 2')
    Left = 120
    Top = 8
  end
  object DataQuery: TDataSource
    DataSet = ADOQuery1
    Left = 192
    Top = 8
  end
  object QueryAulas: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Aulas')
    Left = 304
    Top = 8
  end
  object DataQueryAulas: TDataSource
    DataSet = QueryAulas
    Left = 384
    Top = 8
  end
end
