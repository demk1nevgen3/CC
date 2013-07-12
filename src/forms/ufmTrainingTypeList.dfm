object fmTrainingTypeList: TfmTrainingTypeList
  Left = 0
  Top = 0
  Caption = 'fmTrainingTypeList'
  ClientHeight = 261
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pMain: TPanel
    Left = 0
    Top = 0
    Width = 563
    Height = 220
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 152
    ExplicitTop = 48
    ExplicitWidth = 185
    ExplicitHeight = 41
    object gbTrainingTable: TGroupBox
      Left = 1
      Top = 1
      Width = 561
      Height = 218
      Align = alClient
      Caption = #1058#1080#1087#1099' '#1091#1087#1088#1072#1078#1085#1077#1085#1080#1081
      TabOrder = 0
      ExplicitLeft = 377
      ExplicitWidth = 218
      ExplicitHeight = 185
      object dbgTrainingType: TDBGrid
        Left = 2
        Top = 15
        Width = 557
        Height = 201
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object pControl: TPanel
    Left = 0
    Top = 220
    Width = 563
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 200
    ExplicitTop = 168
    ExplicitWidth = 185
    object btnClose: TBitBtn
      Left = 472
      Top = 6
      Width = 75
      Height = 25
      Caption = 'btnClose'
      TabOrder = 0
    end
    object btnAdd: TBitBtn
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = 'btnAdd'
      TabOrder = 1
    end
    object btnDelete: TBitBtn
      Left = 97
      Top = 6
      Width = 75
      Height = 25
      Caption = 'btnDelete'
      TabOrder = 2
    end
  end
end
