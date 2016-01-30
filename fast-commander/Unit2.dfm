object Form2: TForm2
  Left = 198
  Top = 548
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Fast Commander'
  ClientHeight = 371
  ClientWidth = 500
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF007777
    7777777777777777777777777777777777777777777777777777777777770000
    00000000000000000000000000770AAA0C0C000C00C00CCCCCCCC0AAA0770AAA
    0CCCCCCCCCCCCCCCCCCCC0AAA0770A0A0C0C000C0000CCCCCCCCC0A0A0770A0A
    0CCCCCCCCCCCCCCCCCCCC0A0A0770AAA0000000000000000000000AAA0770AAA
    0000000000000000000000AAA0770AAA0CCCCCCCCCCCCCCCCCCCC0AAA0770AAA
    0000000000000000000000AAA0770AAA0000000000000000000000AAA0770AAA
    0CCCCCCCCCCCCCCCCCCCC0AAA0770AAA0000000000000000000000AAA0770AAA
    0000000000000000000000AAA0770AAA0CCCCCCCCCCCCCCCCCCCC0AAA0770AAA
    0000000000000000000000AAA0770AAA0000000000000000000000AAA0770AAA
    A00000000000000000000AAAA0770AAAAAAAAAAAAAAAAAAAAAAAAAAAA0770AAA
    AAAAAAAAAAAAAAAAAAAAAAAAA0770AAAAAAAAAAAAAAAAAAAAAAAAAAAA0770AAA
    A0000A99999999999AAAAAAAA0770AAA00AA09999999999999AAAAAAA0770AAA
    0AAA09999999AAA999AAAAAAA0770AAA0AAA09999999AAA999A9A99AA0770A9A
    0AAA09999999AAA999A999A8A0770A9A0AAA09999999AAA999A9A99AA0770999
    0AAA09999999AAA999AAAAAAA0770A9A0AAA09999999AAA999AAAAAA00700AAA
    0AAA09999999999999AAAAA00000000000000999999999999900000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  Menu = MainMenu1
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 152
    Top = 0
    Width = 230
    Height = 26
    Caption = 'Fast Commander v 2.1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 16
    Width = 35
    Height = 13
    Caption = #1044#1072#1090#1072':'
  end
  object Label3: TLabel
    Left = 8
    Top = 346
    Width = 24
    Height = 13
    Caption = 'cmd'
  end
  object Label4: TLabel
    Left = 504
    Top = 8
    Width = 175
    Height = 13
    Caption = #1043#1088#1072#1092#1086#1087#1086#1089#1090#1088#1086#1080#1090#1077#1083#1100' + ReadMe'
  end
  object SLV1: TShellListView
    Left = 168
    Top = 32
    Width = 161
    Height = 305
    AutoRefresh = True
    ObjectTypes = [otFolders, otNonFolders, otHidden]
    Root = 'rfDesktop'
    ShellTreeView = ShellTreeView1
    ShellComboBox = ShellComboBox1
    Sorted = True
    Ctl3D = False
    ReadOnly = False
    HideSelection = False
    MultiSelect = True
    TabOrder = 0
    ViewStyle = vsSmallIcon
  end
  object DateTimePicker1: TDateTimePicker
    Left = 8
    Top = 32
    Width = 153
    Height = 21
    Date = 39158.858460381950000000
    Time = 39158.858460381950000000
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 56
    Width = 153
    Height = 137
    Caption = #1051#1077#1074#1086#1077' '#1086#1082#1085#1086
    TabOrder = 2
    object ShellComboBox1: TShellComboBox
      Left = 8
      Top = 16
      Width = 137
      Height = 22
      Root = 'rfDesktop'
      ShellTreeView = ShellTreeView1
      ShellListView = SLV1
      UseShellImages = True
      DropDownCount = 8
      TabOrder = 0
    end
    object ShellTreeView1: TShellTreeView
      Left = 8
      Top = 40
      Width = 137
      Height = 89
      ObjectTypes = [otFolders, otHidden]
      Root = 'rfDesktop'
      ShellComboBox = ShellComboBox1
      ShellListView = SLV1
      UseShellImages = True
      AutoRefresh = False
      Indent = 19
      ParentColor = False
      RightClickSelect = True
      ShowRoot = False
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 200
    Width = 153
    Height = 137
    Caption = #1055#1088#1072#1074#1086#1077' '#1086#1082#1085#1086
    TabOrder = 3
    object ShellComboBox2: TShellComboBox
      Left = 8
      Top = 16
      Width = 137
      Height = 22
      Root = 'rfDesktop'
      ShellTreeView = ShellTreeView2
      ShellListView = ShellListView2
      UseShellImages = True
      DropDownCount = 8
      TabOrder = 0
    end
    object ShellTreeView2: TShellTreeView
      Left = 8
      Top = 40
      Width = 137
      Height = 89
      ObjectTypes = [otFolders, otHidden]
      Root = 'rfDesktop'
      ShellComboBox = ShellComboBox2
      ShellListView = ShellListView2
      UseShellImages = True
      AutoRefresh = False
      Indent = 19
      ParentColor = False
      RightClickSelect = True
      ShowRoot = False
      TabOrder = 1
    end
  end
  object ShellListView2: TShellListView
    Left = 336
    Top = 32
    Width = 161
    Height = 305
    AutoRefresh = True
    ObjectTypes = [otFolders, otNonFolders, otHidden]
    Root = 'rfDesktop'
    ShellTreeView = ShellTreeView2
    ShellComboBox = ShellComboBox2
    Sorted = True
    Ctl3D = False
    ReadOnly = False
    HideSelection = False
    MultiSelect = True
    TabOrder = 4
    ViewStyle = vsSmallIcon
  end
  object Edit1: TEdit
    Left = 40
    Top = 344
    Width = 457
    Height = 21
    TabOrder = 5
    OnKeyDown = Edit1KeyDown
  end
  object Memo1: TMemo
    Left = 168
    Top = 392
    Width = 305
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 6
  end
  object Memo2: TMemo
    Left = 504
    Top = 272
    Width = 177
    Height = 73
    ScrollBars = ssVertical
    TabOrder = 7
  end
  object DBImage1: TDBImage
    Left = 504
    Top = 56
    Width = 177
    Height = 185
    DataField = #1043#1088#1072#1092#1080#1082#1072
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit1: TDBEdit
    Left = 504
    Top = 32
    Width = 177
    Height = 21
    DataField = #1053#1053#1072#1079#1074#1072#1085#1080#1077
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBNavigator1: TDBNavigator
    Left = 504
    Top = 248
    Width = 174
    Height = 18
    DataSource = DataSource1
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost, nbRefresh]
    TabOrder = 10
  end
  object Button1: TButton
    Left = 504
    Top = 352
    Width = 75
    Height = 17
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 584
    Top = 352
    Width = 97
    Height = 17
    Caption = #1057#1082#1088#1099#1090#1100
    TabOrder = 12
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 392
    Width = 49
    Height = 17
    Caption = 'Button3'
    TabOrder = 13
    OnClick = Button3Click
  end
  object ComboBox1: TComboBox
    Left = 440
    Top = 8
    Width = 57
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Text = 'f'
    Items.Strings = (
      'f'
      'F'
      'g'
      'G'
      'h'
      'H'
      'k'
      'K'
      'i'
      'I'
      'l'
      'L'
      'N'
      'n'
      'E'
      'e'
      'M'
      'm'
      'O'
      'o'
      'P'
      'p'
      'R'
      'r'
      'S'
      's'
      'T'
      't'
      'U'
      'u')
  end
  object CB1: TCheckBox
    Left = 384
    Top = 8
    Width = 49
    Height = 17
    Caption = #1042#1089#1077'!'
    TabOrder = 15
  end
  object Button4: TButton
    Left = 536
    Top = 136
    Width = 121
    Height = 25
    Caption = #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 16
    OnClick = Button4Click
  end
  object MainMenu1: TMainMenu
    Top = 65528
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N26: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077' '#1073#1080#1073#1083#1080#1086#1090#1077#1082
        OnClick = N26Click
      end
      object N27: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N6Click
      end
    end
    object N2: TMenuItem
      Caption = #1042#1080#1076
      object N9: TMenuItem
        Caption = #1052#1077#1083#1082#1080#1077' '#1079#1085#1072#1095#1082#1080
        OnClick = N9Click
      end
      object N7: TMenuItem
        Caption = #1041#1086#1083#1100#1096#1080#1077' '#1079#1085#1072#1095#1082#1080
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1051#1080#1089#1090
        OnClick = N8Click
      end
      object N10: TMenuItem
        Caption = #1057#1087#1080#1089#1086#1082
        OnClick = N10Click
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object N13: TMenuItem
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1043#1088#1072#1092#1086#1087#1086#1089#1090#1088#1086#1080#1090#1077#1083#1100' '#1080' ReadMe'
        OnClick = N13Click
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object FastCommanderVIEWER1: TMenuItem
        Caption = 'Fast Commander VIEWER ('#1055#1088#1086#1089#1084#1086#1090#1088' '#1089#1092#1086#1090#1086#1075#1088#1072#1092#1080#1088#1086#1074#1072#1085#1085#1086#1081' '#1075#1088#1072#1092#1080#1082#1080')'
        OnClick = FastCommanderVIEWER1Click
      end
      object CheetHtmlViewer1: TMenuItem
        Caption = 'Cheet Html Viewer'
        OnClick = CheetHtmlViewer1Click
      end
    end
    object N3: TMenuItem
      Caption = #1047#1072#1082#1083#1072#1076#1082#1080
      object N11: TMenuItem
        Caption = 
          '----------------------------------Cpu1 (Aleksy)-----------------' +
          '-------------'
        OnClick = N11Click
      end
      object Cpu14: TMenuItem
        Caption = '//Cpu1/'#1052#1086#1081' '#1082#1086#1084#1087#1100#1102#1090#1077#1088'/'
      end
      object N4: TMenuItem
        Caption = '//Cpu1/ '#1052#1086#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'/'#1054#1073#1091#1095#1077#1085#1080#1077'/'#1044#1077#1085#1080#1089#1086#1074' '#1040#1083#1077#1082#1089#1077#1081'/'
        OnClick = N4Click
      end
      object Cpu13: TMenuItem
        Caption = '//Cpu1/ '#1052#1086#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'/'#1054#1073#1091#1095#1077#1085#1080#1077'/'#1044#1077#1085#1080#1089#1086#1074' '#1040#1083#1077#1082#1089#1077#1081'/'#1050#1072#1088#1090#1080#1085#1082#1080'/'
        OnClick = Cpu13Click
      end
      object Cpu11: TMenuItem
        Caption = '//Cpu1/ '#1052#1086#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'/'#1054#1073#1091#1095#1077#1085#1080#1077'/'#1050#1083#1086#1095#1080#1093#1080#1085' '#1045#1075#1086#1088'/'
        OnClick = Cpu11Click
      end
      object Cpu12: TMenuItem
        Caption = '//Cpu1/ '#1052#1086#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'/'#1054#1073#1091#1095#1077#1085#1080#1077'/'#1057#1072#1079#1086#1085#1086#1074#1072' '#1055#1086#1083#1080#1085#1072'/'
        OnClick = Cpu12Click
      end
      object N30: TMenuItem
        Caption = '-'
      end
      object N29: TMenuItem
        Caption = '(cpu2)'
        OnClick = N29Click
      end
      object cpu31: TMenuItem
        Caption = '(cpu3)'
        OnClick = cpu31Click
      end
      object cpu41: TMenuItem
        Caption = '(cpu4)'
        OnClick = cpu41Click
      end
      object cpu51: TMenuItem
        Caption = '(cpu5)'
        OnClick = cpu51Click
      end
      object cpu61: TMenuItem
        Caption = '(cpu6)'
        OnClick = cpu61Click
      end
      object N42: TMenuItem
        Caption = '-'
      end
      object N41: TMenuItem
        Caption = #1051#1086#1082#1072#1083#1100#1085#1072#1103' '#1089#1077#1090#1100'...'
        OnClick = N41Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N15: TMenuItem
        Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072' '#1076#1072#1085#1085#1099#1093
        OnClick = N15Click
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object N22: TMenuItem
        Caption = #1059#1089#1090#1072#1085#1086#1074#1086#1095#1085#1099#1081' '#1087#1072#1082#1077#1090
        OnClick = N22Click
      end
    end
    object N16: TMenuItem
      Caption = #1041#1099#1090#1088#1099#1081' '#1076#1086#1089#1090#1091#1087
      object ping1: TMenuItem
        Caption = 'ping'
        OnClick = ping1Click
      end
      object N28: TMenuItem
        Caption = '-'
      end
      object N17: TMenuItem
        Caption = #1056#1077#1077#1089#1090#1088
        OnClick = N17Click
      end
      object C1: TMenuItem
        Caption = 'C'#1083#1091#1078#1073#1099
        OnClick = C1Click
      end
      object w1: TMenuItem
        Caption = #1043#1088#1091#1087#1087#1086#1074#1072#1103' '#1087#1086#1083#1080#1090#1080#1082#1072
        OnClick = w1Click
      end
      object WindowsWMI1: TMenuItem
        Caption = 'Windows (WMI)'
        OnClick = WindowsWMI1Click
      end
      object Bluetooth1: TMenuItem
        Caption = 'Bluetooth'
        OnClick = Bluetooth1Click
      end
      object N19: TMenuItem
        Caption = #1057#1077#1089#1089#1080#1103' '#1089#1086#1074#1084#1077#1089#1090#1085#1086#1075#1086' '#1076#1086#1089#1090#1091#1087#1072
        OnClick = N19Click
      end
      object N20: TMenuItem
        Caption = #1047#1072#1087#1091#1089#1082' Windows'
        OnClick = N20Click
      end
      object N23: TMenuItem
        Caption = '-'
      end
      object N18: TMenuItem
        Caption = #1059#1076#1072#1083#1105#1085#1085#1099#1081' '#1087#1086#1084#1086#1097#1085#1080#1082
        OnClick = N18Click
      end
      object N25: TMenuItem
        Caption = #1052#1072#1089#1090#1077#1088' '#1087#1077#1088#1077#1085#1086#1089#1072' '#1092#1072#1081#1083#1086#1074
        OnClick = N25Click
      end
      object Windows1: TMenuItem
        Caption = #1063#1072#1090' Windows'
        OnClick = Windows1Click
      end
      object N24: TMenuItem
        Caption = #1051#1086#1082#1072#1083#1100#1085#1072#1103' '#1089#1074#1103#1079#1100
        OnClick = N24Click
      end
      object CPIPTest1: TMenuItem
        Caption = 'TCP/IP Test'
        OnClick = CPIPTest1Click
      end
    end
    object N31: TMenuItem
      Caption = #1048#1085#1090#1077#1088#1085#1077#1090
      object N32: TMenuItem
        Caption = #1057#1072#1081#1090#1099
        object GOOGLE1: TMenuItem
          Caption = 'GOOGLE'
          OnClick = GOOGLE1Click
        end
        object N34: TMenuItem
          Caption = #1057#1093#1077#1084#1099' (Shema.ru)'
          object httpwwwshemaru1: TMenuItem
            Caption = 'http:\\www.shema.ru'
          end
        end
        object N33: TMenuItem
          Caption = #1052#1091#1079#1099#1082#1072
          object N35: TMenuItem
            Caption = 'http:\\www.mtv.ru'
            OnClick = N35Click
          end
          object httpwwwmuztvru1: TMenuItem
            Caption = 'http:\\www.muz-tv.ru'
            OnClick = httpwwwmuztvru1Click
          end
        end
      end
      object N36: TMenuItem
        Caption = 'Proba Intra set'
        OnClick = N36Click
      end
      object N37: TMenuItem
        Caption = #1052#1086#1080' '#1087#1072#1087#1082#1080
        object N38: TMenuItem
          Caption = #1044#1077#1090#1077#1082#1090#1086#1088' '#1083#1078#1080
          OnClick = N38Click
        end
        object N39: TMenuItem
          Caption = '3 '#1082#1084' '#1088#1072#1076#1080#1086#1089#1090
          OnClick = N39Click
        end
        object N40: TMenuItem
          Caption = #1055#1088#1086#1089#1090#1072#1103' '#1088#1072#1076#1080#1086#1089#1090#1072#1085#1094#1080#1103
          OnClick = N40Click
        end
      end
    end
  end
  object SaveDialog1: TSaveDialog
    FileName = 'Gpx2d\Fc1.3\cmd.bat'
    Left = 112
    Top = 408
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 40
  end
  object Table1: TTable
    DatabaseName = 'Gpx2d\Fc1.3\'
    TableName = 'PicCOM+.db'
    Left = 16
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    FileName = 'Gpx2d\Fc1.3\FastCOM+.dll'
    Left = 56
    Top = 8
  end
  object SaveDialog2: TSaveDialog
    FileName = 'Gpx2d\Fc1.3\FastCOM+.dll'
    Left = 96
    Top = 8
  end
end
