unit ufmAddTrainingType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfmAddTrainingType = class(TForm)
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    EName: TEdit;
    EDescription: TEdit;
    cbTrainingForce: TComboBox;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure ENameChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure ChangeConfirmButtonState;
    procedure AddNewTrainingType;
  public
    { Public declarations }
  end;

var
  fmAddTrainingType: TfmAddTrainingType;

implementation

{$R *.dfm}

uses uTraining, uDMTrainingType, ufmTrainingTypeList;

{ TfmAddTrainingType }

procedure TfmAddTrainingType.AddNewTrainingType;
var
  trainingRec:TTrainingRec;
begin
  trainingRec.name:=EName.Text;
  trainingRec.description:=EDescription.Text;
  trainingRec.force_type:=cbTrainingForce.ItemIndex;
  dmTrainingType.AddTrainingType(trainingRec);
end;

procedure TfmAddTrainingType.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfmAddTrainingType.btnOKClick(Sender: TObject);
begin
  AddNewTrainingType;
  Close;
end;

procedure TfmAddTrainingType.ChangeConfirmButtonState;
begin
  btnOK.Enabled:=False;
  if EName.Text<>'' then
    btnOK.Enabled:=True
end;

procedure TfmAddTrainingType.ENameChange(Sender: TObject);
begin
  ChangeConfirmButtonState;
end;

procedure TfmAddTrainingType.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmTrainingType.SelectAll;
end;

end.
