var f,f2:text;
    j,c,i:integer;
    a:array[1..100] of integer;
begin
assign(f,'input.txt');
reset(f);
while not eof(f) do
begin
for i:=1 to 100 do
readln(f,a[i]);
end;
for i:=1 to 100-1 do 
  begin
   for j:=100-1 downto i do
    if (A[j]mod 10)+(a[j]div 10) > (A[j+1]mod 10)+(a[j+1]div 10) then
     begin
       c := A[j];
       A[j] := A[j+1];
       A[j+1] := c;
     end;
 end;
close(f);
assign(f,'output.txt.');
rewrite(f);
for j:=1 to 100 do
 writeln(f,a[j]);
close(f);
end.