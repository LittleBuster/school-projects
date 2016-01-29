// Office Control
//
// Copyright (C) 2008 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit frme_connections;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TFrame2 = class(TFrame)
    Shape2: TShape;
    sl: TShape;
    Image2: TImage;
    Image1: TImage;
    Label1: TLabel;
    Image3: TImage;
    Image4: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eHost: TEdit;
    Label5: TLabel;
    ePort: TEdit;
    Label6: TLabel;
    eRPort: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label7: TLabel;
    RichEdit1: TRichEdit;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses main_module, UstSoedineniefrm;

{$R *.dfm}

procedure TFrame2.Label1Click(Sender: TObject);
begin
    sl.Show;
    sl.Top := 14;
    eHost.Text := '10.54.9.68';
    ePort.Text := '1';
    eRPort.Text := '2';
end;

procedure TFrame2.Label2Click(Sender: TObject);
begin
    sl.Top := 54;
    eHost.Text := '127.0.0.1';
    ePort.Text := '1';
    eRPort.Text := '2';
end;

procedure TFrame2.Button1Click(Sender: TObject);
begin
    with DM.Client do
    begin
        Host := eHost.Text;
        Port := StrToInt(ePort.Text);
    end;

    DM.FClient.Host := eHost.Text;
    US.PB.Position := 0;
    DM.Server.DefaultPort := StrToInt(eRPort.Text);
    US.Show;
    US.Timer1.Enabled := true;
end;

procedure TFrame2.Button2Click(Sender: TObject);
begin
    DM.Client.Disconnect;
end;

procedure TFrame2.Image3DblClick(Sender: TObject);
begin
    Button1.Click;
end;

end.
