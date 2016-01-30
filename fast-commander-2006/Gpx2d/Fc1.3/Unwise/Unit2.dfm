object Form2: TForm2
  Left = 200
  Top = 141
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #1061#1086#1076' '#1088#1072#1073#1086#1090#1099':'
  ClientHeight = 117
  ClientWidth = 262
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 8
    Width = 86
    Height = 13
    Caption = #1061#1086#1076' '#1091#1076#1072#1083#1077#1085#1080#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10878980
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 40
    Width = 241
    Height = 17
    TabOrder = 0
  end
  object Button1: TButton
    Left = 96
    Top = 80
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 8
    Top = 168
    Width = 409
    Height = 73
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      'del C:\Windows\INF\agp2_aces\new_conf\my_prog\F_C\ /s /q')
    ParentFont = False
    TabOrder = 2
  end
  object Button2: TButton
    Left = 40
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    Visible = False
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 56
    Top = 80
  end
  object SaveDialog1: TSaveDialog
    FileName = 'un.bat'
    Left = 192
    Top = 88
  end
end
