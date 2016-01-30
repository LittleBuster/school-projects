object Vision: TVision
  Left = 395
  Top = 308
  BorderStyle = bsNone
  Caption = 'Vision'
  ClientHeight = 446
  ClientWidth = 688
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 41
    Width = 688
    Height = 405
    Align = alClient
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 41
    Align = alTop
    Color = clBlack
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 128
      Top = 8
      Width = 137
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1101#1082#1088#1072#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
