program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Udm in 'Udm.pas' {DM: TDataModule},
  Unit2 in 'Unit2.pas' {FStagiaire},
  UOffres in 'UOffres.pas' {FOffres};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFStagiaire, FStagiaire);
  Application.CreateForm(TFOffres, FOffres);
  Application.Run;
end.
