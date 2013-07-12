unit uAdditionalUtils;

interface

uses
  System.SysUtils;

function FormatDateBetween(NorFormattingDare:TDateTime):String;
function GetRusssianMonthName(Number:Integer):String;

implementation

function FormatDateBetween(NorFormattingDare:TDateTime):String;
var
  Hour, Min, Sec, MSec: Word;
  Year, Month, Day:Word;
begin
 // DecodeDate(NorFormattingDare, Year, Month, Day);
 // DecodeTime(NorFormattingDare,Hour, Min, Sec, MSec);

 // Result:=IntToStr(Year) + '' + IntToStr(Month);
end;

 function GetRusssianMonthName(Number:Integer):String;
  begin
    case Number of
      1:Result:='������';
      2:Result:='�������';
      3:Result:='�����';
      4:Result:='������';
      5:Result:='���';
      6:Result:='����';
      7:Result:='����';
      8:Result:='�������';
      9:Result:='��������';
      10:Result:='�������';
      11:Result:='������';
      12:Result:='�������';
    end;
  end;

end.
