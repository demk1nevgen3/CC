object dmUsers: TdmUsers
  OldCreateOrder = False
  Height = 150
  Width = 215
  object qSelectAll: TADQuery
    OnCalcFields = qSelectAllCalcFields
    Connection = dmMain.ADConnectionMain
    SQL.Strings = (
      'SELECT * FROM users')
    Left = 48
    Top = 32
    object qSelectAllid: TADAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qSelectAllname: TStringField
      FieldName = 'name'
      Origin = 'name'
      FixedChar = True
      Size = 32767
    end
    object qSelectAlljoin_time: TDateTimeField
      FieldName = 'join_time'
      Origin = 'join_time'
    end
    object qSelectAlldescription: TStringField
      FieldName = 'description'
      Origin = 'description'
      FixedChar = True
      Size = 32767
    end
    object qSelectAllsystem_age: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'system_age'
      OnGetText = qSelectAllsystem_ageGetText
      Calculated = True
    end
  end
  object qAddUser: TADQuery
    Connection = dmMain.ADConnectionMain
    SQL.Strings = (
      'INSERT INTO users'
      ''
      '(name,join_time,description)'
      ''
      'VALUES'
      ''
      '(:name,:join_time,:description)')
    Left = 112
    Top = 24
    ParamData = <
      item
        Name = 'NAME'
        ParamType = ptInput
      end
      item
        Name = 'JOIN_TIME'
        ParamType = ptInput
      end
      item
        Name = 'DESCRIPTION'
        ParamType = ptInput
      end>
  end
  object qDeleteUser: TADQuery
    Connection = dmMain.ADConnectionMain
    SQL.Strings = (
      'DELETE FROM '
      ''
      '    users '
      ''
      'WHERE'
      ''
      '    id=:id     ')
    Left = 40
    Top = 88
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object qCheckUser: TADQuery
    Connection = dmMain.ADConnectionMain
    SQL.Strings = (
      'SELECT'
      '  name '
      'FROM '
      '  users'
      'WHERE'
      '  name=:name '
      ''
      '')
    Left = 128
    Top = 88
    ParamData = <
      item
        Name = 'NAME'
        ParamType = ptInput
      end>
  end
end
