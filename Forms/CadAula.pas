unit CadAula;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses DataModule, Menu, Background;

procedure TForm6.Button1Click(Sender: TObject);
var
  teste:string;
  lista:TStringList;
  alunos: array[0..99] of integer;
  AulaID,MaxAlunos,I:integer;
  Inscrito:boolean;
begin
Inscrito :=False;
AulaID   :=DataModule1.ADOAulas.FieldByName('id'       ).AsInteger;
MaxAlunos:=DataModule1.ADOAulas.FieldByName('qtdalunos').AsInteger;
//Criar Lista
lista := TStringList.Create;
//Se Encontrar a aula, separa a string
if(DataModule1.ADOAulas.Locate('id',AulaID,[])) then
  begin
    teste:=DataModule1.ADOAulas.FieldByName('alunos').AsString;
    ExtractStrings([';'],[],pchar(teste),lista);
    for i := 0 to MaxAlunos do
      if(lista.Strings[i]<>'') then
          alunos[i]:=StrToInt(lista.Strings[i]);
          //Joga os valores da string pro vetor
    FreeAndNil(lista);
  end;
//Adiciona o Novo aluno
for I := 0 to MaxAlunos do if(alunos[i]=Form1.UserID) then Inscrito:=True;

if Inscrito then ShowMessage('Já Inscrito nessa aula!') else
  for I := 0 to MaxAlunos do
    if (alunos[i]=0) then
      begin
        Alunos[i]:=Form1.UserID;
        break;
      end;
//Reconstroi a String
teste:='';
for i := 0 to MaxAlunos do
    teste:=teste+IntToStr(alunos[i])+';';
//Devolve pro banco de dados
if(DataModule1.ADOAulas.Locate('id',aulaid,[])) then
  begin
    DataModule1.ADOAulas.Edit;
    DataModule1.ADOAulas.FieldByName('alunos').AsString:=teste;
    DataModule1.ADOAulas.Post;
  end;

Hide;
FormBG.Hide;
end;


procedure TForm6.Button2Click(Sender: TObject);
begin
DataModule1.ADOAulas.Cancel;
Hide;
FormBG.Hide;
end;

end.
