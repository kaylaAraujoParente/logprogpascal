unit questao1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BCparaF: TButton;
    BFparaC: TButton;
    Bsair: TButton;
    Blimpar: TButton;
    EgrausC: TEdit;
    EgrausF: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BCparaFClick(Sender: TObject);
    procedure BFparaCClick(Sender: TObject);
    procedure BsairClick(Sender: TObject);
    procedure BlimparClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BCparaFClick(Sender: TObject);
var
   F, C: double;
begin
    C:= StrtoFloat (EgrausC.Text);
    F:= 1.8*C+32;
    EgrausF.Text:=FloatToStr(F);
end;

procedure TForm1.BFparaCClick(Sender: TObject);
var
   F, C: double;
begin
      F:=StrtoFloat(EgrausF.Text);
      C:=5/9*(F-32);
      EgrausC.Text:=FloatToStr(C);
end;

procedure TForm1.BsairClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.BlimparClick(Sender: TObject);
begin
   EladoA.Text:='';  EladoB.text:='';  EladoC.text:='';
   Mresultado.Lines.Clear
end;

end.

