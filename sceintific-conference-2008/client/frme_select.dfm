object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 504
  Height = 379
  Color = clBlack
  ParentColor = False
  TabOrder = 0
  OnMouseDown = FrameMouseDown
  object sl: TShape
    Left = 8
    Top = 8
    Width = 489
    Height = 25
    Brush.Color = clBlack
    Pen.Color = clLime
  end
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 473
    Height = 22
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1091#1076#1072#1083#1105#1085#1085#1086#1075#1086' '#1088#1072#1073#1086#1095#1077#1075#1086' '#1089#1090#1086#1083#1072'                             '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    OnClick = Label1Click
    OnDblClick = Label1DblClick
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 323
    Height = 22
    Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1083#1086#1090#1082#1086#1084' CD\DVD-ROM-a'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    OnClick = Label2Click
    OnDblClick = Label2DblClick
  end
  object Label3: TLabel
    Left = 16
    Top = 88
    Width = 159
    Height = 22
    Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1092#1072#1081#1083#1072#1084#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    OnClick = Label3Click
  end
end
