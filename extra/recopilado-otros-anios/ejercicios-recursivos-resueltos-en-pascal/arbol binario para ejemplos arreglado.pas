PROGRAM arbolbin;
USES crt;
TYPE 
    tipoarbol = ^tnodo;
     tnodo  =RECORD
        raiz:integer;
        izq:tipoarbol;
        der:tipoarbol;
      end;

VAR
   prim, arbol:tipoarbol;
   sel:integer;

//Recursividad/////////////////////////////////////////////////////////
funtion buscar(arbol: tipoarbol): boolean;
begin
     if arbol = nil then
     begin
          buscar := false;
     end
     else
         if (c = arbol^.raiz)then
         begin
              buscar := true;
         end
         else
             begin
                  buscar := buscar(arbol^.izq) + buscar(arbol^.der);
             end;

end;

///////////////////////////////////////////////////////////////////////
function nodos_hojas(arbol: tipoarbol): integer;
begin
	if arbol = nil then
	begin
		nodos_hojas:= 0;
	end
	else
		if (arbol^.izq = nil) and (arbol^.der = nil) then
		begin
			nodos_hojas:= 1;
		end
		else
			begin
				nodos_hojas:= nodos_hojas(arbol^.izq) + nodos_hojas(arbol^.der);
			end;
end;

function nodos(arbol: tipoarbol): integer;
begin
	if arbol = nil then
	begin
		nodos:= 0;
	end
	else
		begin
			nodos:= 1 + nodos(arbol^.izq) + nodos(arbol^.der);
		end;
end;

function altura(arbol: tipoarbol): integer;
begin
	if arbol = nil then
	begin
		altura:= 0;
	end
	else
		begin
			if (arbol^.izq = nil) and (arbol^.der = nil) then
			begin
				altura:= 1;
			end
			else
				begin
					if (altura(arbol^.izq) > altura(arbol^.der)) then
					begin
						altura:= 1 + altura(arbol^.izq);
					end
					else
						begin
							altura:= 1 + altura(arbol^.der);
						end;
				end;
		end;
end;
////////////////////////////////////////////////////////////////////////////////////////////
function mult (arbol: tipoarbol):integer;
begin
     if arbol = nil then
     begin
          mult:= 0;
     end
     else
         if(arbol^.raiz mod 3)= 0 then
         begin
              mult:=  arbol^.raiz + mult(arbol^.izq) +mult(arbol^.der);
         end
         else
             begin
                  mult:=  1 + mult(arbol^.izq) +mult(arbol^.der);
             end;

end;
/////////////////////////////////////////////////////////////////////////////////////////////////
//menu
PROCEDURE menu;
	BEGIN
		writeln('0_salir ');
		writeln('1_insertar un elemento en el arbol ');
		writeln('2_imprimir el arbol (pre-orden) ');
		writeln('3_imprimir el arbol (post-orden) ');
		writeln('4_imprimir el arbol (en-orden) ');
		writeln('5_imprimir cantidad de nodos hojas de la arbol');
		writeln('6_imprimir cantidad de nodos');
		writeln('7_imprimir la altura del arbol');
        writeln('8_numeros multiplos de 3 en el arbol');
	END;

//proceso ABB de toda la vida
PROCEDURE insercion(VAR arbol:tipoarbol;elem:integer);
	begin
		if arbol = nil then
			begin
			    NEW(arbol);
				arbol^.raiz:= elem;
				arbol^.izq:= NIL;
				arbol^.der:=NIL;
			end
		else
			begin
				if elem < arbol^.raiz then
				begin
					insercion(arbol^.izq,elem);
				end
				else
					begin
						insercion(arbol^.der,elem);
					end;
			end;
	end;	
			
//RAIZ IZQ DER
PROCEDURE recorridopre_orden(arbol: tipoarbol);
	BEGIN
		if arbol <> nil then
		begin
			write(' ',arbol^.raiz);
			recorridopre_orden(arbol^.izq);
			recorridopre_orden(arbol^.der);
		end;
	END;
	
//IZQ DER RAIZ
PROCEDURE recorridopost_orden(arbol: tipoarbol);
	BEGIN
		if arbol <> nil then
		begin
			recorridopost_orden(arbol^.izq);
			recorridopost_orden(arbol^.der);    
			write(' ',arbol^.raiz);
		end;
  	END;
  	
// IZQ RAIZ DER
PROCEDURE recorridoen_orden(arbol: tipoarbol);
	BEGIN
		if arbol <> nil then
		begin
			recorridoen_orden(arbol^.izq);	
			write(' ',arbol^.raiz);
			recorridoen_orden(arbol^.der);
		end;	
  	END;


PROCEDURE insertarelem(VAR arbol:tipoarbol);
	VAR
		elem:integer;

	BEGIN
		write('inserte el elemento que desee ');
		readln(elem);
		insercion(arbol,elem);

	END;

//bucle mayor
BEGIN
	REPEAT 
			writeln(' ');
			menu;
			write('seleccione que desea hacer ');
			readln(sel);
			CASE  sel OF 

			1: insertarelem(arbol);
			2: recorridopre_orden(arbol);
			3: recorridoen_orden(arbol);
			4: recorridopost_orden(arbol);
			5: writeln('Cantidad de nodos hojas es: ', nodos_hojas(arbol));
			6: writeln('Cantidad de nodos  es: ', nodos(arbol));
			7: writeln('La altura del arbol es: ', altura(arbol));
            8: writeln('los numeros multiplos de 3 son: ', mult(arbol));
		END;	
		writeln('Presione cualquier tecla: ');
		ReadKey;
		ClrScr();
	UNTIL sel = 0;
END.


