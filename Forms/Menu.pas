unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Privilegio();
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  UserID:integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses DataModule, Login, NovaAula, NovoAluno, EditarDados, CadAula, TodasAulas,
  EditarAula, ExibirAlunos, ExibirAulas, EditarAlunos, Adm, Background;

procedure TForm1.Privilegio();
var UserLvl:integer;
begin
DataModule1.ADOPessoas.Locate('id',UserID,[]);
UserLvl:=DataModule1.ADOPessoas.FieldByName('privilegio').AsInteger;
if(UserLvl=0) then //Alunos
  begin
    Button1.Enabled:=False;
    Button3.Enabled:=False;
    Button7.Enabled:=False;
    Button8.Enabled:=False;
    Button9.Enabled:=False;
    Button10.Enabled:=False;
  end;
if(UserLvl=1) then //Funcionarios
  begin
    Button1.Enabled:=False;
    Button3.Enabled:=False;
    Button7.Enabled:=False;
    Button8.Enabled:=False;
    Button9.Enabled:=False;
    Button10.Enabled:=False;
  end;
if(UserLvl=2) then //Professores
  begin
    Button1.Enabled:=False;
    Button3.Enabled:=False;
    Button7.Enabled:=False;
    Button8.Enabled:=True;
    Button9.Enabled:=False;
    Button10.Enabled:=False;
  end;
if(UserLvl=9) then //Dono/Gerente
  begin
    Button1.Enabled:=True;
    Button3.Enabled:=True;
    Button7.Enabled:=True;
    Button8.Enabled:=True;
    Button9.Enabled:=True;
    Button10.Enabled:=True;
  end;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
FormBG.Show;
Form12.Show;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
FormBG.Show;
Form4.show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Button1.Enabled:=False;
Button3.Enabled:=False;
Button7.Enabled:=False;
Button8.Enabled:=False;
Button9.Enabled:=False;
Button10.Enabled:=False;
UserID:=0;
Form2.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
FormBG.Show;
Form5.Show;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
FormBG.Show;
Form6.Show;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
FormBG.Show;
Form7.Show;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
FormBG.Show;
Form8.Show;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
FormBG.Show;
Form9.Show;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
FormBG.Show;
Form3.Show;
Form3.Menu:=True;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
Form2.Show;
UserID:=0;
end;

end.
