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

end.
