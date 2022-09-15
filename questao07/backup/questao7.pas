unit questao7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RgTipo: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  tg : integer;
  Q, hg, Pg : double;
  a, b : double;
begin
  Q:= StrToFloat (Edit1.Text);
  hg:= StrToFloat (Edit2.Text);
  tg:= RgTipo.ItemIndex;
  CASE tg of
       0: begin
         a:=0.722; b:=0.197; //arroz
         end;
       1: begin
         a:=0.583 b:=0.512; //milho
         end;
       2: begin
       a:=0.333 b:=0.302; //soja
       end;
       3: begin
       a:=0.825 b:=0.164; //trigo
       end;
  end;
   pg:= (a*sqr(Q) * hg)/ln(1+b*Q);
   Edit3.Text:=FloatToStr(pg);
  end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  close;
end;

end.

