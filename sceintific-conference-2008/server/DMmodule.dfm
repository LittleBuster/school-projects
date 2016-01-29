object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 15
  Top = 10
  Height = 220
  Width = 441
  object Server: TIdTCPServer
    Active = True
    Bindings = <>
    CommandHandlers = <>
    DefaultPort = 1
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    OnExecute = ServerExecute
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    Left = 160
    Top = 24
  end
  object Client: TIdTCPClient
    MaxLineAction = maException
    ReadTimeout = 0
    Host = '127.0.0.1'
    Port = 2
    Left = 88
    Top = 24
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 24
    Top = 16
  end
  object FServer: TIdTrivialFTPServer
    Active = True
    BufferSize = 20000000
    Bindings = <>
    DefaultPort = 3
    OnReadFile = FServerReadFile
    Left = 360
    Top = 48
  end
  object IdAntiFreeze3: TIdAntiFreeze
    Left = 360
    Top = 96
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 88
    Top = 72
  end
  object IdAntiFreeze2: TIdAntiFreeze
    Left = 160
    Top = 72
  end
end
