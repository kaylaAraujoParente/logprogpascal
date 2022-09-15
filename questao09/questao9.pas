unit questao9;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, TAGraph,
  TASeries;

type

  { TForm1 }

  TForm1 = class(TForm)
    Bcalcular: TButton;
    Blimpar: TButton;
    Bsair: TButton;
    Chart1: TChart;
    FlineB: TLineSeries;
    Fline: TLineSeries;
    Epopia: TEdit;
    Epopib: TEdit;
    Etempo: TEdit;
    Epopa: TEdit;
    Epopb: TEdit;
    Etaxaa: TEdit;
    Etaxab: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure BcalcularClick(Sender: TObject);
    procedure BlimparClick(Sender: TObject);
    procedure BsairClick(Sender: TObject);
    procedure InitLine;
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
  popia, popib, popa, popb, taxaa, taxab: double;
  tempo, tempografico: integer;
begin
  FreeAndNil (FLine);
  FreeAndNil (FlineB);
  InitLine;

  //entrada
  popia:= StrToFloat(Epopia.Text);
  popib:= StrToFloat(Epopib.Text);
  taxaa:= StrToFloat(Etaxaa.Text);
  taxab:= StrToFloat(Etaxab.Text);

  //processamento
  taxaa:= taxaa/100+1;
  taxab:= taxab/100+1;
  tempo:=0;
  popa:= popia;
  popb:= popib;

  while (popa<=popb) do
  begin
    Fline.AddXY(tempo, popa, '', clGreen);
    FlineB.AddXY(tempo,popb,'', clGreen);

    popa:= popa*taxaa;
    popb:= popb*taxab;
    tempo:= tempo + 1;
  end;

  tempografico := Round(tempo*1.4);

  //saída
  Etempo.Text:=IntToStr(tempo);
  Epopa.Text:=FloatToStr(popa);
  Epopb.Text:=FloatToStr(popb);

  while (tempo <= tempografico) do
  begin
    tempo := tempo + 1;
    popa  := popa * taxaa;
    popb  := popb * taxab;

    Fline.AddXY(tempo, popa, '', clGreen);
    FlineB.AddXY(tempo,popb,'', clGreen);

  end;
end;

procedure TForm1.BlimparClick(Sender: TObject);
begin
  Epopia.Text:='0';
  Epopib.Text:='0';
  Etaxaa.Text:='0';
  Etaxab.Text:='0';
  Etempo.Text:='0';
  Epopa.Text:='0';
  Epopb.Text:='0';
end;

procedure TForm1.BsairClick(Sender: TObject);
begin
  close;
end;

 procedure TForm1.InitLine;
begin
  Fline := TlineSeries.Create(Chart1);
  Fline.ShowLines := true;
  Fline.ShowPoints:= False;
  Fline.Pointer.Brush.Color := clBlue;
  Fline.Title := 'Pop. A';
  Fline.SeriesColor := clRed;
  Chart1.AddSeries(Fline);

  FlineB := TLineSeries.Create(Chart1);
  FlineB.ShowLines := true;
  FlineB.ShowPoints:= False;
  FlineB.Pointer.Brush.Color := clGreen;
  FlineB.Title := 'Pop. B';
  FlineB.SeriesColor := clGreen;
  Chart1.AddSeries(FlineB);

  Chart1.Legend.Visible := True;

end;

end.

