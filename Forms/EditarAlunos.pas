unit EditarAlunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type
  TForm11 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AlunoID:Integer;
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses DataModule, ExibirAlunos;

procedure TForm11.Button1Click(Sender: TObject);
begin
if(DataModule1.ADOPessoas.Locate('id',AlunoID,[])) then
  begin
    DataModule1.ADOPessoas.Edit;
    DataModule1.ADOPessoas.FieldByName('batimentos').AsString:=maskedit1.Text;
    DataModule1.ADOPessoas.FieldByName('massa'     ).AsString:=maskedit2.Text;
    DataModule1.ADOPessoas.FieldByName('pressao'   ).AsString:=maskedit3.Text;
    DataModule1.ADOPessoas.Post;
  end
else ShowMessage('Erro ao Editar');
Hide;
Form10.Show;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
Hide;
Form10.Show;
end;

procedure TForm11.FormShow(Sender: TObject);
begin
if(DataModule1.ADOPessoas.Locate('id',AlunoID,[])) then
  begin
    maskedit1.Text:=DataModule1.ADOPessoas.FieldByName('batimentos').AsString;
    maskedit2.Text:=DataModule1.ADOPessoas.FieldByName('massa').AsString;
    maskedit3.Text:=DataModule1.ADOPessoas.FieldByName('pressao').AsString;
  end
else Hide;
end;

end.
