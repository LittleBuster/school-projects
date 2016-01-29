// Office Control
//
// Copyright (C) 2008 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit mainfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Text3D, XPMan, StdCtrls, frme_select, frme_connections,
  frme_CD_ROM, frme_FFiles;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    XPManifest1: TXPManifest;
    Frame11: TFrame1;
    Frame21: TFrame2;
    Frame31: TFrame3;
    Frame41: TFrame4;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    List : TStringList;
    procedure Send(Text : string);
  end;

var
  Form1: TForm1;

implementation

uses main_module;

procedure TForm1.Send(Text : string);
begin
    try
        DM.Client.WriteLn(Text);
    except
    end;
end;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
    List := TStringList.Create;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
    List.Free;
end;

end.
