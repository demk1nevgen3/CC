unit ufmUserList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,uADCompClient,
  Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  TfmUserList = class(TForm)
    pUserList: TPanel;
    pControl: TPanel;
    btnSelect: TBitBtn;
    btnClose: TBitBtn;
    dsUsers: TDataSource;
    dbgUsers: TDBGrid;
    CheckBox1: TCheckBox;
    btnAdd: TBitBtn;
    btnDelete: TBitBtn;
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure dbgUsersDblClick(Sender: TObject);
  private
    procedure ViewUserList;
    procedure DeleteUser;
    procedure AddUser;
    //procedure SelectUser;
  public

  end;

var
  fmUserList: TfmUserList;

implementation

{$R *.dfm}

uses uDMUsers, ufmAddUser, ufmMain, uUser, uAdditionalUtils;

procedure TfmUserList.AddUser;
begin
  if fmAddUser=nil then
    fmAddUser:=TfmAddUser.Create(fmUserList);
  fmAddUser.ShowModal;
  FreeAndNil(fmAddUser);
end;

procedure TfmUserList.btnAddClick(Sender: TObject);
begin
  AddUser;
end;

procedure TfmUserList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmUserList.btnDeleteClick(Sender: TObject);
begin
  DeleteUser;
end;

procedure TfmUserList.btnSelectClick(Sender: TObject);
begin
  //SelectUser;
end;

procedure TfmUserList.dbgUsersDblClick(Sender: TObject);
begin
  //SelectUser;
end;

procedure TfmUserList.DeleteUser;
begin
  dmUsers.DeleteUserByID(dbgUsers.DataSource.DataSet.FieldByName('id').AsInteger);
  dmUsers.PerformUserList;
end;

procedure TfmUserList.FormShow(Sender: TObject);
begin
  ViewUserList;
end;



procedure TfmUserList.ViewUserList;
begin
   dmUsers.PerformUserList;
end;

end.
