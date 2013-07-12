unit uUser;

interface

type
  TUserDBFieldRec = record
    Id:integer;
    Name:String;
    JoinTime:TDateTime;
    Description:String;
  end;


  TUser = class
  private
    fUserDBFields:TUserDBFieldRec;
    fAgeInSystem:TDateTime;


    procedure Init;
  public
    constructor Create(UserDBFields:TUserDBFieldRec);


    property UserDBFields:TUserDBFieldRec read fUserDBFields write fUserDBFields;
    property AgeInSystem:TDateTime read fAgeInSystem write fAgeInSystem;
  end;

implementation

{ TUser }

constructor TUser.Create(UserDBFields: TUserDBFieldRec);
begin
  fUserDBFields:=UserDBFields;
  Init;
end;

procedure TUser.Init;
begin

end;

end.


