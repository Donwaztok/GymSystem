unit EditarDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    MaskEdit1: TMaskEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Button3: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses DataModule, Menu, Background;

procedure TForm5.Button1Click(Sender: TObject);
begin
if(DataModule1.ADOPessoas.Locate('id',Form1.UserID,[])) then
  begin
    DataModule1.ADOPessoas.Edit;
    DataModule1.ADOPessoas.FieldByName('nome'    ).AsString := edit1.Text;
    DataModule1.ADOPessoas.FieldByName('endereco').AsString := edit2.Text;
    DataModule1.ADOPessoas.FieldByName('telefone').AsString := maskedit1.Text;
    DataModule1.ADOPessoas.Post;
  end
else form5.Hide;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
DataModule1.ADOPessoas.Cancel;
Form5.Hide;
FormBG.Hide;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
if(DataModule1.ADOPessoas.Locate('id',Form1.UserID,[])) then
  if(edit4.Text=edit5.Text) then
    if(edit6.Text=DataModule1.ADOPessoas.FieldByName('senha').AsString) then
      begin
        DataModule1.ADOPessoas.Edit;
        DataModule1.ADOPessoas.FieldByName('senha').AsString:=edit4.Text;
        DataModule1.ADOPessoas.Post;
      end
    else ShowMessage('Senha antiga incorreta')
  else ShowMessage('Senhas Não correspondem')
else ShowMessage('Falha ao encontrar ID de usuário');
end;

procedure TForm5.Edit5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if (edit4.Text=edit5.Text) then
  begin
    edit4.Font.Color:=clblack;
    edit5.Font.Color:=clblack;
  end
  else
  begin
    edit4.Font.Color:=clred;
    edit5.Font.Color:=clred;
  end;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
  if(DataModule1.ADOPessoas.Locate('id',Form1.UserID,[])) then
    begin
      edit1.Text:=DataModule1.ADOPessoas.FieldByName('nome').AsString;
      edit2.Text:=DataModule1.ADOPessoas.FieldByName('endereco').AsString;
      maskedit1.Text:=DataModule1.ADOPessoas.FieldByName('telefone').AsString;
      edit3.Text:=DataModule1.ADOPessoas.FieldByName('login').AsString;
    end
  else form5.Hide;
end;

end.
