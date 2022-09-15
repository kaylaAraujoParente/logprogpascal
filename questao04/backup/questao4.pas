unit questao4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ETemp: TEdit;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    MResultado: TMemo;
    MenuItem1: TMenuItem;
    Limpar: TMenuItem;
    Sair: TMenuItem;
    CparaF: TMenuItem;
    FparaC: TMenuItem;
    procedure CparaFClick(Sender: TObject);
    procedure FparaCClick(Sender: TObject);
    procedure LimparClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CparaFClick(Sender: TObject);
var
  C, F: double;
begin
     C := StrToFloat( ETemp.Text);
     F := 1.8*C + 32;

      MResultado.Lines.Add('Temperatura °C = '+ FloatToStr(c) );
      MResultado.Lines.Add('Temperatura °F = '+ FloatToStr(F) );
      MResultado.Lines.Add(' ');
end;

procedure TForm1.FparaCClick(Sender: TObject);
var
  C, F: double;
begin
     F:= StrToFloat ( Etemp.Text);
     C:= 5/9*(F-32);

      MResultado.Lines.Add('Temperatura °F = '+ FloatToStr(F) );
      MResultado.Lines.Add('Temperatura °C = '+ FloatToStr(C) );
      MResultado.Lines.Add(' ');

end;

procedure TForm1.LimparClick(Sender: TObject);
begin
     ETempo.Text:= '0,0';
     Mresultado.Lines.Clear;
end;

procedure TForm1.SairClick(Sender: TObject);
begin
  close;
end;

end.

