unit uAdditionalUtils;

interface

uses
  System.SysUtils;

function FormatDateBetween(NorFormattingDare:TDateTime):String;


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

end.
