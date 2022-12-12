var
filetext: text;
a:string;
i,c:integer;
b,k:real;
begin
assign(filetext,'text.txt');
rewrite(filetext);
for i:=1 to 10 do begin
readln(a);
writeln(filetext,a)
end;
close(filetext);
reset(filetext);
for i:=1 to 10 do begin
readln(filetext,a);
val(a,b,c);
k:=k+b
end;
writeln(k);
close(filetext);
end.