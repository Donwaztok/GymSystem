unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOPessoas: TADOTable;
    DataPessoas: TDataSource;
    ADOAulas: TADOTable;
    DataAulas: TDataSource;
    ADOQuery1: TADOQuery;
    DataQuery: TDataSource;
    QueryAulas: TADOQuery;
    DataQueryAulas: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CadAula;

{$R *.dfm}


end.
