// FastCommander
//
// Copyright (C) 2006 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm7 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    RadioButton3: TRadioButton;
    Button1: TButton;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Password, Unit2;

{$R *.dfm}

procedure TForm7.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    Button1.Click;
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
    if RadioButton2.Checked
    then begin
        hide;
        Form2.SLV1.Root := Edit1.Text;
    end;

    if RadioButton1.Checked
    then begin
        hide;
        Form2.ShellListView2.Root := Edit1.Text;
    end;

    if RadioButton3.Checked
    then begin
        hide;
        Form2.SLV1.Root := Edit1.Text;
        Form2.ShellListView2.Root := Edit1.Text;
    end;
end;

end.
