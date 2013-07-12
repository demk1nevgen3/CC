object fmProgramSelect: TfmProgramSelect
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' '#1087#1088#1077#1076#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1086#1081' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
  ClientHeight = 329
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pControl: TPanel
    Left = 0
    Top = 279
    Width = 426
    Height = 50
    Align = alBottom
    TabOrder = 0
    object btnAdd: TBitBtn
      Left = 8
      Top = 16
      Width = 121
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
      TabOrder = 0
    end
    object btnSelect: TBitBtn
      Left = 135
      Top = 16
      Width = 130
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
      TabOrder = 1
    end
    object btnDelete: TBitBtn
      Left = 271
      Top = 17
      Width = 129
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
      TabOrder = 2
    end
  end
  object pMain: TPanel
    Left = 0
    Top = 0
    Width = 426
    Height = 279
    Align = alClient
    TabOrder = 1
    object dbgProgram: TDBGrid
      Left = 1
      Top = 1
      Width = 424
      Height = 277
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
