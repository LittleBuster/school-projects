// FastCommander
//
// Copyright (C) 2006 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls;

type
  TForm3 = class(TForm)
    DBImage1: TDBImage;
    DBNavigator1: TDBNavigator;
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.FormPaint(Sender: TObject);
begin
    DBImage1.DataSource := Form2.DataSource1;
    DBImage1.DataField := Form2.DBImage1.DataField;
    DBNavigator1.DataSource := Form2.DataSource1;
end;

end.
