program MSDClient;

uses
  Forms,
  mainfrm in 'mainfrm.pas' {Form1},
  frme_select in 'frme_select.pas' {Frame1: TFrame},
  frmVision1 in 'frmVision1.pas' {Vision},
  main_module in 'main_module.pas' {DM: TDataModule},
  frme_connections in 'frme_connections.pas' {Frame2: TFrame},
  UstSoedineniefrm in 'UstSoedineniefrm.pas' {US},
  frme_CD_ROM in 'frme_CD_ROM.pas' {Frame3: TFrame},
  frme_FFiles in 'frme_FFiles.pas' {Frame4: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TVision, Vision);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TUS, US);
  Application.Run;
end.
