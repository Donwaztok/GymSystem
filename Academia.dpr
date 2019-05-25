program Academia;

uses
  Vcl.Forms,
  Menu in 'Forms\Menu.pas' {Form1},
  Login in 'Forms\Login.pas' {Form2},
  DataModule in 'Forms\DataModule.pas' {DataModule1: TDataModule},
  NovoAluno in 'Forms\NovoAluno.pas' {Form3},
  NovaAula in 'Forms\NovaAula.pas' {Form4},
  EditarDados in 'Forms\EditarDados.pas' {Form5},
  CadAula in 'Forms\CadAula.pas' {Form6},
  TodasAulas in 'Forms\TodasAulas.pas' {Form7},
  EditarAula in 'Forms\EditarAula.pas' {Form8},
  ExibirAulas in 'Forms\ExibirAulas.pas' {Form9},
  ExibirAlunos in 'Forms\ExibirAlunos.pas' {Form10},
  EditarAlunos in 'Forms\EditarAlunos.pas' {Form11},
  Adm in 'Forms\Adm.pas' {Form12},
  Background in 'Forms\Background.pas' {FormBG};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TFormBG, FormBG);
  Application.Run;
end.
