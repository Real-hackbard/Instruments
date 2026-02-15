program Instruments;

uses
  Forms,
  Unit1 in 'Unit1.pas' ;

{$R *.res}
{$R melodie2.res}

begin
  Application.Initialize;
  Application.Title := '';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
