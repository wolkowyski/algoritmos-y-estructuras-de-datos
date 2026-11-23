

program untitled;

uses crt;
var 
	sec, sal: text;
	v,a,b,c: char;
	cont, error : integer;
	pal_de_3, pal_totales: real;
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
	cont := 0;
	pal_de_3:= 0;
	pal_totales:= 0;
	while not EOF (sec) do
	begin
		while not EOF (sec) and (v = ' ') do
		begin
			read(sec, v);
		end;
		while not EOF (sec) and (v <> ' ') do
		begin
			cont := cont + 1;
			if not EOF (sec) and (cont = 1) then
			begin
				a:= v;
			end
			else
				begin
					if not EOF (sec) and (cont = 2) then
					begin
						b:= v;
					end
					else
						begin
							if not EOF (sec) and (cont = 3) then
							begin
								c:= v;
								if not EOF (sec) and (cont = 3) then
								begin
									write(sal, a); write(sal, b); write(sal, c);
									pal_de_3 := pal_de_3 + 1;
								end;
							end;
						end;
				end;
			read(sec, v);
		end;
		pal_totales := pal_totales + 1;
		cont:= 0;
	end;
	close(sal);
	writeln('El porcentaje de palabras de 3 caracteres es: ', (pal_de_3/pal_totales)*100:00:0);
	writeln('La cantidad de palabras con 3 caracteres ', pal_de_3:00:0);
	writeln('La cantidad de palabras totales es: ', pal_totales:00:0);
	
END.

