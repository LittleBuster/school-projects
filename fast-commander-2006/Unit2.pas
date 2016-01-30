// FastCommander
//
// Copyright (C) 2006 Sergey Denisov.
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
  Dialogs, ComCtrls, ShellCtrls, StdCtrls, Shellapi, Menus, DB, DBTables,
  ExtCtrls, DBCtrls, Mask;

type
  TForm2 = class(TForm)
    SLV1: TShellListView;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    ShellComboBox1: TShellComboBox;
    ShellTreeView1: TShellTreeView;
    GroupBox2: TGroupBox;
    ShellComboBox2: TShellComboBox;
    ShellTreeView2: TShellTreeView;
    Label2: TLabel;
    ShellListView2: TShellListView;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label3: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    SaveDialog1: TSaveDialog;
    N3: TMenuItem;
    N4: TMenuItem;
    Cpu11: TMenuItem;
    Cpu12: TMenuItem;
    N11: TMenuItem;
    Cpu13: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    Memo2: TMemo;
    DBImage1: TDBImage;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    Table1: TTable;
    Button1: TButton;
    Label4: TLabel;
    Button2: TButton;
    FastCommanderVIEWER1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog2: TSaveDialog;
    N15: TMenuItem;
    CheetHtmlViewer1: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    Button3: TButton;
    C1: TMenuItem;
    w1: TMenuItem;
    WindowsWMI1: TMenuItem;
    Bluetooth1: TMenuItem;
    N19: TMenuItem;
    Windows1: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    CPIPTest1: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    ComboBox1: TComboBox;
    ping1: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    cpu31: TMenuItem;
    cpu41: TMenuItem;
    cpu51: TMenuItem;
    cpu61: TMenuItem;
    CB1: TCheckBox;
    Cpu14: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N34: TMenuItem;
    httpwwwshemaru1: TMenuItem;
    GOOGLE1: TMenuItem;
    N33: TMenuItem;
    N35: TMenuItem;
    httpwwwmuztvru1: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    Button4: TButton;
    N41: TMenuItem;
    N42: TMenuItem;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Cpu11Click(Sender: TObject);
    procedure Cpu12Click(Sender: TObject);
    procedure Cpu13Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FastCommanderVIEWER1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure CheetHtmlViewer1Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure w1Click(Sender: TObject);
    procedure WindowsWMI1Click(Sender: TObject);
    procedure Bluetooth1Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure Windows1Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure CPIPTest1Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure ping1Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure cpu31Click(Sender: TObject);
    procedure cpu41Click(Sender: TObject);
    procedure cpu51Click(Sender: TObject);
    procedure cpu61Click(Sender: TObject);
    procedure GOOGLE1Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure httpwwwmuztvru1Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Password, Unit3, Unit4, Unit6, Unit7;

{$R *.dfm}

procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    Memo2.Lines.SaveToFile(SaveDialog2.FileName);
    Form1.Close;
end;

procedure TForm2.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key = VK_Return) and (Edit1.Text = '******')
    then Begin
        Form7.Show;
    end;

    if Key = VK_Return
    then Begin
        Button3.Click;
    end;
end;

procedure TForm2.FormPaint(Sender: TObject);
begin
    Edit1.SetFocus;
end;

procedure TForm2.N6Click(Sender: TObject);
begin
    Form1.Close;
end;

procedure TForm2.N11Click(Sender: TObject);
begin
    SLV1.Root := '//Cpu1/';
end;

procedure TForm2.N4Click(Sender: TObject);
begin
    SLV1.Root := '//Cpu1/��� ���������/��������/������� �������/';
end;

procedure TForm2.Cpu11Click(Sender: TObject);
begin
    SLV1.Root := '//Cpu1/��� ���������/��������/�������� ����/';
end;

procedure TForm2.Cpu12Click(Sender: TObject);
begin
    SLV1.Root := '//Cpu1/��� ���������/��������/�������� ������/';
end;

procedure TForm2.Cpu13Click(Sender: TObject);
begin
    SLV1.Root := '//Cpu1/��� ���������/��������/������� �������/��������/';
end;

procedure TForm2.N9Click(Sender: TObject);
begin
    SLV1.ViewStyle := vsSmallIcon;
    ShellListView2.ViewStyle := vsSmallIcon;
end;

procedure TForm2.N8Click(Sender: TObject);
begin
    SLV1.ViewStyle := vsList;
    ShellListView2.ViewStyle := vsList;
end;

procedure TForm2.N10Click(Sender: TObject);
begin
    SLV1.ViewStyle := vsReport;
    ShellListView2.ViewStyle := vsReport;
end;

procedure TForm2.N7Click(Sender: TObject);
begin
    SLV1.ViewStyle := vsIcon;
    ShellListView2.ViewStyle := vsIcon;
end;

procedure TForm2.N13Click(Sender: TObject);
begin
    Width := 694;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
    Width := 508;
end;

procedure TForm2.FastCommanderVIEWER1Click(Sender: TObject);
begin
    Form3.Show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
    Memo2.Lines.SaveToFile(SaveDialog2.FileName);
end;

procedure TForm2.N15Click(Sender: TObject);
begin
    ShellListView2.Root := 'C:\Windows\INF\agp2_aces\new_conf\my_prog\F_C\Gpx2d\Fc1.3\';
    ShellListView2.ViewStyle := vsSmallIcon;
end;

procedure TForm2.CheetHtmlViewer1Click(Sender: TObject);
begin
    Form4.Show;
end;

procedure TForm2.N17Click(Sender: TObject);
begin
    Edit1.Text := 'regedit.exe';
    Button3.Click;
