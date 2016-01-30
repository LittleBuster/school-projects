// Cookies deleter
//
// Copyright (C) 2007 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Gauges, StdCtrls;

type
  TForm4 = class(TForm)
    Gauge1: TGauge;
    Timer1: TTimer;
    Label1: TLabel;
    Timer2: TTimer;
    Button1: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  p : integer =0;
implementation

uses Main, Unit5;

{$R *.dfm}

procedure TForm4.Timer1Timer(Sender: TObject);
begin
    if p < 99 then begin
        inc(p);
        Gauge1.Progress := p;
    end;

    if p = 99
    then begin
        Timer1.Enabled := false;
        if (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\Content.IE5\*.htm')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.htm')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.bmp')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.gif')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.swf')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.jpg')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\Content.IE5\*.bmp')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\Content.IE5\*.gif')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\Content.IE5\*.jpg'))
        then begin
            Gauge1.Progress := 100;
            Form5.Show;
            Hide;
            Gauge1.Progress := 0;
            p :=0;
            tIMER1.Enabled :=false;
        end
        else begin
            MessageDlg('��� ��������� �������� ������', mtWarning, [mbOk], 0);
            Close;
            Form1.Show;
            Gauge1.Progress := 0;
            p :=0;
        end;
    end;
end;

procedure TForm4.Timer2Timer(Sender: TObject);
begin
    Button1.Click;
    Sleep(2000);
    Timer2.Enabled := false;
end;

procedure TForm4.Button1Click(Sender: TObject);
var
  Mask: String;
  SR: TSearchRec;
begin
  Mask := 'C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.htm';
  if Mask = '' then
    Mask := '*.*';
  Form5.Memo1.Lines.Clear;
  if FindFirst(Mask,faAnyFile,SR)=0 then
  repeat
    Form5.Memo1.Lines.Add(SR.Name);
  until FindNext(SR)<>0;
  FindClose(SR);

  Mask := 'C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.gif';

  if FindFirst(Mask,faAnyFile,SR)=0 then
  repeat
    Form5.Memo1.Lines.Add(SR.Name);
  until FindNext(SR)<>0;
  FindClose(SR);

  Mask := 'C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.bmp';

  if FindFirst(Mask,faAnyFile,SR)=0 then
  repeat
    Form5.Memo1.Lines.Add(SR.Name);
  until FindNext(SR)<>0;
  FindClose(SR);

  Mask := 'C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.swf';

  if FindFirst(Mask,faAnyFile,SR)=0 then
  repeat
    Form5.Memo1.Lines.Add(SR.Name);
  until FindNext(SR)<>0;
  FindClose(SR);
end;


end.
