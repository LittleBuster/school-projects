// Office Control//
// Copyright (C) 2008 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

library cdrom;

uses
  MMSystem,
  Forms;

procedure CDROMControl(Show : Boolean);
begin
    if Show
    then mciSendString('Set cdaudio door open wait', nil, 0, Application.handle)
    else mciSendString('Set cdaudio door closed wait', nil, 0, Application.handle)
end;

exports CDROMControl;

begin

end.
