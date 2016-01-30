object Form4: TForm4
  Left = 195
  Top = 153
  BorderStyle = bsToolWindow
  Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1082#1072' '#1082' '#1091#1076#1072#1083#1077#1085#1080#1102
  ClientHeight = 58
  ClientWidth = 378
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge1: TGauge
    Left = 8
    Top = 24
    Width = 361
    Height = 25
    ForeColor = 15990784
    Progress = 0
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 100
    Height = 13
    Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1092#1072#1081#1083#1086#1074'...'
  end
  object Button1: TButton
    Left = 232
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 40
    Top = 16
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer2Timer
    Left = 112
    Top = 16
  end
end
