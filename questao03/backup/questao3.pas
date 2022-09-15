unit questao3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Bcalcular: TButton;
    Blimpar: TButton;
    Bsair: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Mresultado: TMemo;
    procedure BcalcularClick(Sender: TObject);
    procedure BlimparClick(Sender: TObject);
    procedure BsairClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BcalcularClick(Sender: TObject);
var
   nsal, sal: double;
begin
    sal:=StrToFloat (Edit1.text);
    if sal<500
       then nsal:= sal*1.15
       else
         if sal<=1000
            then nsal:= sal*1.10
            else nsal:= sal*1.05;
    Mresultado.Lines.Add ('Novo Salário (R$): ' + FloatToStr(nsal));
end;

procedure TForm1.BlimparClick(Sender: TObject);
begin
  nsal.text:='';
  Mresultado.Lines.Clear;
end;

procedure TForm1.BsairClick(Sender: TObject);
begin
   close;
end;

end.

