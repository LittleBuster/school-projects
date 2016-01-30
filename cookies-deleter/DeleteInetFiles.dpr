program DeleteInetFiles;

uses
  Forms,
  Registry,
  Dialogs,
  StdCtrls,
  Main in 'Main.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6};

{$R *.res}
var
Reg : TRegistry;
begin
  Application.Initialize;
  Reg := TRegistry.Create;
Reg.OpenKey('software', true);
if Reg.KeyExists('Del InetFiles')
then begin
Reg.OpenKey('Del InetFiles', true);


if (Reg.ReadString('Name') = '') or (Reg.ReadString('LastName') = '') or (Reg.ReadString('Company') = '')
then begin
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
   Form1.Button3.Click;
  Application.Run;
  end;
  if (Reg.ReadString('Name') <> '') and (Reg.ReadString('LastName') <> '') and (Reg.ReadString('Company') <> '')
then begin
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
  end;
  end;
end.
