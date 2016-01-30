// Cookies deleter
//
// Copyright (C) 2007 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Shellapi, Gauges;

type
  TForm5 = class(TForm)
    Timer1: TTimer;
    Button1: TButton;
    Timer2: TTimer;
    Gauge1: TGauge;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  p : integer=0;
  s : integer = -1;
  tr : boolean = false;
  f : boolean = true;
implementation

uses Main;

{$R *.dfm}

procedure TForm5.Timer1Timer(Sender: TObject);
begin
    if not (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\Content.IE5\*.htm')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.htm')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.bmp')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.gif')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.swf')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.jpg')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\Content.IE5\*.bmp')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\Content.IE5\*.gif')) or (FileExists('C:\Documents and Settings\����\Local Settings\Temporary Internet Files\Content.IE5\*.jpg'))
    then begin
        Timer1.Enabled := false;
        MessageDlg('�������� ����������!', mtInformation, [mbOk],0);
        Close;
        Gauge1.Progress := 0;
        p:=0;
        Form1.Show;
        Form1.Button2.Enabled := false;
    end;
end;

procedure TForm5.Button1Click(Sender: TObject);
Var T:TSHFileOpStruct;
    P:String;
begin
Button1.Enabled := false;
Timer2.Enabled := true;
  P:='C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.htm';
  With T do
  Begin
    Wnd:=0;
    wFunc:=FO_DELETE;
    pFrom:=Pchar(P);
    fFlags:=FOF_NOCONFIRMATION
  End;
  SHFileOperation(T);
  /////////
  P:='C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.bmp';
  With T do
  Begin
    Wnd:=0;
    wFunc:=FO_DELETE;
    pFrom:=Pchar(P);
    fFlags:=FOF_NOCONFIRMATION
  End;
  SHFileOperation(T);
///////////////////////////////
  P:='C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.gif';
  With T do
  Begin
    Wnd:=0;
    wFunc:=FO_DELETE;
    pFrom:=Pchar(P);
    fFlags:=FOF_NOCONFIRMATION
  End;
  SHFileOperation(T);
  ///////////////////////////////
  P:='C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.swf';
  With T do
  Begin
    Wnd:=0;
    wFunc:=FO_DELETE;
    pFrom:=Pchar(P);
    fFlags:=FOF_NOCONFIRMATION
  End;
  SHFileOperation(T);
  ///////////////////////////////
  P:='C:\Documents and Settings\����\Local Settings\Temporary Internet Files\*.jpg';
  With T do
  Begin
    Wnd:=0;
    wFunc:=FO_DELETE;
    pFrom:=Pchar(P);
    fFlags:=FOF_NOCONFIRMATION
  End;
  SHFileOperation(T);
  ////////////////////////////
    P:='C:\Documents and Settings\����\Local Settings\Temporary Internet Files\Content.IE5\*.*';
  With T do
  Begin
    Wnd:=0;
    wFunc:=FO_DELETE;
    pFrom:=Pchar(P);
    fFlags:=FOF_NOCONFIRMATION
  End;
  SHFileOperation(T);
end;

procedure TForm5.Timer2Timer(Sender: TObject);
begin
if (p < 100) and (f = true) then begin
inc(p);
Gauge1.Progress := p;
end;

if p = 1
then Label1.Caption := '���������� � ������...';

 if p = 15
then tr := true;

if p = 100
then f := false;

if tr = true then begin
inc(s);
if Memo1.Lines.Text <>''
then Begin
    if Memo1.Lines[s] =''
    then Label1.Caption := '����������� ������������...';
    if Memo1.Lines[s] <>''
    then begin
        Label1.Caption := '�������� �����:' + Memo1.Lines[s];
    end;
 end;
end;

 if Label1.Caption = '����������� ������������...'
then Timer2.Interval := 1;

if (Label1.Caption = '����������� ������������...') and (Gauge1.Progress = 100) and (Memo1.Lines[s] = '')
then begin
    Timer2.Enabled := false;
    Timer1.Enabled := true;;
end;
end;


end.
