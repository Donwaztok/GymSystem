unit TodasAulas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm7 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Aulas: array[0..99] of integer;
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses DataModule, Menu, Background;


procedure TForm7.Button1Click(Sender: TObject);
var
  teste:string;
  lista:TStringList;
  alunos: array[0..99] of integer;
  MaxAlunos,I:integer;
begin
lista := TStringList.Create;

if(DataModule1.ADOAulas.Locate('id',Aulas[ListBox1.ItemIndex],[])) then
  begin
    teste:=DataModule1.ADOAulas.FieldByName('alunos').AsString;
    MaxAlunos:=DataModule1.ADOAulas.FieldByName('qtdalunos').AsInteger;
    ExtractStrings([';'],[],pchar(teste),lista);
    for i := 0 to MaxAlunos do
      if(lista.Strings[i]<>'') then
          alunos[i]:=StrToInt(lista.Strings[i]);
    FreeAndNil(lista);
  end;
//Remove Aluno
for I := 0 to MaxAlunos do
  if (alunos[i]=Form1.UserID) then
    begin
      Alunos[i]:=0;
      break;
    end;
//Reconstroi a String
teste:='';
for i := 0 to MaxAlunos do
    teste:=teste+IntToStr(alunos[i])+';';
//Devolve pro banco de dados
if(DataModule1.ADOAulas.Locate('id',Aulas[ListBox1.ItemIndex],[])) then
  begin
    DataModule1.ADOAulas.Edit;
    DataModule1.ADOAulas.FieldByName('alunos').AsString:=teste;
    DataModule1.ADOAulas.Post;
  end;
Hide;
FormBG.Hide;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
Hide;
FormBG.Hide;
end;

procedure TForm7.FormShow(Sender: TObject);
var
  Alunos:string;
  ListaAlunos:TStringList;
  MaxAlunos,I,J,K,L,QtdAulas:Integer;
  Mensal:Currency;
begin
ListBox1.Items.Clear;
QtdAulas:=DataModule1.ADOAulas.RecordCount-1;
for I := 0 to 99 do Aulas[I]:=0;
I:=0; L:=0; Mensal:=0;
while(I<=QtdAulas) do
  begin
    if(DataModule1.ADOAulas.Locate('id',I,[])) then
      begin
        ListaAlunos:=TStringList.Create;
        MaxAlunos:=DataModule1.ADOAulas.FieldByName('qtdalunos').AsInteger;
        Alunos:=DataModule1.ADOAulas.FieldByName('alunos').AsString;
        ExtractStrings([';'],[' '],pchar(Alunos),ListaAlunos);
        for J := 0 to MaxAlunos do
          if(ListaAlunos.Strings[J]=IntToStr(Form1.UserID)) then
            begin
              while(true) do
                  if aulas[L]=0 then
                  begin
                    Aulas[L]:=DataModule1.ADOAulas.FieldByName('id').AsInteger;
                    Listbox1.Items.Add(DataModule1.ADOAulas.FieldByName('nome').AsString);
                    Mensal:=Mensal+DataModule1.ADOAulas.FieldByName('valor').AsFloat;
                    break;
                  end else L:=L+1;
              break;
            end;
        FreeAndNil(ListaAlunos);
      end else QtdAulas:=QtdAulas+1;
    I:=I+1;
  end;
ListBox1.ItemIndex:=0;
Label1.Caption:='Mensalidade: '+FloatToStr(Mensal);
end;

end.
