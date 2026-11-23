// ==========================================================================
//  Algoritmos y Estructuras de Datos - UTN FRRe (Ing. en Sistemas)
//  Laboratorio de Pascal (2023) - Tema 1
//  Lee SecuenciaStar.txt (en la misma carpeta) y genera el archivo SustNT.
//  Compilar con Free Pascal: fpc tema-1.pas
// ==========================================================================

program Tema1;

type
  Fecha = record
    aa: Integer;
    mm: 1..12;
    dd: 1..31;
  end;

  Salida = record
    FechaRegistro: Fecha;
    NombreSustancia: String[20];
  end;

const
  Conversion = 0.453592;

var
  ArchSalida: File of Salida;
  RegS: Salida;
  SecuenciaStar: Text;
  s: Char;
  Banderita: Boolean;
  decena, unidad, dia, mes, mil, centena, anio, i: Integer;
  nombre: String[20];
  LibrasTotales, Libras, Kilogramos: Real;
  enero, febrero, marzo, abril, mayo, junio, julio, agosto, septiembre, octubre, noviembre, diciembre: Real;

function Numero(s: Char): Integer;
begin
  case s of
    '0': Numero := 0;
    '1': Numero := 1;
    '2': Numero := 2;
    '3': Numero := 3;
    '4': Numero := 4;
    '5': Numero := 5;
    '6': Numero := 6;
    '7': Numero := 7;
    '8': Numero := 8;
    '9': Numero := 9;
  else
    Numero := -1;
  end;
end;

begin
  Assign(SecuenciaStar, 'SecuenciaStar.txt');
  Reset(SecuenciaStar);
  Assign(ArchSalida, 'SustNT');
  Rewrite(ArchSalida);
  enero := 0;
  febrero := 0;
  marzo := 0;
  abril := 0;
  mayo := 0;
  junio := 0;
  julio := 0;
  agosto := 0;
  septiembre := 0;
  octubre := 0;
  noviembre := 0;
  diciembre := 0;

  while not Eof(SecuenciaStar) do
  begin
    Read(SecuenciaStar, s);

    if s = 'N' then
      Banderita := True
    else
      Banderita := False;

    decena:= Numero(s)*10;
        read(SecuenciaStar,s);
        unidad:= Numero(s);
        dia:= decena+unidad;
        read(SecuenciaStar,s);
        decena:= Numero(s)*10;
        read(SecuenciaStar,s);
        unidad:= Numero(s);
        mes:= decena+unidad;
        read(SecuenciaStar,s);
        mil:= Numero(s)*1000;
        read(SecuenciaStar,s);
        centena:= Numero(s)*100;
        read(SecuenciaStar,s);
        decena:= Numero(s)*10;
        read(SecuenciaStar,s);
        unidad:= Numero(s);
        anio:= mil + centena + decena + unidad;
        read(SecuenciaStar,s);

    Read(SecuenciaStar, s);
    Write('El Nombre de la Sustancia es: ');
    nombre := '';
    while s <> '#' do
    begin
      Write(s); // Emito por pantalla el nombre de la sustancia
      nombre := nombre + s; // Grabo el nombre en una variable acumuladora
      Read(SecuenciaStar, s);
    end;
    Read(SecuenciaStar, s);

    if Banderita then
    begin
      RegS.FechaRegistro.dd := dia;
      RegS.FechaRegistro.mm := mes;
      RegS.FechaRegistro.aa := anio;
      RegS.NombreSustancia := nombre;
      Write(ArchSalida, RegS); // Grabamos o Escribimos el Archivo de salida, con los datos de la fecha, seguido del nombre - Consigna 2
    end;

    for i := 0 to 7 do
      Read(SecuenciaStar, s);

    LibrasTotales := 0;
    while s <> '#' do
    begin
      LibrasTotales := LibrasTotales * 10;
      Libras := Numero(s);
      LibrasTotales := LibrasTotales + Libras;
      Read(SecuenciaStar, s);
    end;
    Kilogramos := LibrasTotales * Conversion;
    Writeln(', El peso de la sustancia es de: ', Round(Kilogramos), ' kg.');

    if anio = 2022 then
    begin
      case mes of
        01: enero := enero + Kilogramos;
        02: febrero := febrero + Kilogramos;
        03: marzo := marzo + Kilogramos;
        04: abril := abril + Kilogramos;
        05: mayo := mayo + Kilogramos;
        06: junio := junio + Kilogramos;
        07: julio := julio + Kilogramos;
        08: agosto := agosto + Kilogramos;
        09: septiembre := septiembre + Kilogramos;
        10: octubre := octubre + Kilogramos;
        11: noviembre := noviembre + Kilogramos;
        12: diciembre := diciembre + Kilogramos;
      end;
    end;

    Read(SecuenciaStar, s);
  end;
  Writeln(mes);
  Writeln(dia);
  Writeln(anio);
  Writeln('El total de cantidades ingresadas del 2022 para el mes de enero es: ', enero: 5: 2, ' kilogramos');
  Writeln('El total de cantidades ingresadas del 2022 para el mes de febrero es: ', febrero: 5: 2, ' kilogramos');
  Writeln('El total de cantidades ingresadas del 2022 para el mes de marzo es: ', marzo: 5: 2, ' kilogramos');
  Writeln('El total de cantidades ingresadas del 2022 para el mes de abril es: ', abril: 5: 2, ' kilogramos');
  Writeln('El total de cantidades ingresadas del 2022 para el mes de mayo es: ', mayo: 5: 2, ' kilogramos');
  Writeln('El total de cantidades ingresadas del 2022 para el mes de junio es: ', junio: 5: 2, ' kilogramos');
  Writeln('El total de cantidades ingresadas del 2022 para el mes de julio es: ', julio: 5: 2, ' kilogramos');
  Writeln('El total de cantidades ingresadas del 2022 para el mes de agosto es: ', agosto: 5: 2, ' kilogramos');
  Writeln('El total de cantidades ingresadas del 2022 para el mes de septiembre es: ', septiembre: 5: 2, ' kilogramos');
  Writeln('El total de cantidades ingresadas del 2022 para el mes de octubre es: ', octubre: 5: 2, ' kilogramos');
  Writeln('El total de cantidades ingresadas del 2022 para el mes de noviembre es: ', noviembre: 5: 2, ' kilogramos');
  Writeln('El total de cantidades ingresadas del 2022 para el mes de diciembre es: ', diciembre: 5: 2, ' kilogramos');

  Close(SecuenciaStar);
  Close(ArchSalida);
  Readln;
end.
