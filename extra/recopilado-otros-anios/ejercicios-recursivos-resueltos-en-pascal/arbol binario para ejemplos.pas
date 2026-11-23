PROGRAM arbolbin;
USES crt;
TYPE 
    tipoarbol=^tnodo;
    tnodo  =RECORD
        raiz:integer;
        izq:tipoarbol;
        der:tipoarbol;
     end;

VAR
   arbol:tipoarbol;
   sel:integer;


//menu
PROCEDURE menu;
	BEGIN
		writeln('0_salir');
		writeln('1_insertar un elemento en el arbol');
		writeln('2_imprimir el arbol (pre-orden)');
		writeln('3_imprimir el arbol (post-orden)');
		writeln('4_imprimir el arbol (en-orden)');
        writeln('5_contar la cantidad de nodos del arbol binario');
	END;

//proceso ABB de toda la vida
PROCEDURE insercion(VAR arbol:tipoarbol;elem:integer);
	BEGIN
		IF arbol = NIL THEN
			BEGIN
			    NEW(arbol);
				arbol^.raiz:= elem;
				arbol^.izq:= NIL;
				arbol^.der:=NIL;
			END
		ELSE
			IF elem < arbol^.raiz THEN
				insercion(arbol^.izq,elem)

			ELSE
                insercion(arbol^.der,elem);
	END;			
//RAIZ IZQ DER
PROCEDURE recorridopre_orden(arbol: tipoarbol);
	BEGIN

		write(arbol^.raiz,' ');

		IF arbol^.izq <> NIL THEN
			recorridopre_orden(arbol^.izq);
		IF arbol^.der <> NIL THEN
			recorridopre_orden(arbol^.der);
	END;
//IZQ DER RAIZ
PROCEDURE recorridopost_orden(arbol: tipoarbol);
	BEGIN
		IF arbol^.izq <> NIL THEN
			recorridopost_orden(arbol^.izq);
		IF arbol^.der <> NIL THEN
			recorridopost_orden(arbol^.der);

  	       write(arbol^.raiz,' ');

  	END;
// IZQ RAIZ DER
PROCEDURE recorridoen_orden(arbol: tipoarbol);
	BEGIN
		IF arbol^.izq <> NIL THEN
			recorridoen_orden(arbol^.izq);

		write(arbol^.raiz,' ');

		IF arbol^.der <> NIL THEN
			recorridoen_orden(arbol^.der);
  		
  	END;


PROCEDURE insertarelem(VAR arbol:tipoarbol);
	VAR
		elem:integer;

	BEGIN
		write('inserte el elemento que desee');
		readln(elem);
		insercion(arbol,elem);

	END;

 //esto tenia yo en otro archivo
FUNCTION hoja(arbol:tipoarbol):integer;
BEGIN
     if (arbol = NIL) then
     BEGIN
		hoja:= 0;
     END
     ELSE
     IF(arbol^.der = NIL) and (arbol^.izq = NIL) then
     BEGIN
          hoja:= 1;
     END
     ELSE
     BEGIN
          hoja:= hoja(arbol^.izq) + hoja(arbol^.der);
         // WRITE(arbol^.raiz,' ');
     END;


END;

//bucle mayor
BEGIN
	REPEAT 
			writeln(' ');

			menu;
			write('seleccione que desea hacer');
			readln(sel);
			CASE  sel OF 

			1: insertarelem(arbol);
			2: recorridopre_orden(arbol);
			3: recorridoen_orden(arbol);
			4: recorridopost_orden(arbol);
            5: hoja(arbol);
		END;
	UNTIL sel = 0;
    clrscr;
END.


