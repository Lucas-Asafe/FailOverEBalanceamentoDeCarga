object frmClient: TfrmClient
  Left = 0
  Top = 0
  Caption = 'frmClient'
  ClientHeight = 172
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblPorta: TLabel
    Left = 24
    Top = 21
    Width = 51
    Height = 13
    Caption = 'Mensagem'
  end
  object lblMensagemEnviada: TLabel
    Left = 24
    Top = 85
    Width = 5
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
  end
  object edtMensagem: TEdit
    Left = 24
    Top = 40
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object btnSend: TButton
    Left = 263
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Send'
    Default = True
    TabOrder = 1
    OnClick = btnSendClick
  end
end
