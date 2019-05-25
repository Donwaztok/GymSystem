unit ExibirAlunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm10 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Alunos: array[0..99] of Integer;
    MaxAlunos:Integer;
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses DataModule, EditarAlunos, ExibirAulas;

procedure TForm10.Button1Click(Sender: TObject);
begin
Form11.AlunoID:=Alunos[ListBox1.ItemIndex];
Form11.Show;
Hide;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
Hide;
Form9.Show;
end;

procedure TForm10.FormShow(Sender: TObject);
var I: Integer;
begin
ListBox1.Clear;
for I := 0 to MaxAlunos do
  if Alunos[I]<>0 then
    begin
      DataModule1.ADOPessoas.Locate('id',Alunos[I],[]);
      ListBox1.Items.Add(DataModule1.ADOPessoas.FieldByName('nome').AsString);
    end;
ListBox1.ItemIndex:=1;
end;

end.
