// Office Control
//
// Copyright (C) 2008 Sergey Denisov.
// Written by Sergey Denisov aka LittleBuster (DenisovS21@gmail.com)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public Licence 3
// as published by the Free Software Foundation; either version 3
// of the Licence, or (at your option) any later version.

unit UstSoedineniefrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls;

type
  TUS = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    PB: TProgressBar;
    Button1: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  US: TUS;

implementation

uses main_module;

{$R *.dfm}

procedure TUS.Timer1Timer(Sender: TObject);
begin
    PB.Position := PB.Position + 5;
    if PB.Position >= 100
    then begin
        Timer1.Enabled := false;
        try
            DM.Client.Connect;
        except
            MessageBox(0, 'Connect error!', 'Error', mb_IconExclamation);
        end;
    end;
end;

procedure TUS.Button1Click(Sender: TObject);
begin
    Close;
    Timer1.Enabled := false;
    PB.Position := 0;
end;

end.
