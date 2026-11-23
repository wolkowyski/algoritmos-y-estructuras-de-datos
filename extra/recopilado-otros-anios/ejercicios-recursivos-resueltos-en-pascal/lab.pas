//programa desarrollado por Edgar Nahuel Dominguez Legajo 23423
program LaboratorioPascal_DominguezEdgar_ISI_D;
uses crt;
type  //registro
AR = record
        tipo: 1..5;
        id_chofer: integer;
        id_viaje: integer;
        costo: real;
        distancia: integer;
end;
Salida = record
        tipo: 1..5;
        cant_v: integer;
end;   //salida en formato registro

var
Arch: file of AR;
Sal: file of Salida;
S: Salida;
R: AR;
// variables y resguardos
restipo: 1..5;
cant_viajes, chofer,opc, tipo, total, dist, reschofer, chofer_md: integer;
tot1, tot2, tot3, tot4, tot5: real;
b: boolean;
C:char;
//procedimiento de carga para los choferes
//se genera 1 por cada vez que se reingresa al ciclo
procedure CARGAR;
begin
assign(Arch,'C:\Users\Clast\Desktop\LaboratorioPascal_DomibguezEdgar_ISI_D\Nahu.dat');
rewrite(Arch);
clrscr;
repeat
        repeat
        writeln('                               ');
        writeln('                               ');
writeln('     BIENVENIDO A LA CARGA DE CHOFERES      ');
        writeln('                               ');
        writeln('                               ');
        writeln('===============================');
        writeln('ingrese el tipo: 1, 2, 3, 4 o 5');
        readln(R.tipo);
        writeln('===============================');
        until (R.tipo>=1) and (R.tipo<=5);
        writeln();
        writeln('========================');
        writeln('Ingrese el id del chofer');
        readln(R.id_chofer);
        writeln('========================');
        writeln();
        writeln('======================');
        writeln('Ingrese el id de viaje');
        readln(R.id_viaje);
        writeln('======================');
        writeln();
        writeln('================');
        writeln('Ingrese el costo');
        readln(R.costo);
        Writeln('================');
        writeln();
        writeln('====================');
        writeln('ingrese la distancia');
        readln(R.distancia);
        writeln('====================');
        write(Arch,R);
        writeln();
        writeln('===============================');
        writeln('quiere hacer otro? 1: si, 0: no');
        writeln('===============================');
        readln(c);
        until (c='0');
Close(arch);
end;

//procedimiento en el cual se mostraran los diversos choferes cargados previamente
procedure MOSTRAR;
begin
clrscr;
assign(Sal,'C:\Users\Clast\Desktop\LaboratorioPascal_DomibguezEdgar_ISI_D\Total.dat');
{$I-}
reset(Sal);
{$I+}
if IOResult <> 0 then
begin
        writeln('No existe el archivo intente de nuevo');
        readln;
        halt(2);
end;
while not EOF(Sal) do
begin
        textcolor(white);

        read(Sal,s);
        writeln('');
        writeln('----------------');
        writeln('tipo','  ',s.tipo);
        writeln('----------------');
        writeln('');
        writeln('------------------------------------------');
        writeln('cantidad de viajes realizados',' ',s.cant_v);
        writeln('------------------------------------------');
        readln;
        readkey;
end;
close(Sal);
end;
//proceso de cortes
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
//corte menor
procedure corte_chofer;
begin
textbackground(BLACK);
textcolor(WHITE);
writeln('==============================================================================================');
writeln('                                                                                              ');
writeln('La cantidad de viajes realizados por el chofer ',' ','ID chofer','',reschofer,'',' es: ', chofer,'.');
writeln('                                                                                              ');
writeln('==============================================================================================');
reschofer:= R.id_chofer;
tipo:= tipo + chofer;
chofer:=0;
//readln;
end;
//corte mayor
procedure corte_tipo;
begin
textbackground(BLACK);
textcolor(WHITE);
corte_chofer;
writeln('===============================================================================================');
writeln('                                                                                               ');
writeln(' La cantidad de viajes por el tipo ',' ','TIPO CONDUCTOR: ','',restipo,'',' es de:', tipo,'.   ');
writeln('                                                                                               ');
writeln('===============================================================================================');
S.tipo:= restipo;
S.cant_v:= cant_viajes;
write(Sal,S);
cant_viajes:=0;
restipo:= R.tipo;
total:= total + tipo;
tipo:= 0;
//readln;
end;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//procedimiento para contabilizar y mostrar los cortes
procedure TOTALIZAR;
begin
clrscr;
textcolor(black);
tot1:=0;
tot2:=0;
tot3:=0;
tot4:=0;
tot5:=0;
cant_viajes:=0;
chofer:=0;
tipo:=0;
total:=0;
assign(Arch,'C:\Users\Clast\Desktop\LaboratorioPascal_DomibguezEdgar_ISI_D\Nahu.dat');
{$I-}
reset(Arch);
{$I+}
if IOResult <> 0 then
begin
        writeln('No existe el archivo, porfavor intente de nuevo');
        readln;
        halt(2);
