// Office Control
//
// Copyright (C) 2008 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit frme_CD_ROM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrame3 = class(TFrame)
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses mainfrm;

{$R *.dfm}

procedure TFrame3.Button3Click(Sender: TObject);
begin
    Label3.Caption := '';
    Form1.Frame31.Hide;
end;

procedure TFrame3.Button1Click(Sender: TObject);
begin
    Form1.Send('$F003');
end;

procedure TFrame3.Button2Click(Sender: TObject);
begin
    Form1.Send('$F004');
end;

end.
