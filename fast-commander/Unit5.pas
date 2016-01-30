// FastCommander
//
// Copyright (C) 2006 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit Unit5;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, Mask, DBTables, Shellapi;

type
  TForm5 = class(TForm)
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit2, Password;

{$R *.DFM}

procedure TForm5.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    Form1.Close;
end;

end.
