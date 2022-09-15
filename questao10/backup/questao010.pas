unit questao010;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Bpotencia: TButton;
    Bsair: TButton;
    eVazao: TEdit;
    eAltura: TEdit;
    eDiametro: TEdit;
    eRendimento: TEdit;
    ePotencia: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RgTipo: TRadioGroup;
    procedure BpotenciaClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BpotenciaClick(Sender: TObject);
var
   tg: integer;
   Q, Qa, hg, pg, pgm, Ds, Area, pot, rv : double;
   a, b: array [0..3] of double;
begin
    //inicializar vetor

  a[0] := 0.772;
  a[1] := 0.512;
  a[2] := 0.333;
  a[3] := 0.825;

  b[0] := 0.197;
  b[1] := 0.512;
  b[2] := 0.302;
  b[3] := 0.164;

  //entrada de dados

  Q := StrToFloat( eVazao.Text);
  hg:= StrToFloat(eAltura.Text);
  Ds:= StrTofloat(eDiametro.Text);
  rv:= StrToFloat(eRendimento.Text);
  tg:= rgTipo.ItemIndex;

  //Processamento

  Area:= pi*sqr(Ds)/4*hg;

  Qa:= Q/Area;

  Pgm:= (sqr(Qa) * a[tg]) /(Ln(1+b[tg]*Qa));

  pg := Pgm * hg;

  pot := (Q * 1.2 * Pg)/rv;

  //saída

  ePotencia.Text := FloatToStr(Pot);
end;

end.

