unit uDMTrainingType;

interface

uses
  System.SysUtils, System.Classes,uDMMain, uADStanIntf, uADStanOption,
  uADStanParam, uADStanError, uADDatSManager, uADPhysIntf, uADDAptIntf,
  uADStanAsync, uADDAptManager, Data.DB, uADCompDataSet, uADCompClient,uTraining;

type
  TdmTrainingType = class(TDataModule)
    qSelectAll: TADQuery;
    qAddNewTrainingType: TADQuery;
    qDeleteTrainingType: TADQuery;
  private
    { Private declarations }
  public
    procedure SelectAll;
    procedure AddTrainingType(trainingRec:TTrainingRec);
    procedure DeleteTrainingTypeByID(ID:Integer);
  end;

var
  dmTrainingType: TdmTrainingType;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}

{ TdmTrainingType }

procedure TdmTrainingType.AddTrainingType(trainingRec: TTrainingRec);
begin
  with qAddNewTrainingType do
  begin
    close;
    ParamByName('name').AsString:=trainingRec.name;
    ParamByName('description').AsString:=trainingRec.description;
    ParamByName('force_type').AsInteger:=trainingRec.force_type;
    ExecSQL;
  end;
end;

procedure TdmTrainingType.DeleteTrainingTypeByID(ID: Integer);
begin
  with qDeleteTrainingType do
  begin
    close;
    ParamByName('id').AsInteger:=ID;
    ExecSQL;
  end;
end;

procedure TdmTrainingType.SelectAll;
begin
  with qSelectAll do
  begin
    Close;
    Open;
  end;
end;

end.
