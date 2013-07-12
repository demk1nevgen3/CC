unit uSettings;

interface

uses
  inifiles,Forms, SysUtils, Dialogs;

type
  TGlobalOptions = class
  private
    fIsRememberLastUser:boolean;
    fLastUserID:Integer;
    fIni:Tinifile;

    procedure Init;

    function GetIsRememberLastUser:boolean;
    procedure SetIsRememberLastUser(Value:boolean);
    function GetLastUserID:Integer;
    procedure SetLastUserID(Value:Integer);
    procedure UpdateSettingsFile;

  public
    constructor Create;

    property IsRememberLastUser:boolean read GetIsRememberLastUser write SetIsRememberLastUser;
    property LastUserID:Integer read GetLastUserID write SetLastUserID;
  end;

var
  GlobalOptions:TGlobalOptions;

implementation

{ TGlobalOptions }

uses uConst;

constructor TGlobalOptions.Create;
begin
  Init;
end;

function TGlobalOptions.GetIsRememberLastUser: boolean;
begin
  Result:=fIsRememberLastUser;
end;

function TGlobalOptions.GetLastUserID: Integer;
begin
  Result:=fLastUserID;
end;

procedure TGlobalOptions.Init;
begin
  fIni:=TIniFile.Create(ExtractFilePath(Application.ExeName)+cDefaultSettingsFolder+'\'+cDefaultSettingsFile);
  fIsRememberLastUser:=fini.ReadBool('PARAM','RUID',False);
  fLastUserID:=fini.ReadInteger('PARAM','UID',8);
end;

procedure TGlobalOptions.SetIsRememberLastUser(Value: boolean);
begin
  fIsRememberLastUser:=Value;
  UpdateSettingsFile;
end;

procedure TGlobalOptions.SetLastUserID(Value: Integer);
begin
  fLastUserID:=Value;
  UpdateSettingsFile;
end;

procedure TGlobalOptions.UpdateSettingsFile;
begin
   fini.WriteBool('PARAM','RUID',fIsRememberLastUser);
   fini.WriteInteger('PARAM','UID',fLastUserID);
end;

end.
