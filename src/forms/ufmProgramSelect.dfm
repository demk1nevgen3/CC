object fmProgramSelect: TfmProgramSelect
  Left = 0
  Top = 0
  Caption = 'fmProgramSelect'
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
    ExplicitTop = 272
    object btnAdd: TBitBtn
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'btnAdd'
      TabOrder = 0
    end
  end
  object pMain: TPanel
    Left = 0
    Top = 0
    Width = 426
    Height = 279
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 297
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
