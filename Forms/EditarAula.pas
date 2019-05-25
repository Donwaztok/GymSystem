unit EditarAula;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    Button1: TButton;
    Button2: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    MaskEdit2: TMaskEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    MaskEdit3: TMaskEdit;
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Alunos: array[0..99] of Integer;
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses DataModule, Background;

procedure TForm8.Button1Click(Sender: TObject);
var
  StrAlunos:String;
  I,MaxAlunos:integer;
begin
if(edit1.Text<>'')and(maskedit2.Text<>'')and(maskedit1.Text<>'') then
  begin
    DataModule1.ADOAulas.Edit;

    MaxAlunos:=StrToInt(maskedit2.Text);
    StrAlunos:='';
    for I := 1 to MaxAlunos do
      if Alunos[I-1]<>0 then StrAlunos:=StrAlunos+IntToStr(Alunos[i-1])+';'
        else StrAlunos:=StrAlunos+'0;';

    DataModule1.ADOAulas.FieldByName('nome').AsString:=edit1.Text;
    DataModule1.ADOAulas.FieldByName('valor').AsFloat:=StrToFloat(maskedit1.Text);
    DataModule1.ADOAulas.FieldByName('professor').AsInteger
                := DataModule1.ADOQuery1.FieldByName('id').AsInteger;
    DataModule1.ADOAulas.FieldByName('qtdalunos').AsString:=IntToStr(MaxAlunos-1);
    DataModule1.ADOAulas.FieldByName('alunos').AsString:=StrAlunos;
    DataModule1.ADOAulas.FieldByName('comissao').AsFloat:=StrToFloat(maskedit3.Text);

    DataModule1.ADOAulas.Post;
    Hide;
    FormBG.Hide;
  end;

end;

procedure TForm8.Button2Click(Sender: TObject);
begin
Hide;
FormBG.Hide;
end;

procedure TForm8.DBLookupComboBox2Click(Sender: TObject);
var
  StrAlunos:String;
  MaxAlunos,I:Integer;
  ListaAlunos:TStringList;
begin
  for I := 0 to 99 do Alunos[I]:=0;

  ListaAlunos:=TStringList.Create;
  edit1.Text:=DataModule1.ADOAulas.FieldByName('nome').AsString;
  maskedit1.Text:=DataModule1.ADOAulas.FieldByName('valor').AsString;
  MaxAlunos:=DataModule1.ADOAulas.FieldByName('qtdalunos').AsInteger;
  maskedit2.Text:=IntToStr(MaxAlunos+1);
  maskedit3.Text:=DataModule1.ADOAulas.FieldByName('comissao').AsString;

  StrAlunos:=DataModule1.ADOAulas.FieldByName('alunos').AsString;
  ExtractStrings([';'],[],pchar(StrAlunos),ListaAlunos);
  for I := 0 to MaxAlunos do
    if(ListaAlunos.Strings[I]<>'') then
        Alunos[I]:=StrToInt(ListaAlunos.Strings[I]);
  FreeAndNil(ListaAlunos);
end;

end.
