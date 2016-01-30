// Cookies deleter
//
// Copyright (C) 2007 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.


unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Registry;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Image1: TImage;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
    Close;
end;

procedure TForm2.FormShow(Sender: TObject);
var
    Reg : TRegistry;
begin
    Reg := TRegistry.Create;
    Reg.OpenKey('software', true);
    Reg.OpenKey('Del InetFiles', true);
    Label3.Caption := Reg.ReadString('Name');
    Label4.Caption := Reg.ReadString('LastName');
    Label5.Caption := Reg.ReadString('Company');
end;

end.
