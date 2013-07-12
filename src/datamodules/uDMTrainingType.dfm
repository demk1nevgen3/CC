object dmTrainingType: TdmTrainingType
  OldCreateOrder = False
  Height = 244
  Width = 381
  object qSelectAll: TADQuery
    Connection = dmMain.ADConnectionMain
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM'
      '  training_type ')
    Left = 24
    Top = 16
  end
  object qAddNewTrainingType: TADQuery
    Connection = dmMain.ADConnectionMain
    SQL.Strings = (
      'INSERT INTO training_type'
      ''
      '(name, force_type,description)'
      ''
      'values'
      ''
      '(:name, :force_type,:description)')
    Left = 88
    Top = 16
    ParamData = <
      item
        Name = 'NAME'
        ParamType = ptInput
      end
      item
        Name = 'FORCE_TYPE'
        ParamType = ptInput
      end
      item
        Name = 'DESCRIPTION'
        ParamType = ptInput
      end>
  end
  object qDeleteTrainingType: TADQuery
    Connection = dmMain.ADConnectionMain
    SQL.Strings = (
      'Delete from training_type '
      ''
      'where id=:id')
    Left = 200
    Top = 24
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
end
