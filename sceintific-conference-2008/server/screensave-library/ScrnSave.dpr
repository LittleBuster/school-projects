// Office Control//
// Copyright (C) 2008 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

library ScrnSave;

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls;

{$R *.res}

procedure ScreenSave;
var
    bmp: TBitmap;
    DC: HDC;
begin
    bmp:=TBitmap.Create;
    bmp.Height:=Screen.Height;
    bmp.Width:=Screen.Width;
    DC:=GetDC(0);  //����p����p ��p���
    bitblt(bmp.Canvas.Handle, 0, 0, Screen.Width, Screen.Height, DC, 0, 0, SRCCOPY);
    try
        bmp.SaveToFile('scrn.dat');
    except
    end;
    ReleaseDC(0, DC);
end;

exports ScreenSave;

begin
end.
