unit uTraining;

interface


type
  TForceType = (ftAdditionalForce, ftSelf);          //0 1

  TTrainingRec = record
    id:Integer;
    name:String;
    description:String;
    force_type:Integer;  //���� � ��
    forceType:TForceType; //�������� �� ������������ � ���������
  end;

  TTraining = class
  private

  public

  end;

implementation

end.
