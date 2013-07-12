unit ufmProgramSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids;

type
  TfmProgramSelect = class(TForm)
    pControl: TPanel;
    pMain: TPanel;
    dbgProgram: TDBGrid;
    btnAdd: TBitBtn;
    btnSelect: TBitBtn;
    btnDelete: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmProgramSelect: TfmProgramSelect;

implementation

{$R *.dfm}

end.
