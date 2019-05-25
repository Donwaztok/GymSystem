unit Background;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFormBG = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBG: TFormBG;

implementation

{$R *.dfm}

uses Menu;

procedure TFormBG.FormShow(Sender: TObject);
begin
Top:=Form1.Top;
Left:=Form1.Left;
Height:=Form1.Height;
Width:=Form1.Width;
end;

end.
