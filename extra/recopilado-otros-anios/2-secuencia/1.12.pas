program untitled;

uses crt;
var 
	sec, sal: text;
	v, a, b, c: char;
	error, cont, contotal, contpal: integer;

BEGIN
	Assign (sal,'C:\Users\Usuario\Desktop\Practica y ejercicios\text(salida).txt');
	rewrite (sal);
	Assign (sec,'C:\Users\Usuario\Desktop\Practica y ejercicios\text(entrada).txt');		(*Se inicializa una secuencia de entrada*)
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
					read (sec, v);
				end;
					
					if not EOF (sec)and(cont = 3) then
					begin
						write(sal, a); 
						write(sal, b); 
						write(sal, c); 
						write(sal,' ');
						contpal:= contpal + 1;
						contotal:= contotal + 1;
					end
					else
						begin
							contotal:= contotal + 1;
						end;
						cont:= 0;
				end;
			end;
       close(sal);
    writeln('Cantidad de palabras con tres caracteres: ', contpal);
    writeln('Cantidad de palabras totales: ', contotal);
	writeln('El porcentaje de palabras con tres caracteres es ', (contpal/contotal)*100:00:0,  ' %');
END.
