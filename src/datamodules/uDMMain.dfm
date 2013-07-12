object dmMain: TdmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 149
  Width = 204
  object ADConnectionMain: TADConnection
    Params.Strings = (
      
        'Database=C:\NEW_WORKSPACE\GITHUB\CC\bin\userdata\userdatastorage' +
        '.db'
      'DriverID=SQLite')
    LoginPrompt = True
    Left = 32
    Top = 16
  end
  object ADGUIxWaitCursor: TADGUIxWaitCursor
    Left = 120
    Top = 16
  end
  object ADPhysSQLiteDriverLink: TADPhysSQLiteDriverLink
    Left = 48
    Top = 72
  end
end
