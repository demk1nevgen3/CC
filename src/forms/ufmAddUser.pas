unit ufmAddUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfmAddUser = class(TForm)
    LName: TLabel;
    LDeescription: TLabel;
    EName: TEdit;
    EDescription: TEdit;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    BalloonHintCheckName: TBalloonHint;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure ENameChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure ChangeConfirmButtonState;
    function isCheckValidName:boolean;
    procedure AddNewUser;
  public
    { Public declarations }
  end;

var
  fmAddUser: TfmAddUser;

implementation

{$R *.dfm}

uses uDMUsers, uUser;

procedure TfmAddUser.AddNewUser;
var
  UserDBFieldRec:TUserDBFieldRec;
begin
  UserDBFieldRec.Name:=EName.Text;
  UserDBFieldRec.JoinTime:=Now;
  UserDBFieldRec.Description:=EDescription.Text;
  dmUsers.AddUser(UserDBFieldRec);
end;

procedure TfmAddUser.btnCancelClick(Sender: TObject);
begin
 { TODO : Чистить поля или лучше уничтожать эту форму? }
  Close;
end;

procedure TfmAddUser.btnOKClick(Sender: TObject);
begin
  AddNewUser;
  Close;
{ TODO : Добавить BalloonHint и проверку на существование имени }
end;

procedure TfmAddUser.ChangeConfirmButtonState;
begin
  btnOK.Enabled:=False;
  if EName.Text<>'' then
    if isCheckValidName then
      btnOK.Enabled:=True
    else
    begin
      BalloonHintCheckName.Title:='Внимание';
      BalloonHintCheckName.Description:='Пользователь с введенным именем уже есть в системе. Пожалуйста, введите другое имя.';
      BalloonHintCheckName.ShowHint;
    end;
end;



procedure TfmAddUser.ENameChange(Sender: TObject);
begin
  ChangeConfirmButtonState;
end;

procedure TfmAddUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmUsers.PerformUserList;
end;

function TfmAddUser.isCheckValidName: boolean;
begin
  Result:=dmUsers.isNotExistUser(EName.Text);
end;

end.
