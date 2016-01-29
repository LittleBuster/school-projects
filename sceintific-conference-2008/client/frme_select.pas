// Office Control
//
// Copyright (C) 2008 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit frme_select;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFrame1 = class(TFrame)
    Label1: TLabel;
    sl: TShape;
    Label2: TLabel;
    Label3: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure FrameMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label1DblClick(Sender: TObject);
    procedure Label2DblClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses frmVision1, mainfrm, main_module;

{$R *.dfm}

procedure TFrame1.Label1Click(Sender: TObject);
begin
    sl.Show;
    sl.Top := 8;
end;

procedure TFrame1.Label2Click(Sender: TObject);
begin
    sl.Show;
    sl.Top := 48;
end;

procedure TFrame1.FrameMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    sl.hide;
end;

procedure TFrame1.Label1DblClick(Sender: TObject);
begin
    Vision.Show;
end;

procedure TFrame1.Label2DblClick(Sender: TObject);
begin
    Form1.Frame31.Show;
end;

procedure TFrame1.Label3Click(Sender: TObject);
begin
    sl.Show;
    sl.Top := 88;
end;

end.
