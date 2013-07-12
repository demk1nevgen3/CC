unit ufmTrainingTypeList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TfmTrainingTypeList = class(TForm)
    pMain: TPanel;
    pControl: TPanel;
    btnClose: TBitBtn;
    btnAdd: TBitBtn;
    btnDelete: TBitBtn;
    gbTrainingTable: TGroupBox;
    dbgTrainingType: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTrainingTypeList: TfmTrainingTypeList;

implementation

{$R *.dfm}

end.
