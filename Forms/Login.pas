unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    BTNNA: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BTNNAClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Menu, NovoAluno, DataModule, Background;

procedure TForm2.BTNNAClick(Sender: TObject);
begin
Form3.show;
Form3.Menu:=False;
Hide;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
if(edit1.Text<>'') and (edit2.Text<>'') then
  if ((DataModule1.ADOPessoas.Locate('login',edit1.Text,[]))  and
   (DataModule1.ADOPessoas.FieldByName('senha').AsString=edit2.Text)) then
    begin
      Form1.Show;
      Form2.Hide;
      Form1.UserID:=DataModule1.ADOPessoas.FieldByName('id').AsInteger;
      Form1.Privilegio;
      FormBG.Hide;
    end
  else ShowMessage('Login ou Senha Incorreto!');
end;

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then Button1.Click;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit1.SetFocus;
FormBG.Show;
end;

end.
