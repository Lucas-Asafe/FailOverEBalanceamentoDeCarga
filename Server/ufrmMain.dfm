object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Servidor parado...'
  ClientHeight = 99
  ClientWidth = 350
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
    Width = 26
    Height = 13
    Caption = 'Porta'
  end
  object edtPorta: TEdit
    Left = 24
    Top = 40
    Width = 49
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object btnStartStop: TButton
    Left = 79
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Start / Stop'
    Default = True
    TabOrder = 1
    OnClick = btnStartStopClick
  end
end
