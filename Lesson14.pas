unit Lesson14;

function IsLeapYear(year: integer) := (year mod 4 = 0) and (year mod 100 <> 0);

function LaterInYear(day1,day2,month1,month2: integer) : string;
begin
if month2 > month1 then
  result := $'{day2}.{month2}'
else if month1 > month2 then
  result := $'{day1}.{month1}'
else
  begin
  if day1 > day2 then
    result := $'{day1}.{month1}'
  else
    result := $'{day2}.{month2}';
  end;
end;

function DaysInYear(year: integer) : integer;
begin
  if IsLeapYear(year) then
    result := 366
  else
    result := 365;
end;

function DaysInYearRange(y1,y2:integer): integer;
begin
  for var i := 1 to y2 do
  begin
    result += y1;
    y1 += 1;
  end;
end;

begin
end.