unit uTraining;

interface


type
  TForceType = (ftAdditionalForce, ftSelf);          //0 1

  TTrainingRec = record
    id:Integer;
    name:String;
    description:String;
    force_type:Integer;  //поле в БД
    forceType:TForceType; //Значение из перечисления в программе
  end;

  TTraining = class
  private

  public

  end;

implementation

end.