end;
assign(Sal,'C:\Users\Clast\Desktop\LaboratorioPascal_DomibguezEdgar_ISI_D\Total.dat');
rewrite(Sal);
b:= true;
while not EOF(Arch) do
begin
        if not EOF(Arch) then
                read(Arch,R);
        if b then
        begin
                reschofer:= R.id_chofer;
                restipo:= R.tipo;
                dist:= R.distancia;
                chofer_md:= R.id_chofer;
                b:=false;
        end;
        if (R.tipo <> restipo) then
        begin
                corte_tipo;
        end
        else
        begin
                if (R.id_chofer <> reschofer) then
                        corte_chofer;
        end;
        if (dist < R.distancia) then
        begin
                chofer_md:= R.id_chofer;
                dist:= R.distancia;
        end;
        //cuenta el tipo con mayor recaudacion
        Case (R.tipo) of
                1: tot1:= tot1 + R.costo;
                2: tot2:= tot2 + R.costo;
                3: tot3:= tot3 + R.costo;
                4: tot4:= tot4 + R.costo;
                5: tot5:= tot5 + R.costo;
        end;
        chofer:= chofer + 1;
        cant_viajes:= cant_viajes + 1;
end;
corte_tipo;
close(Arch);
close(Sal);
writeln();
writeln();
//aqui se muestra la forma de determinar el tipo con la mayor recaudacion de todos mediante
if tot1 > tot2 then
begin
        if tot1 > tot3 then
        begin
                if tot1 > tot4 then
                begin
                        if tot1 > tot5 then
                        begin
                                writeln('||========================================================||');
                                writeln('El tipo con mayor recaudacion es el 1, con: ', tot1:10:2,'$.');
                                writeln('||========================================================||');
                        end
                        else
                        begin
                                writeln('||========================================================');
                                writeln('||El tipo con mayor recaudacion es el 5, con: ', tot5:10:2,'$.||');
                                writeln('||========================================================||');
                        end;
                end
                else
                begin
                        if tot4 > tot5 then
                        begin
                                writeln('========================================================');
                                writeln('||El tipo con mayor recaudacion es el 4, con: ', tot4:10:2,'$.||');
                                writeln('========================================================');
                        end
                        else
                        begin
                                writeln('||==========================================================||');
                                writeln('||El tipo con mayor recaudacion es el 5, con: ', tot5:10:2,'$.');
                                writeln('||==========================================================||');
                        end;
                end;
        end
        else
        begin
                if tot3 > tot4 then
                begin
                        if tot3 > tot5 then
                        begin
                                writeln('||========================================================||');
                                writeln('El tipo con mayor recaudacion es el 3, con: ', tot3:10:2,'$.');
                                writeln('||========================================================||');
                        end
                        else
                        begin
                                writeln('||========================================================||');
                                writeln('El tipo con mayor recaudacion es el 5, con: ', tot5:10:2,'$.');
                                writeln('||========================================================||');
                        end;
                end
                else
                begin
                        if tot4 > tot5 then
                        begin
                                writeln('||========================================================||');
                                writeln('El tipo con mayor recaudacion es el 4, con: ', tot4:10:2,'$.');
                                writeln('||========================================================||');
                        end
                        else
                        begin
                                writeln('||========================================================||');
                                writeln('El tipo con mayor recaudacion es el 5, con: ', tot5:10:2,'$.');
                                writeln('||========================================================||');
                        end;
                end;
        end;
