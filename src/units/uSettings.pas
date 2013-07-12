unit uSettings;

interface

uses
  inifiles;

type
  TGlobalOptions = class
  private
    fIsRememberLastUser:boolean;
  public
    constructor Create;

    property IsRememberLastUser:boolean read fIsRememberLastUser write fIsRememberLastUser;
  end;

var
  GlobalOptions:TGlobalOptions;

implementation

{ TGlobalOptions }

constructor TGlobalOptions.Create;
begin
  //
end;

end.
