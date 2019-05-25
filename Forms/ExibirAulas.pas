unit ExibirAulas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm9 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses DataModule, Menu, ExibirAlunos, Background;

procedure TForm9.Button1Click(Sender: TObject);
var
  teste:string;
  lista:TStringList;
  AulaID,MaxAlunos,I:integer;
begin
lista := TStringList.Create;
teste:=DataModule1.QueryAulas.FieldByName('alunos').AsString;
MaxAlunos:=DataModule1.QueryAulas.FieldByName('qtdalunos').AsInteger;
Form10.MaxAlunos:=MaxAlunos;

ExtractStrings([';'],[],pchar(teste),lista);
for I := 0 to MaxAlunos do
  if(lista.Strings[I]<>'') then
      Form10.Alunos[I]:=StrToInt(lista.Strings[I]);
FreeAndNil(lista);

Form10.Show;
Hide;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
Hide;
FormBG.Hide;
end;

procedure TForm9.FormShow(Sender: TObject);
var
  I:Integer;
  Comissao:Currency;
begin
DataModule1.QueryAulas.SQL.Clear;
DataModule1.QueryAulas.SQL.Add('select * from Aulas where professor = '
        +IntToStr(Form1.UserID));
DataModule1.QueryAulas.Open;
Comissao:=0;
DataModule1.QueryAulas.First;
for I := 0 to DataModule1.QueryAulas.RecordCount-1 do
  begin
    Comissao:=Comissao
        +((DataModule1.QueryAulas.FieldByName('comissao').AsFloat/100)
          *DataModule1.QueryAulas.FieldByName('valor').AsFloat);
    DataModule1.QueryAulas.Next;
  end;
DataModule1.QueryAulas.First;
Label1.Caption:='Comissão: '+FloatToStr(Comissao);
end;

end.