end
else
begin
         if tot2 > tot3 then
        begin
                if tot2 > tot4 then
                begin
                        if tot2 > tot5 then
                        begin
                                writeln('||========================================================||');
                                writeln('El tipo con mayor recaudacion es el 2, con: ', tot2:10:2,'$.');
                                writeln('||========================================================||');
                        end
                        else
                        begin
                                writeln('||========================================================||');
                                writeln('El tipo con mayor recaudacion es el 5, con: ', tot5:10:2,'$.');
                                writeln('||========================================================||');
                        end;
                end
                else
                begin
                        if tot4 > tot5 then
                        begin
                                writeln('||========================================================||');
                                writeln('El tipo con mayor recaudacion es el 4, con: ', tot4:10:2,'$.');
                                writeln('||========================================================||');
                        end
                        else
                        begin
                                writeln('||========================================================||');
                                writeln('El tipo con mayor recaudacion es el 5, con: ', tot5:10:2,'$.');
                                writeln('||========================================================||');
                        end;
                end;
        end
        else
        begin
                if tot3 > tot4 then
                begin
                        if tot3 > tot5 then
                        begin
                                writeln('||========================================================||');
                                writeln('El tipo con mayor recaudacion es el 3, con: ', tot3:10:2,'$.');
                                writeln('||========================================================||');
                        end
                        else
                        begin
                                writeln('||========================================================||');
                                writeln('El tipo con mayor recaudacion es el 5, con: ', tot5:10:2,'$.');
                                writeln('||========================================================||');
                        end;
                end
                else
                begin
                        if tot4 > tot5 then
                        begin
                                writeln('||========================================================||');
                                writeln('El tipo con mayor recaudacion es el 4, con: ', tot4:10:2,'$.');
                                writeln('||========================================================||');
                        end
                        else
                        begin
                                writeln('||========================================================||');
                                writeln('El tipo con mayor recaudacion es el 5, con: ', tot5:10:2,'$.');
                                writeln('||========================================================||');
                        end;
                end;
        end;
end;

writeln('---------------------------------------------------');
writeln('La cantidad de viajes en general es de: ', total,'.');
writeln('-----------------------------------------------------------------------------------------');
writeln('El chofer que mayor distancia recorrio fue ', chofer_md,' con una distancia de ', dist,'.');
writeln('-----------------------------------------------------------------------------------------');
readln;
readkey;
end;



//Algoritmo Principal
BEGIN //algoritmo principaL

     Textbackground(black);
     clrscr;
      ////////////////////////////
     writeln('');    
     gotoxy(7,14);write(                 'PRESIONE una TECLA PARA COMENZAR'                );
     
     readkey;
     clrscr;
	//el menu //
	repeat //cada vez que se inicia esta accion va repitiendo las acciones que ejecuta el menu
		TEXTBACKGROUND(BLACK);
		clrscr;
		TEXTCOLOR(WHITE);
	    gotoxy(32,1);Writeln('           ~~~~~~MENU~~~~~~  ');
		writeln('');
	    gotoxy(32,3);Writeln('          1.CARGA DE CHOFERES');
        writeln('');
        gotoxy(32,5);Writeln('          2.LISTADO DE TOTALES');
        writeln('');
        gotoxy(32,7);Writeln('          3.VER EL ARCHIVO DE SAL.');
        writeln('');
        gotoxy(32,9);Writeln('          4.SALIR');
        writeln('');
		TEXTCOLOR(white);
        writeln('');
		WRITE('                           ACONTINUACION PRESIONE LA OPCION QUE DESEA REALIZAR: ');
		READ(opc);
		case opc of

		 	1:
           	begin  //carga de los choferes
                clrscr;
                gotoxy(14,14);write('Si quiere cargar presione la opcion que desea:');
                readkey;
              CARGAR;
		    end;

			2:
    	     begin//totales
		  		clrscr;
                gotoxy(14,14);write('Si quiere listar totales presione la opcion que desea:');

                TOTALIZAR;
		  	end;

          3:
              begin//ver el archivo de salida
		  		clrscr;
                gotoxy(14,14);write('Si quiere ver el archivo de salida presione la opcion que desea:');
                readkey;
                MOSTRAR;

		  	end;
             4:
              begin//salida de la iteracion
		  		clrscr;
		  		readkey;

		  	end;
		else 
			begin//solucion a que soluciona el ingresar cualquir numero traduzca en error al programa
		   		writeln( '         ingrese caracteres validos              ');
		   		readkey;
		   	end;
		end;
	until opc = 4;
end.
