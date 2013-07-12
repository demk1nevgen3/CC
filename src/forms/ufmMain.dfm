object fmMain: TfmMain
  Left = 0
  Top = 0
  ClientHeight = 547
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainMenu
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object statusBarMain: TStatusBar
    Left = 0
    Top = 520
    Width = 988
    Height = 27
    Panels = <
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object ActToolbarMain: TActionToolBar
    Left = 0
    Top = 0
    Width = 988
    Height = 29
    ActionManager = ActionManagerMain
    Caption = 'ActToolbarMain'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Spacing = 0
  end
  object pControl: TPanel
    Left = 0
    Top = 29
    Width = 185
    Height = 491
    Align = alLeft
    TabOrder = 2
    object btnOpenProgramSelect: TBitBtn
      Left = 0
      Top = 0
      Width = 180
      Height = 97
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
        44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
        00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
        33833F333383F33300003333AA463362A433333333383F333833F33300003333
        6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
        33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
        6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
        000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
        333383333333F3330000333333322AAA4333333333333833333F333300003333
        333322A4333333333333338333F333330000333333344A433333333333333338
        3F333333000033333336A24333333333333333833F333333000033333336AA43
        33333333333333833F3333330000333333336663333333333333333888333333
        0000}
      TabOrder = 0
      OnClick = btnOpenProgramSelectClick
    end
    object btnOpenTrainingTypeSelect: TBitBtn
      Left = 0
      Top = 103
      Width = 180
      Height = 97
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
        44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
        00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
        33833F333383F33300003333AA463362A433333333383F333833F33300003333
        6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
        33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
        6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
        000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
        333383333333F3330000333333322AAA4333333333333833333F333300003333
        333322A4333333333333338333F333330000333333344A433333333333333338
        3F333333000033333336A24333333333333333833F333333000033333336AA43
        33333333333333833F3333330000333333336663333333333333333888333333
        0000}
      TabOrder = 1
      OnClick = btnOpenTrainingTypeSelectClick
    end
  end
  object pMain: TPanel
    Left = 185
    Top = 29
    Width = 803
    Height = 491
    Align = alClient
    TabOrder = 3
    object stringGridCalendar: TStringGrid
      Left = 1
      Top = 1
      Width = 801
      Height = 448
      Align = alClient
      ColCount = 7
      DefaultColWidth = 110
      DefaultRowHeight = 87
      FixedCols = 0
      TabOrder = 0
      OnDblClick = stringGridCalendarDblClick
      OnDrawCell = stringGridCalendarDrawCell
    end
    object pCalControl: TPanel
      Left = 1
      Top = 449
      Width = 801
      Height = 41
      Align = alBottom
      TabOrder = 1
    end
  end
  object mainMenu: TMainMenu
    Left = 320
    Top = 48
    object NProfile: TMenuItem
      Caption = #1055#1088#1086#1092#1072#1081#1083
      object NChangeUser: TMenuItem
        Caption = #1057#1084#1077#1085#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        OnClick = NChangeUserClick
      end
      object NMainExit: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = NMainExitClick
      end
    end
  end
  object ActionManagerMain: TActionManager
    ActionBars = <
      item
        ActionBar = ActToolbarMain
      end>
    Left = 256
    Top = 48
    StyleName = 'Platform Default'
  end
end
