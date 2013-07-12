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
  public
    procedure Connect(DBFilePath:String);
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uConst, ufmMain, uSettings, ufmUserList;

{$R *.dfm}

procedure TdmMain.Connect(DBFilePath:String);
begin

  if not FileExists(DBFilePath) then
    CreateSchema;
  ADConnectionMain.Params.Add('Database='+DBFilePath);
  ADConnectionMain.Open;
  if ADConnectionMain.Connected then
    if GlobalOptions.IsRememberLastUser then
      Application.CreateForm(TfmMain, fmMain)
    else
      Application.CreateForm(TfmUserList, fmUserList);
end;

procedure TdmMain.CreateSchema;
begin

end;

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  Connect(ExtractFilePath(Application.ExeName)+cDefaultDBFolder+'\'+cDefaultDBName);
end;



end.
