program Explorer;

uses
  Forms,
  Windows,
  Messages,
  main in 'main.pas' {Form1};

{$R *.res}

var UniqueMapping : THandle;
FirstWindow : THandle;
begin
UniqueMapping := CreateFileMapping($ffffffff,
nil, PAGE_READONLY, 0, 32,'MyMap');
if UniqueMapping = 0 then
begin
MessageBox(0, 'Второй экземпляр уже запущен!', 'err', mb_IconExclamation);
Halt;
end
else if GetLastError = ERROR_ALREADY_EXISTS then
begin
FirstWindow := FindWindowEx(0, 0, TForm1.ClassInfo, nil);
if FirstWindow = 0 then
SetForegroundWindow(FirstWindow);
Halt;
end;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
