unit ufmTrainingDay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTrainingDay: TfmTrainingDay;

implementation

{$R *.dfm}

end.
