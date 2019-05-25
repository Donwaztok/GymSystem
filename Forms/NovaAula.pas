unit NovaAula;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    Button1: TButton;
    Button2: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    MaskEdit2: TMaskEdit;
    Label5: TLabel;
    MaskEdit3: TMaskEdit;
    Label6: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses DataModule, Background;

procedure TForm4.Button1Click(Sender: TObject);
var alunos:string; I,MaxAlunos:integer;
begin
if(edit1.Text<>'')and(maskedit2.Text<>'')and(maskedit1.Text<>'') then
  begin
    DataModule1.ADOAulas.Last;
    DataModule1.ADOAulas.Insert;

    MaxAlunos:=StrToInt(maskedit2.Text);
    alunos:='';
    for I := 1 to MaxAlunos do alunos:=alunos+'0;';

    DataModule1.ADOAulas.FieldByName('nome').AsString:=edit1.Text;
    DataModule1.ADOAulas.FieldByName('valor').AsFloat:=StrToFloat(maskedit1.Text);
    DataModule1.ADOAulas.FieldByName('professor').AsInteger
                := DataModule1.ADOQuery1.FieldByName('id').AsInteger;
    DataModule1.ADOAulas.FieldByName('qtdalunos').AsString:=IntToStr(MaxAlunos-1);
    DataModule1.ADOAulas.FieldByName('alunos').AsString:=alunos;
    DataModule1.ADOAulas.FieldByName('comissao').AsFloat:=StrToFloat(maskedit3.Text);

    DataModule1.ADOAulas.Post;
    Form4.Hide;
    FormBG.Hide;
  end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
DataModule1.ADOAulas.Cancel;
Form4.Hide;
FormBG.Hide;
end;

end.
