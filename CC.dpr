program CC;

uses
  Vcl.Forms,
  ufmMain in 'src\forms\ufmMain.pas' {fmMain},
  uDMMain in 'src\datamodules\uDMMain.pas' {dmMain: TDataModule},
  uConst in 'src\units\uConst.pas',
  ufmUserList in 'src\forms\ufmUserList.pas' {fmUserList},
  uDMUsers in 'src\datamodules\uDMUsers.pas' {dmUsers: TDataModule},
  uUser in 'src\units\uUser.pas',
  ufmAddUser in 'src\forms\ufmAddUser.pas' {fmAddUser},
  ufmTrainingDay in 'src\forms\ufmTrainingDay.pas' {fmTrainingDay},
  uTraining in 'src\units\uTraining.pas',
  uProgram in 'src\units\uProgram.pas',
  ufmProgramSelect in 'src\forms\ufmProgramSelect.pas' {fmProgramSelect},
  uSettings in 'src\units\uSettings.pas',
  uAdditionalUtils in 'src\units\uAdditionalUtils.pas',
  ufmTrainingTypeList in 'src\forms\ufmTrainingTypeList.pas' {fmTrainingTypeList},
  uDMTrainingType in 'src\datamodules\uDMTrainingType.pas' {dmTrainingType: TDataModule},
  ufmAddTrainingType in 'src\forms\ufmAddTrainingType.pas' {fmAddTrainingType},
  uDMTrainingDay in 'src\datamodules\uDMTrainingDay.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
