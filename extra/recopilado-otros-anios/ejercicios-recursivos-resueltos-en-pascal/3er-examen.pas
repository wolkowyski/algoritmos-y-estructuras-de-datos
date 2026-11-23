{
   3er-examen.pas
   
   Copyright 2020 Clast <Clast@LAPTOP-BOCTJ8LC>
   
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
   arr: array [1..10] of integer;
   i: integer;

function enc(a: array of integer; n,x: integer): integer;
begin
     if n = 0 then
     begin
       enc:= 0;

     end
     else
         begin
           if a[n] = x then
           begin
                enc:= 1;
           end
           else
               begin
                   enc:= enc(a, n - 1, x);
               end;

         end;
end;

begin
   for i:= 1 to 10 do
   begin
       arr[i]:= i
   end;
   for i:= 1 to 10 do
   begin
       writeln('', arr[i]);
   end;

   writeln('El numero 5 esta: ', enc(arr, 10,5));

end.
