{
   Accion 1.12 es.pas
   
   Copyright 2019 Usuario <Usuario@USUARIO-PC>
   
   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.
   
   
}



program untitled;

uses crt;
var 
	sec, sal: text;
	v, a, b, c: char;
	error, cont: integer;
	contotal, contpal: real;
BEGIN
	Assign (sal,'C:\Users\matia\Desktop\Facultad\1er año\Algortimo y estructura de datos\Practica y ejercicios\2. Secuencia\Accion 1-19 es (salida).txt');
	rewrite (sal);
	Assign (sec,'C:\Users\matia\Desktop\Facultad\1er año\Algortimo y estructura de datos\Practica y ejercicios\2. Secuencia\Accion 1-19 es (entrada).txt');		(*Se inicializa una secuencia de entrada*)
	{$I-}
	Reset (sec);
	error:= IOResult;
	{$I+}
	if (error <> 0) then
	begin
		writeln('Error 404: el archivo archivo.txt no existe o se encuentra en una ubicacion desconocida.');
		halt(2);  
	end;
	read(sec, v);
	contpal:= 0; contotal:= 0; cont:= 0;
	while not EOF (sec) do
	begin
		if not EOF (sec) and (v = ' ') then
		begin
			read(sec, v);
		end
		else
			begin
				while not EOF (sec) and (v <> ' ') do
				begin
					cont:= cont + 1;
					case cont of
						1: a:= v;
						2: b:= v;
						3: c:= v;
					end;
					if not EOF (sec) and (cont = 3) then
					begin
						write(sal, a); 
						write(sal, b); 
						write(sal, c); 
						write(sal, ' ');
						contpal:= contpal + 1;
						contotal:= contotal + 1;
					end
					else
						begin
							contotal:= contotal + 1;
						end;
					read (sec, v);
				end;
			end;
		cont:= 0;
	end;
	close(sal);
	writeln('El porcentaje de palabras con tres caracteres es ', (contpal/contotal)*100:00:0);
	writeln('La cantidad de palabras con 3 caracteres ', contpal:00:0);
	writeln('La cantidad de palabras totales es: ', contotal:00:0);
END.

