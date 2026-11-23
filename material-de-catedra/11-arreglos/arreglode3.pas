program arreglode3;
   type
    Alumno = record
      Nro_Leg:integer;
      AyN:string[20];
  end;
  alu=array[1..3] of Alumno;
  var
    alum:alu;
    B:integer;
procedure carga (var alum:alu);
    var x: integer;
     begin
      for x:=1 to 3 do
       begin
         writeln('ingrese el numero de legajo, luego pulse enter e ingrese el nombre y apellido   del alumno');
         readln(alum[x].Nro_Leg);
         readln(alum[x].AyN);
         writeln('');
         writeln('');
        end;
     end;

procedure busqueda (var alum:alu; var b:integer);
var x, a: integer;
begin
       writeln('ingrese nro de legajo que desea buscar');
       readln(A);
       for x:=1 to 3 do
       begin
       if (A = alum[x].Nro_Leg) then
       begin
        writeln ('alumno: ',  alum[x].AYN);
         B:=B+1;
         end;
       end;
end;
begin
          carga(alum);
          writeln('');
          writeln('');
                 B:=0;
          busqueda(alum, b);
          writeln('');
          writeln('');
          Writeln('se han encontraron ',B,' registro/s con ese legajo');
          readln;
end.

