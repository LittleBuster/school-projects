program MSDServer;

uses
  Forms,
  Windows,
  DMmodule in 'DMmodule.pas' {DM: TDataModule};

{$R *.res}

var
WhEvent:THandle;
begin
Application.Initialize;
ShowWindow(Application.Handle,SW_HIDE);

Application.CreateForm(TDM, DM);
  Application.Run;
WhEvent:=CreateEvent(nil, true, false, 'st');
while (true) do
begin
WaitForSingleObject(WhEvent, 50);
Application.ProcessMessages;
end;
end.
