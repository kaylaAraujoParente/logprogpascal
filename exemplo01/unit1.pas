unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    EditAltura: TEdit;
    EditBase: TEdit;
    EditArea: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  altura : real;
  base   : real;
  area   : real;
begin
  // recuperacao de entradas

   altura := StrToFloat ( EditAltura.text );
   base   := StrToFloat ( EditBase.text );

  // processamento

  area := (base*altura)/2;

  // saida

  EditArea.Text := FloatToStr(area);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

end.

