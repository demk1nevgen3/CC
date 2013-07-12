unit uDMUsers;

interface

uses
  System.SysUtils, System.Classes, uADStanIntf, uADStanOption, uADStanParam,
  uADStanError, uADDatSManager, uADPhysIntf, uADDAptIntf, uADStanAsync,
  uADDAptManager, Data.DB, uADCompDataSet, uADCompClient, uUser,System.DateUtils, Dialogs ;

type
  TdmUsers = class(TDataModule)
    qSelectAll: TADQuery;
    qAddUser: TADQuery;
    qSelectAllid: TADAutoIncField;
    qSelectAllname: TStringField;
    qSelectAlljoin_time: TDateTimeField;
    qSelectAlldescription: TStringField;
    qSelectAllsystem_age: TDateTimeField;
    qDeleteUser: TADQuery;
    qCheckUser: TADQuery;
    procedure qSelectAllCalcFields(DataSet: TDataSet);
    procedure qSelectAllsystem_ageGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private

  public
    procedure PerformUserList;
    procedure AddUser(UserDBFields:TUserDBFieldRec);
    procedure DeleteUserByID(ID:Integer);
    function isNotExistUser(Name:String):boolean;
    procedure SelectUser;
  end;

var
  dmUsers: TdmUsers;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDMMain, uAdditionalUtils;

{$R *.dfm}

{ TdmUsers }
procedure TdmUsers.AddUser(UserDBFields: TUserDBFieldRec);
begin
  with qAddUser do
  begin
    Close;
    ParamByName('name').AsString:=UserDBFields.Name;
    ParamByName('join_time').AsDateTime:=UserDBFields.JoinTime;
    ParamByName('description').AsString:=UserDBFields.Description;
    ExecSQL;
  end;
end;

procedure TdmUsers.DeleteUserByID(ID: Integer);
begin
  with qDeleteUser do
  begin
    Close;
    ParamByName('Id').AsInteger:=ID;
    ExecSQL;
  end;
end;

function TdmUsers.isNotExistUser(Name: String): boolean;
begin
  Result:=False;

  qCheckUser.Close;
  qCheckUser.ParamByName('name').AsString:=Trim(Name);
  qCheckUser.Open;
  if qCheckUser.IsEmpty then
      Result:=True;
end;

procedure TdmUsers.PerformUserList;
begin
  with qSelectAll do
  begin
    Close;
    Open;
  end;
end;

procedure TdmUsers.qSelectAllCalcFields(DataSet: TDataSet);
begin
{ TODO : Реализовать представление времени в ЧП }
  DataSet.FieldByName('system_age').AsDateTime:= DaySpan(Now, DataSet.FieldByName('join_time').AsDateTime);
end;

procedure TdmUsers.qSelectAllsystem_ageGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
 // Text:=FormatDateBetween(Sender.AsDateTime);
end;

procedure TdmUsers.SelectUser;
var
  UserDBFieldRec:TUserDBFieldRec;
begin
 // UserDBFieldRec.Id:=dbgUsers.DataSource.DataSet.FieldByName('id').AsInteger;
 // UserDBFieldRec.Description:=dbgUsers.DataSource.DataSet.FieldByName('description').AsString;
 // UserDBFieldRec.Name:=dbgUsers.DataSource.DataSet.FieldByName('name').AsString;
 // UserDBFieldRec.JoinTime:=dbgUsers.DataSource.DataSet.FieldByName('join_time').AsDateTime;
 // FreeAndNil(CurrentUser);
 // CurrentUser:=TUser.Create(UserDBFieldRec);
 // fmMain.statusBarMain.Panels.Items[0].Text:='Пользователь: '+CurrentUser.UserDBFields.Name;
 // Close;
end;

end.
