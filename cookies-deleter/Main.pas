// Cookies deleter
//
// Copyright (C) 2007 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Shellapi, Registry;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Button3: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit6;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
    Close;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
    Close;
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'www.Microsoft.com', '', '', SW_SHOW);
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
    Form2.Show;
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
    Form3.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    Form4.Show;
    Hide;
    Form4.Timer1.Enabled := true;
    Form4.Timer2.Enabled := true;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  CONST
    SC_DragMove = $F012;
  begin
    ReleaseCapture;
    Form1.Perform(WM_SysCommand, SC_DragMove,0);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
    if Button3.Enabled = false
    then begin
        Hide;
        Form6.Show;
    end;
    Timer1.Enabled := false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    Button3.Enabled := false;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    Form6.Show;
end;

end.
