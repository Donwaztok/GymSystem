unit NovoAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    MaskEdit1: TMaskEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Menu:Boolean;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses DataModule, Menu, Background, Login;

procedure TForm3.Button1Click(Sender: TObject);
begin
if not DataModule1.ADOPessoas.Locate('login',edit3.Text,[]) and
                            (edit4.Text=edit5.Text) then
  begin
    DataModule1.ADOPessoas.Last;
    DataModule1.ADOPessoas.Insert;

    DataModule1.ADOPessoas.FieldByName('nome'      ).AsString := edit1.Text;
    DataModule1.ADOPessoas.FieldByName('endereco'  ).AsString := edit2.Text;
    DataModule1.ADOPessoas.FieldByName('telefone'  ).AsString := maskedit1.Text;
    DataModule1.ADOPessoas.FieldByName('login'     ).AsString := edit3.Text;
    DataModule1.ADOPessoas.FieldByName('senha'     ).AsString := edit4.Text;

    if ComboBox1.ItemIndex=0 then
          DataModule1.ADOPessoas.FieldByName('privilegio').AsInteger:= 0;
    if ComboBox1.ItemIndex=1 then
          DataModule1.ADOPessoas.FieldByName('privilegio').AsInteger:= 1;
    if ComboBox1.ItemIndex=2 then
          DataModule1.ADOPessoas.FieldByName('privilegio').AsInteger:= 2;
    if ComboBox1.ItemIndex=3 then
          DataModule1.ADOPessoas.FieldByName('privilegio').AsInteger:= 9;

    DataModule1.ADOPessoas.Post;
    Hide;
    FormBG.Hide;
    if Menu=False then Form2.Show;
  end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
DataModule1.ADOPessoas.Cancel;
Hide;
FormBG.Hide;
if Menu=False then Form2.Show;
end;

procedure TForm3.Edit3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if DataModule1.ADOPessoas.Locate('login',edit3.Text,[]) then
  begin
    button1.Enabled:=False;
    edit3.Font.Color:=clred;
  end
  else
  begin
    button1.Enabled:=True;
    edit3.Font.Color:=clblack;
  end;
end;

procedure TForm3.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then Button1.Click;
end;

procedure TForm3.Edit5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if (edit4.Text=edit5.Text) then
  begin
    button1.Enabled:=True;
    edit4.Font.Color:=clblack;
    edit5.Font.Color:=clblack;
  end
  else
  begin
    button1.Enabled:=False;
    edit4.Font.Color:=clred;
    edit5.Font.Color:=clred;
  end;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
maskedit1.Text:='';
if DataModule1.ADOPessoas.Locate('id',Form1.UserID,[]) then
  begin
    if DataModule1.ADOPessoas.FieldByName('privilegio').AsInteger=9 then
      begin
        ComboBox1.Enabled:=True;
        ComboBox1.Visible:=True;
        ComboBox1.ItemIndex:=0;
        Label6.Visible:=True;
      end
    else
      begin
        ComboBox1.Enabled:=False;
        ComboBox1.Visible:=False;
        ComboBox1.ItemIndex:=0;
        Label6.Visible:=False;
      end;
  end
else
  begin
    ComboBox1.Enabled:=False;
    ComboBox1.Visible:=False;
    ComboBox1.ItemIndex:=0;
    Label6.Visible:=False;
  end;

edit1.SetFocus ;
end;

end.
