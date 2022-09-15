unit questao2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Btriangulo: TButton;
    Blimpar: TButton;
    Bsair: TButton;
    EladoA: TEdit;
    EladoB: TEdit;
    EladoC: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Mresultado: TMemo;
    procedure BlimparClick(Sender: TObject);
    procedure BsairClick(Sender: TObject);
    procedure BtrianguloClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BtrianguloClick(Sender: TObject);
var
  a, b, c: double;
begin
  a:=StrToFloat(EladoA.Text);
  b:=StrToFloat(EladoB.Text);
  c:=StrToFloat(EladoC.Text);
  if ((A<(B+C)) and (B<(A+C)) and (C<(A+B)))
  then
     if ((A=B) and (B=C))
       then Mresultado.Lines.Add('Triângulo Equilátero')
       else
         if ((A=B) or (B=C) or (C=A))
           then Mresultado.Lines.Add('triângulo Isósceles')
           else Mresultado.Lines.Add('Triângulo Escaleno')
     else Mresultado.Lines.Add('As medidas não formam Triângulo');


end;

procedure TForm1.BlimparClick(Sender: TObject);
begin
  EladoA.Text:=''; EladoB.Text:=''; EladoC.Text:='';
  Mresultado.Lines.Clear;
end;

procedure TForm1.BsairClick(Sender: TObject);
begin
  close;
end;

end.

