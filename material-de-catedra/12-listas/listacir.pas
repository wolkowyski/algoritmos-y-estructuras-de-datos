PROGRAM LISTACIR;
TYPE
   T_NODO = ^NODO;
   NODO = RECORD
      dato : string;
      prox : T_NODO;
   END;
VAR PRIM, p, m: T_NODO;
   a, q : T_NODO;
     VALOR: STRING;
BEGIN
   //Inicializamos la lista
   PRIM:=NIL;
   WRITELN ('INGRESE UN NOMBRE');
   READLN (VALOR);
   WHILE VALOR <> ' ' DO
      BEGIN
         NEW(p);   // carga del nodo
         p^.dato:=VALOR;
         p^.prox:= p;
         IF prim=NIL THEN
            BEGIN
               prim:=p;  // lista vacia
            END
         ELSE
            BEGIN
              M:= PRIM;
              if M = M^.PROX
              then
                  begin  // lista unitaria
                  M^.PROX:= P;
                  P^.PROX:= M;
                  if   M^.DATO > VALOR
                  then  PRIM := P;
                  end
               else
                  begin   // busco la posicion
                  M:= PRIM;
                  while (PRIM <> M^.PROX)  and (M^.DATO < VALOR)  do
                     begin
                       A:= M;
                       M:= M^.PROX ;
                     end;
                  if PRIM = M   // comienzan los casos
                     then  //INSERCION-PREVIA
                           begin
                           P^.PROX := M;
                           Q:= M^.PROX;
                           while  (PRIM <> Q) do
                            begin
                            a:= Q;
                            Q:= Q^.PROX;
                            end;
                           end
                     else
                     begin if PRIM = M^.PROX
                           then  //INSERCION POSTERIOR
                              begin
                              M^.PROX := P;
                              P^.PROX := PRIM;
                              end
                           else //INSERCION INTERMEDIA
                              begin
                              a^.PROX := P;
                              P^.PROX := M;
                              end;
                       end;
                    end;
                 end;

      WRITELN ('INGRESE UN NOMBRE');
      READLN (VALOR);
      end;
      m:= prim;
      while (prim<> m^.prox) do
      begin
          writeln ( m^.dato);
          m:= m^.prox;
      end;
      readln();
      m:=prim;
      while (prim<> m^.prox) do
      begin
          q:=m;
          dispose (q);
          m:= m^.prox;
      end;
      dispose (prim);
      readln;
end.


