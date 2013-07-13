object fmAddTrainingType: TfmAddTrainingType
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1086#1077' '#1091#1087#1088#1072#1078#1085#1077#1085#1080#1077
  ClientHeight = 213
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btnCancel: TBitBtn
    Left = 290
    Top = 180
    Width = 75
    Height = 25
    Caption = 'btnCancel'
    TabOrder = 0
    OnClick = btnCancelClick
  end
  object btnOK: TBitBtn
    Left = 200
    Top = 180
    Width = 75
    Height = 25
    Caption = 'btnOK'
    Enabled = False
    TabOrder = 1
    OnClick = btnOKClick
  end
  object EName: TEdit
    Left = 184
    Top = 16
    Width = 193
    Height = 21
    TabOrder = 2
    OnChange = ENameChange
  end
  object EDescription: TEdit
    Left = 186
    Top = 56
    Width = 191
    Height = 21
    TabOrder = 3
  end
  object cbTrainingForce: TComboBox
    Left = 186
    Top = 96
    Width = 191
    Height = 21
    ItemIndex = 1
    TabOrder = 4
    Text = #1057#1074#1086#1081' '#1074#1077#1089
    Items.Strings = (
      #1046#1077#1083#1077#1079#1086
      #1057#1074#1086#1081' '#1074#1077#1089)
  end
end
