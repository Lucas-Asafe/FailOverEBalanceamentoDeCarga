object CM: TCM
  OldCreateOrder = False
  Height = 271
  Width = 415
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DataSnap'
      'HostName=127.0.0.1'
      'Port=8020'
      'CommunicationProtocol=http'
      'DSAuthenticationUser=admin'
      'DSAuthenticationPassword=admin')
    Left = 48
    Top = 40
  end
end
