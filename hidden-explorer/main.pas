// Office Control
//
// Copyright (C) 2006 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, XPMan, inifiles, ExtCtrls,  OleCtrls, SHDocVw, StdCtrls;

type
  TForm1 = class(TForm)
    XPManifest1: TXPManifest;
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    SpeedButton10: TSpeedButton;
    Panel2: TPanel;
    SpeedButton20: TSpeedButton;
    Label1: TLabel;
    Edit1: TComboBox;
    procedure SpeedButton20Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton20Click(Sender: TObject);
begin
    WebBrowser1.Navigate(Edit1.Text);
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = VK_Return
    then SpeedButton20.Click;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
    try
        WebBrowser1.GoBack;
    except
    end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
    WebBrowser1.Stop;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
    WebBrowser1.Refresh;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
    WebBrowser1.Navigate('www.google.ru');
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
    AlphaBlendValue := ScrollBar1.Position;
end;

end.
