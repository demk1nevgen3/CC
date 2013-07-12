{Подключение к базе данных}

unit uDMMain;

interface

uses
  System.SysUtils, System.Classes, uADStanIntf, uADStanOption, uADStanError,
  uADGUIxIntf, uADPhysIntf, uADStanDef, uADStanPool, uADStanAsync,
  uADPhysManager, Data.DB, uADCompClient, Forms, uADGUIxFormsWait,
  uADStanExprFuncs, uADPhysSQLite, uADCompGUIx;

type
  TdmMain = class(TDataModule)
    ADConnectionMain: TADConnection;
    ADGUIxWaitCursor: TADGUIxWaitCursor;
    ADPhysSQLiteDriverLink: TADPhysSQLiteDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    //создание новой локальной БД в случае ее отсутствия
    procedure CreateSchema;
    procedure EnableOptions;
  public
    procedure Connect(DBFilePath:String);
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uConst, ufmMain, uSettings, ufmUserList, uDMUsers, uDMTrainingType;

{$R *.dfm}

procedure TdmMain.Connect(DBFilePath:String);
begin
  EnableOptions;

  if not FileExists(DBFilePath) then
    CreateSchema;
  ADConnectionMain.Params.Add('Database='+DBFilePath);
  ADConnectionMain.Open;
  if ADConnectionMain.Connected then
  begin
    Application.CreateForm(TdmUsers, dmUsers);
    Application.CreateForm(TdmTrainingType, dmTrainingType);
    Application.CreateForm(TfmMain, fmMain);

  end;
end;

procedure TdmMain.CreateSchema;
begin
  //
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  Connect(ExtractFilePath(Application.ExeName)+cDefaultDBFolder+'\'+cDefaultDBName);
end;



procedure TdmMain.EnableOptions;
begin
  GlobalOptions:=TGlobalOptions.Create;
end;

end.
