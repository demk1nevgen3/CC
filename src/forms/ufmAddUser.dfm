object fmAddUser: TfmAddUser
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  ClientHeight = 111
  ClientWidth = 412
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
  object LName: TLabel
    Left = 16
    Top = 8
    Width = 125
    Height = 16
    Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LDeescription: TLabel
    Left = 16
    Top = 46
    Width = 166
    Height = 16
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077' ('#1086#1087#1094#1080#1086#1085#1072#1083#1100#1085#1086')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EName: TEdit
    Left = 188
    Top = 8
    Width = 216
    Height = 21
    TabOrder = 0
    OnChange = ENameChange
  end
  object EDescription: TEdit
    Left = 188
    Top = 45
    Width = 216
    Height = 21
    TabOrder = 1
  end
  object btnOK: TBitBtn
    Left = 248
    Top = 78
    Width = 75
    Height = 25
    Caption = 'btnOK'
    Enabled = False
    TabOrder = 2
    OnClick = btnOKClick
  end
  object btnCancel: TBitBtn
    Left = 329
    Top = 78
    Width = 75
    Height = 25
    Caption = 'btnCancel'
    TabOrder = 3
    OnClick = btnCancelClick
  end
  object BalloonHintCheckName: TBalloonHint
    Left = 256
    Top = 16
  end
end
