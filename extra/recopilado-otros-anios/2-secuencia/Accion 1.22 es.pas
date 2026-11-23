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
	nom, doc, sal: text;
	n, d: char;
	error, cont, i: integer;

BEGIN
	Assign (sal,'C:\Users\matia\Desktop\Algortimo y estructura de datos\Practica y ejercicios\2. Secuencia\Accion 1-22 es (salida).txt');
	rewrite (sal);
	Assign (nom,'C:\Users\matia\Desktop\Algortimo y estructura de datos\Practica y ejercicios\2. Secuencia\Accion 1-22 es (entrada1).txt');		(*Se inicializa una secuencia de entrada*)
	Assign (doc,'C:\Users\matia\Desktop\Algortimo y estructura de datos\Practica y ejercicios\2. Secuencia\Accion 1-22 es (entrada2).txt');	
	{$I-}
	Reset (nom);
	Reset (doc);
	error:= IOResult;
	{$I+}
	if (error <> 0) then
		begin
			writeln('Error 404: el archivo archivo.txt no existe o se encuentra en una ubicacion desconocida.');
			halt(2);  
		end;
	read(nom,n); 
	read(doc, d);
	cont:= 1;
	while not EOF (nom) and not EOF (doc) do
	begin
		if (cont mod 2 = 1) then
		begin
			for i:= 1 to 8 do
			begin
				write(sal, d);
				read(doc, d);
			end;
			write(sal, ',');
			while not EOF (nom) and (n = ' ') do
			begin
				read(nom, n);
			end;
			while not EOF (nom) and (n <> ' ') do
			begin
				write(sal, n);
				read(nom, n);
			end;
			write(sal, '#');
		end	
		else
			begin
				for i:= 1 to 8 do
				begin
					read(doc, d);
				end;
				while not EOF (nom) and (n = ' ') do
				begin
					read(nom, n);
				end;
				while not EOF (nom) and (n <> ' ') do
				begin
					read(nom, n);
				end;
			end;
		cont:= cont + 1;
	end;
	close(nom); close(doc); close(sal);
	writeln('Programa finalizado');
	
	
END.

