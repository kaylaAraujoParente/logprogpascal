unit questao5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Bcalcular: TButton;
    Blimpar: TButton;
    Bsair: TButton;
    Epeso: TEdit;
    Ealtura: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Mresultado: TMemo;
    Rgsexo: TRadioGroup;
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
  peso, alt, imc: double;
begin
  Peso:= StrToFloat(Epeso.Text);
  alt := StrToFloat(Ealtura.Text);
  imc := peso/sqr(alt);
  if Rgsexo.ItemIndex = 0     //sexo feminino
  then
      if imc<19.1
      then Mresultado.Lines.Add('Abaixo do Peso')
      else
          if imc<25.8
          then Mresultado.Lines.Add('Peso Normal')
           else
               if imc<27.3
               then Mresultado.Lines.Add('Marginalmente Acima do Peso')
               else
                   if imc<31.1
                    then Mresultado.Lines.Add('Acima do Peso Ideal')
                    else Mresultado.Lines.Add('OBESO!')


                     else                               //sexo masculino
                         if imc<20.7
                          then Mresultado.Lines.Add('Abaixo do Peso')
                          else
                               if imc<26.4
                               then Mresultado.Lines.Add('Peso Normal')
                               else
                                    if imc<27.8
                                    then Mresultado.Lines.Add('Marginalmente Acima do Peso')
                                    else
                                         if imc<32.3
                                         then Mresultado.Lines.Add('Acima do Peso Ideal')
                                         else Mresultado.Lines.Add('OBESO!')



end;

procedure TForm1.BlimparClick(Sender: TObject);
begin
  Epeso.Text:=' ';
  Ealtura.Text:=' ';
  Mresultado.Text:=' ';

end;

procedure TForm1.BsairClick(Sender: TObject);
begin
  close;
end;

end.

