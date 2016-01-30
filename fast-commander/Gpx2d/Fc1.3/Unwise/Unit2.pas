// FastCommander
//
// Copyright (C) 2006 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Shellapi;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Button1: TButton;
    Timer1: TTimer;
    SaveDialog1: TSaveDialog;
    Memo1: TMemo;
    Button2: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  k : integer = 0;
implementation

uses Unit3;

{$R *.dfm}

procedure TForm2.Timer1Timer(Sender: TObject);
begin
    inc(k);
    ProgressBar1.Position := k;
    if k = 100
    then Begin
        Memo1.Lines.SaveToFile(SaveDialog1.FileName);
        ShellExecute(0, 'open', 'un.bat', '', '', SW_SHOW);
        Button2.Click;
        Timer1.Enabled := false;
        MessageDlg('�������� ���������!', mtInformation, [mbOk],0);
        Form2.Hide;
        Form3.Show;
    end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
    Sleep(1000);
    Memo1.Lines.Text := 'del C:\Windows\Winui.dll /s /q';
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
    ShellExecute(0, 'open', 'un.bat', '', '', SW_SHOW);
    Sleep(1000);
    Memo1.Lines.Text := 'del C:\Windows\System\Sysui.dll /s /q';
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
    ShellExecute(0, 'open', 'un.bat', '', '', SW_SHOW);
    Sleep(1000);
    Memo1.Lines.Text := 'del C:\Windows\WEB\Webmast.dll /s /q';
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
    ShellExecute(0, 'open', 'un.bat', '', '', SW_SHOW);
end;

end.
