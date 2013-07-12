object fmTrainingTypeList: TfmTrainingTypeList
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1091#1087#1088#1072#1078#1085#1077#1085#1080#1081
  ClientHeight = 261
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pMain: TPanel
    Left = 0
    Top = 0
    Width = 563
    Height = 220
    Align = alClient
    TabOrder = 0
    object gbTrainingTable: TGroupBox
      Left = 1
      Top = 1
      Width = 561
      Height = 218
      Align = alClient
      Caption = #1058#1080#1087#1099' '#1091#1087#1088#1072#1078#1085#1077#1085#1080#1081
      TabOrder = 0
      object dbgTrainingType: TDBGrid
        Left = 2
        Top = 15
        Width = 557
        Height = 201
        Align = alClient
        DataSource = dsTrainingType
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
    object btnClose: TBitBtn
      Left = 472
      Top = 6
      Width = 75
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
    end
    object btnAdd: TBitBtn
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = btnAddClick
    end
    object btnDelete: TBitBtn
      Left = 97
      Top = 6
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = btnDeleteClick
    end
    object btnSelect: TBitBtn
      Left = 200
      Top = 6
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 3
    end
  end
  object dsTrainingType: TDataSource
    DataSet = dmTrainingType.qSelectAll
    Left = 464
    Top = 48
  end
end
