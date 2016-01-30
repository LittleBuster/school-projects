object DM: TDM
  OldCreateOrder = False
  Left = 65534
  Top = 110
  Height = 257
  Width = 260
  object Client: TIdTCPClient
    MaxLineAction = maException
    ReadTimeout = 0
    OnDisconnected = ClientDisconnected
    OnConnected = ClientConnected
    Port = 1
    Left = 24
    Top = 16
  end
  object Server: TIdTCPServer
    Active = True
    Bindings = <>
    CommandHandlers = <>
    DefaultPort = 2
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    OnExecute = ServerExecute
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    Left = 104
    Top = 16
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 24
    Top = 64
  end
  object IdAntiFreeze2: TIdAntiFreeze
    Left = 104
    Top = 64
  end
  object FClient: TIdTrivialFTP
    BufferSize = 20000000
    Port = 3
    ReceiveTimeout = 4000
    Left = 32
    Top = 128
  end
  object IdAntiFreeze4: TIdAntiFreeze
    Left = 112
    Top = 128
  end
end
