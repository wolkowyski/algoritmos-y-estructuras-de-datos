{
   Accion 1.03 es.pas
   
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
	sec: text;
	v: char;
	error, cont: integer;

BEGIN
	Assign (sec,'C:\Users\Usuario\Desktop\Practica y ejercicios\Practico 2\Accion 1-04 es (entrada).txt');		(*Se inicializa una secuencia de entrada*)
	{$I-}
	Reset (sec);
	error:= IOResult;
	{$I+}
	if (error <> 0) then
		begin
			writeln('Error 404: el archivo archivo.txt no existe o se encuentra en una ubicacion desconocida.');
			halt(2);  
		end;
	read(sec,v);
	cont:= 0;
	while not EOF (sec) do
	begin
		while not EOF (sec) and (v <> '!') do
		begin
			while not EOF (sec) and (v <> '-') do
			begin
				read(sec,v);
			end;
			cont:= cont + 1;
			read(sec,v);
		end;
		read(sec,v);
	end;
	close (sec); 
	writeln('La cantidad de socios es: ', cont);
END.