end;

procedure TForm2.N18Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\WINDOWS\system32\mstsc.exe', '', '', SW_SHOW);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
    Memo1.Lines.Text := Edit1.Text;
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
    ShellExecute(0, 'open', 'Gpx2d\Fc1.3\cmd.bat', '', '', SW_SHOW);
    edit1.Clear;
end;

procedure TForm2.C1Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\WINDOWS\system32\services.msc', '', '', SW_SHOW);
end;

procedure TForm2.w1Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\WINDOWS\system32\gpedit.msc', '', '', SW_SHOW);
end;

procedure TForm2.WindowsWMI1Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\WINDOWS\system32\wmimgmt.msc', '', '', SW_SHOW);
end;

procedure TForm2.Bluetooth1Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\WINDOWS\system32\fsquirt.exe', '', '', SW_SHOW);
end;

procedure TForm2.N19Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\WINDOWS\system32\rtcshare.exe', '', '', SW_SHOW);
end;

procedure TForm2.Windows1Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\WINDOWS\system32\winchat.exe', '', '', SW_SHOW);
end;

procedure TForm2.N20Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\WINDOWS\SchedLgU.Txt', '', '', SW_SHOW);
end;

procedure TForm2.N22Click(Sender: TObject);
begin
    ShellListView2.Root := 'C:\WINDOWS\Installer\';
    ShellListView2.ViewStyle := vsSmallIcon;
end;

procedure TForm2.N24Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\WINDOWS\system32\dllcache\conf.exe', '', '', SW_SHOW);
end;

procedure TForm2.N25Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\WINDOWS\system32\dllcache\migwiz.exe', '', '', SW_SHOW);
end;

procedure TForm2.CPIPTest1Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\WINDOWS\system32\dllcache\tcptest.exe', '', '', SW_SHOW);
end;

procedure TForm2.N26Click(Sender: TObject);
begin
    Edit1.Text := 'xcopy C:\Windows\INF\agp2_aces\new_conf\my_prog\F_C\Gpx2d\Fc1.3\FastCOM+.dll ' + ComboBox1.Text + ':\My\Library\L_fc_read\ /y';
    Button3.Click;
    Sleep(1000);
    Edit1.Text := 'xcopy C:\Windows\INF\agp2_aces\new_conf\my_prog\F_C\Gpx2d\Fc1.3\PicCOM+.db ' + ComboBox1.Text + ':\My\Library\L_fc_pic\ /y';
    Button3.Click;
    Sleep(1000);
    Edit1.Text := 'xcopy C:\Windows\INF\agp2_aces\new_conf\my_prog\F_C\Gpx2d\Fc1.3\PicCOM+.MB ' + ComboBox1.Text + ':\My\Library\L_fc_pic\ /y';
    Button3.Click;

    If CB1.Checked
    then  begin
        Sleep(1000);
        Edit1.Text := 'xcopy //Cpu1/���_���������/��������/�������_�������/��������/Gpx2d/Fc1.3/PicCOM+.MB ' + ComboBox1.Text + ':\My\Library_LXE\L_fc_pic\ /y';
        Button3.Click;
        Sleep(1000);
        Edit1.Text := 'xcopy //Cpu1/���_���������/��������/�������_�������/��������/Gpx2d/Fc1.3/PicCOM+.db ' + ComboBox1.Text + ':\My\Library_LXE\L_fc_pic\ /y';
        Button3.Click;
        Sleep(1000);
        Edit1.Text := 'xcopy //Cpu1/���_���������/��������/�������_�������/��������/Gpx2d/Fc1.3/FastCOM+.dll ' + ComboBox1.Text + ':\My\Library_LXE\L_fc_read\ /y';
        Button3.Click;
    end;
end;

procedure TForm2.ping1Click(Sender: TObject);
begin
    Form6.Show;
end;

procedure TForm2.N29Click(Sender: TObject);
begin
    SLV1.Root := '//Cpu2/';
end;

procedure TForm2.cpu31Click(Sender: TObject);
begin
    SLV1.Root := '//Cpu3/';
end;

procedure TForm2.cpu41Click(Sender: TObject);
begin
    SLV1.Root := '//Cpu4/';
end;

procedure TForm2.cpu51Click(Sender: TObject);
begin
    SLV1.Root := '//Cpu5/';
end;

procedure TForm2.cpu61Click(Sender: TObject);
begin
    SLV1.Root := '//Cpu6/';
end;

procedure TForm2.GOOGLE1Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'http:\\www.google.ru', '', '', SW_SHOW);
end;

procedure TForm2.N35Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'http:\\www.mtv.ru', '', '', SW_SHOW);
end;

procedure TForm2.httpwwwmuztvru1Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'http:\\www.muz-tv.ru', '', '', SW_SHOW);
end;

procedure TForm2.N36Click(Sender: TObject);
begin
    ShellListView2.Root := 'www.mtv.ru';
end;

procedure TForm2.N38Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\Windows\INF\agp2_aces\new_conf\my_prog\�����\rshema_��������_���.htm', '', '', SW_SHOW);
end;

procedure TForm2.N39Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\Windows\INF\agp2_aces\new_conf\my_prog\�����\prost_radiost_3km.htm', '', '', SW_SHOW);
end;

procedure TForm2.N40Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\Windows\INF\agp2_aces\new_conf\my_prog\�����\portativnaja_stantia.htm', '', '', SW_SHOW);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
    Button4.Hide;
    Table1.Open;
    Memo2.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm2.N41Click(Sender: TObject);
begin
    Form7.Show;
end;

end.
