unit ufmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uUser, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.PlatformDefaultStyleActnCtrls,
  System.Actions, Vcl.ActnList, Vcl.ExtCtrls, Vcl.Grids, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TfmMain = class(TForm)
    mainMenu: TMainMenu;
    NProfile: TMenuItem;
    NChangeUser: TMenuItem;
    NMainExit: TMenuItem;
    statusBarMain: TStatusBar;
    ActionManagerMain: TActionManager;
    ActToolbarMain: TActionToolBar;
    pControl: TPanel;
    pMain: TPanel;
    stringGridCalendar: TStringGrid;
    pCalControl: TPanel;
    btnOpenProgramSelect: TBitBtn;
    btnOpenTrainingTypeSelect: TBitBtn;
    procedure NMainExitClick(Sender: TObject);
    procedure NChangeUserClick(Sender: TObject);
    procedure stringGridCalendarDblClick(Sender: TObject);
    procedure btnOpenProgramSelectClick(Sender: TObject);
    procedure stringGridCalendarDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOpenTrainingTypeSelectClick(Sender: TObject);
  private

  public
    procedure BindCellByDate(BeginningDate:TDateTime);
    function GetDateByCell(ACol, ARow:Integer):TDateTime;
  end;

  TDateCalandarBind = record
    ACol:Integer;
    ARow:Integer;
    BindDate:TDateTime;
  end;

var
  fmMain: TfmMain;
  CurrentUser:TUser;
  DateList:array [0..27] of TDateCalandarBind;

implementation

{$R *.dfm}

uses ufmUserList, ufmTrainingDay, ufmProgramSelect, ufmTrainingTypeList,
  uSettings, uDMUsers;


procedure TfmMain.BindCellByDate(BeginningDate: TDateTime);
var
  I:Integer;
begin
  for I := 0 to 27 do
  begin
    DateList[i].BindDate:=BeginningDate+I;
    DateList[i].ARow:=1+(I div 7);
    DateList[i].ACol:= (I mod 7);
  end;
end;

procedure TfmMain.btnOpenProgramSelectClick(Sender: TObject);
begin
  if fmProgramSelect=nil then
    fmProgramSelect:=TfmProgramSelect.Create(fmMain);
  fmProgramSelect.Show;
end;

procedure TfmMain.btnOpenTrainingTypeSelectClick(Sender: TObject);
begin
  if fmTrainingTypeList=nil then
    fmTrainingTypeList:=TfmTrainingTypeList.Create(fmMain);
  fmTrainingTypeList.Show;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  if fmUserList=nil then
    fmUserList:=TfmUserList.Create(fmMain);

  if GlobalOptions.IsRememberLastUser=false then
    fmUserList.ShowModal
  else
    begin
      dmUsers.SelectUser(GlobalOptions.LastUserID);
      fmMain.statusBarMain.Panels.Items[0].Text:='Пользователь: '+CurrentUser.UserDBFields.Name;
    end;

   GlobalOptions.LastUserID:=CurrentUser.UserDBFields.Id;
end;

procedure TfmMain.FormShow(Sender: TObject);
begin
  BindCellByDate(Date);
end;

function TfmMain.GetDateByCell(ACol, ARow: Integer): TDateTime;
var
  I:Integer;
begin
  for I := 0 to 27 do
  begin
    if (DateList[I].ACol=ACol) and (DateList[I].ARow=ARow) then
    begin
      Result:=DateList[I].BindDate;
      Exit;
    end;
  end;
end;

procedure TfmMain.NChangeUserClick(Sender: TObject);
begin
  if fmUserList=nil then
    fmUserList:=TfmUserList.Create(fmMain);
  fmUserList.ShowModal;
end;

procedure TfmMain.NMainExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.stringGridCalendarDblClick(Sender: TObject);
begin
  if fmTrainingDay=nil then
    fmTrainingDay:=TfmTrainingDay.Create(fmMain);
  fmTrainingDay.Show;

  fmTrainingDay.Caption:=IntToStr(stringGridCalendar.Col)+''+IntToStr(stringGridCalendar.Row)
end;

procedure TfmMain.stringGridCalendarDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  Year, Month, Day: Word;

  function GetRusssianMonthName(Number:Integer):String;
  begin
    case Number of
      1:Result:='Января';
      2:Result:='Февраля';
      3:Result:='Марта';
      4:Result:='Апреля';
      5:Result:='Мая';
      6:Result:='Июня';
      7:Result:='Июля';
      8:Result:='Августа';
      9:Result:='Сентября';
      10:Result:='Октября';
      11:Result:='Ноября';
      12:Result:='Декабря';
    end;
  end;

begin
  with stringGridCalendar do
  begin
    if ARow<>0 then
    begin
       DecodeDate(GetDateByCell(ACol,ARow), Year, Month, Day);
       Canvas.TextOut(Rect.Left+2, Canvas.TextHeight('A')+Rect.Top+2, IntToStr(Day)+' '+GetRusssianMonthName(Month));
    end;
   end;
end;

end.


