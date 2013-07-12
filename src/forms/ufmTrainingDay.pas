unit ufmTrainingDay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids;

type
  TfmTrainingDay = class(TForm)
    pProgram: TPanel;
    pControl: TPanel;
    pAdditTraining: TPanel;
    btnClose: TBitBtn;
    pProgramControl: TPanel;
    gbProgram: TGroupBox;
    pAdditTraininfControl: TPanel;
    gbAdditTraining: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    btnAddAT: TBitBtn;
    btnDelete: TBitBtn;
    procedure btnAddATClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTrainingDay: TfmTrainingDay;

implementation

{$R *.dfm}

uses ufmTrainingTypeList, ufmMain;

procedure TfmTrainingDay.btnAddATClick(Sender: TObject);
begin
  if fmTrainingTypeList=nil then
    fmTrainingTypeList:=TfmTrainingTypeList.Create(fmMain,2);
  fmTrainingTypeList.ShowModal;

  FreeAndNil(fmTrainingTypeList);
end;

end.
