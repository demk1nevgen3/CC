unit ufmTrainingTypeList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.DB,uDMTrainingType;

type
  TfmTrainingTypeList = class(TForm)
    pMain: TPanel;
    pControl: TPanel;
    btnClose: TBitBtn;
    btnAdd: TBitBtn;
    btnDelete: TBitBtn;
    gbTrainingTable: TGroupBox;
    dbgTrainingType: TDBGrid;
    dsTrainingType: TDataSource;
    btnSelect: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    fLaunchType:Integer; //1 - просто добавить    2 - Окно заполнения тренировочного плана

    procedure Init;
    procedure ViewTrainigTypeList;
    procedure AddTrainingType;
    Procedure DeleteTrainingType;
  public
    constructor Create(Owner: TComponent;LaunchType:Integer);
  end;

var
  fmTrainingTypeList: TfmTrainingTypeList;

implementation

{$R *.dfm}

uses ufmAddTrainingType;

{ TfmTrainingTypeList }

procedure TfmTrainingTypeList.AddTrainingType;
begin
  if fmAddTrainingType=nil then
    fmAddTrainingType:=TfmAddTrainingType.Create(fmTrainingTypeList);
  fmAddTrainingType.ShowModal;
  FreeAndNil(fmAddTrainingType);
end;

procedure TfmTrainingTypeList.btnAddClick(Sender: TObject);
begin
  AddTrainingType;
end;

procedure TfmTrainingTypeList.btnDeleteClick(Sender: TObject);
begin
  DeleteTrainingType;
end;


constructor TfmTrainingTypeList.Create(Owner: TComponent; LaunchType: Integer);
begin
  inherited Create(Owner);
  fLaunchType:=LaunchType;
  Init;
end;

procedure TfmTrainingTypeList.DeleteTrainingType;
begin
  dmTrainingType.DeleteTrainingTypeByID(dbgTrainingType.DataSource.DataSet.FieldByName('id').AsInteger);
  ViewTrainigTypeList;
end;

procedure TfmTrainingTypeList.FormShow(Sender: TObject);
begin
  ViewTrainigTypeList;
end;

procedure TfmTrainingTypeList.Init;
begin
  if fLaunchType=1 then
  begin
    btnSelect.Visible:=False;
  end;

  if fLaunchType=2 then
  begin
    btnSelect.Visible:=True;
  end;
end;

procedure TfmTrainingTypeList.ViewTrainigTypeList;
begin
  dmTrainingType.SelectAll;
end;

end.
