var
f,g:text;
j,k:integer;
s:string;
begin
assign(f, 'cinp.txt');
reset(f);
While not Eof(f) do
Begin
  readln(f,s);
  inc(j);
End;
close(f);
write('Номер строки для удаления: ');
readln(k);
if k<=j-1 then
Begin
  Assign(g,'c:\out.txt');
  Rewrite(g);
  Reset(f);
  j:=0;
  While not Eof(f) do
  Begin
   readln(f,s);
   if k<>(j+1) then writeln(g,s);
   inc(j);
  End;
  close(f);
  close(g);
  erase(f);
  rename(g, 'c:\inp.txt');
End
else writeln('Нет строки с таким индексом');
writeln('Программа выполнена. Проверьте файл c:\inp.txt');
end.