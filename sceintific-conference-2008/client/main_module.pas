// Office Control
//
// Copyright (C) 2008 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit main_module;

interface

uses
  SysUtils, Classes, IdAntiFreezeBase, IdAntiFreeze, IdTCPServer,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, Messages, Dialogs,
  Psock, NMMSG, IdUDPBase, IdUDPClient, IdTrivialFTP;

type
  TDM = class(TDataModule)
    Client: TIdTCPClient;
    Server: TIdTCPServer;
    IdAntiFreeze1: TIdAntiFreeze;
    IdAntiFreeze2: TIdAntiFreeze;
    FClient: TIdTrivialFTP;
    IdAntiFreeze4: TIdAntiFreeze;
    procedure ClientConnected(Sender: TObject);
    procedure ClientDisconnected(Sender: TObject);
    procedure ServerExecute(AThread: TIdPeerThread);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses mainfrm, UstSoedineniefrm, frmVision1;

{$R *.dfm}

procedure TDM.ClientConnected(Sender: TObject);
begin
    US.Hide;
    if Client.Host = '127.0.0.1'
    then Form1.Frame21.Image3.Picture.LoadFromFile('OnLine.bmp');
    //Form1.Send('start ' + NMMSGServ1.LocalIP);
end;

procedure TDM.ClientDisconnected(Sender: TObject);
begin
    if Client.Host = '127.0.0.1'
    then Form1.Frame21.Image3.Picture.LoadFromFile('notOnLine.bmp');
end;

procedure TDM.ServerExecute(AThread: TIdPeerThread);
var
    n : string;
begin
    n := AThread.Connection.ReadLn;
    if n = 'run'
    then Form1.List.Clear
    else Form1.List.Add(n);

    if n = '@F003'
    then Form1.Frame31.Label3.Caption := '����� CD\DVD-ROM-a ��������';

    if n = '@F004'
    then Form1.Frame31.Label3.Caption := '����� CD\DVD-ROM-a ��������';

    if n = '@F005'
    then begin
        FClient.Get('scrn.dat', 'scrn.bmp');
        if fileexists('scrn.bmp')
        then Vision.Image1.Picture.LoadFromFile('scrn.bmp');
    end;
end;

end.
