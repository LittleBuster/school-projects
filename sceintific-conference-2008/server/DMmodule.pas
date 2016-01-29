// Office Control
//
// Copyright (C) 2008 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit DMmodule;

interface

uses
  SysUtils, Classes, IdAntiFreezeBase, IdAntiFreeze, IdTCPServer,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, Messages, Dialogs,
  IdUDPBase, IdUDPClient, IdTrivialFTP, IdUDPServer, IdTrivialFTPServer,
  ExtCtrls, graphics, windows, stdctrls, variants, MMSystem, Forms;

type
  TDM = class(TDataModule)
    Server: TIdTCPServer;
    Client: TIdTCPClient;
    Timer1: TTimer;
    FServer: TIdTrivialFTPServer;
    IdAntiFreeze3: TIdAntiFreeze;
    IdAntiFreeze1: TIdAntiFreeze;
    IdAntiFreeze2: TIdAntiFreeze;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ServerExecute(AThread: TIdPeerThread);
    procedure FServerReadFile(Sender: TObject; var FileName: String;
      const PeerInfo: TPeerInfo; var GrantAccess: Boolean;
      var AStream: TStream; var FreeStreamOnComplete: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Send;
    procedure SendA(Strng : string);
  end;

var
  DM: TDM;
  List : TStringlist;

  procedure ScreenSave;
  external 'ScrnSave.dll';

  procedure CDROMControl(Show : Boolean);
  external 'cdrom.dll';
implementation

procedure TDM.Send;
var
    i : integer;
begin
    Client.Connect;
    Client.WriteLn('run');
    for i := 0 to List.Count - 1 do
        Client.WriteLn(List.Strings[i]);
    Client.Disconnect;
end;

procedure TDM.SendA(Strng : string);
begin
    Client.Connect;
    Client.WriteLn(Strng);
    Client.Disconnect;
end;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
    List := TStringlist.create;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
    List.Free;
end;

procedure TDM.Timer1Timer(Sender: TObject);
begin
    List.Text := 'mkl;hsdjftlhjduf89g3589uyipdf[jgiopdfhglsdfoghosd;';
end;

procedure TDM.ServerExecute(AThread: TIdPeerThread);
var
    n : string;
begin
    n := Athread.Connection.Readln;

    if copy(n,1,5) = 'start'
    then Client.Host := copy(n,7,length(n));

    if n = '$F003'
    then begin
        CDROMControl(true);
        SendA('@F003');
    end;

    if n = '$F004'
    then begin
        CDROMControl(false);
        SendA('@F004');
    end;

    if n = '$F005'
    then begin
        ScreenSave;
        if fileexists('scrn.dat')
        then SendA('@F005');
    end;
end;

procedure TDM.FServerReadFile(Sender: TObject; var FileName: String;
  const PeerInfo: TPeerInfo; var GrantAccess: Boolean;
  var AStream: TStream; var FreeStreamOnComplete: Boolean);
begin
    if FileExists(FileName) then
    begin
        AStream := TFileStream.Create(FileName, fmOpenRead);
        GrantAccess := True;
        FreeStreamOnComplete := True
    end else
        GrantAccess := False;
end;

end.
