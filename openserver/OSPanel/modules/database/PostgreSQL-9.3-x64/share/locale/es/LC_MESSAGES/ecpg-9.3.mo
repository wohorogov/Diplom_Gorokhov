��    v      �  �   |      �	  ~   �	  -   p
  0   �
  +   �
  g   �
     c  4   �  7   �  s   �  .   d  G   �  4   �  )     w   :  4   �     �  @   �  =   ;  !   y     �  ,   �  1   �  *     -   C  1   q  '   �  &   �  +   �  "     #   A     e  )   m  =   �  	   �     �  &   �  <   "  !   _  	   �  -   �  +   �  "   �       ,   #     P     o  *   �  "   �  '   �            !   3     U  !   n     �      �  3   �  /   �  '   *  5   R  I   �  ,   �  /   �  *   /  T   Z  '   �     �     �                7  -   Q  ,     ,   �  5   �       )   +  ?   U  8   �  �   �  0   e  5   �     �  A   �  L   #     p  6   ~  '   �  #   �       (     4   7  )   l     �  /   �     �      �  $        B  "   Z  ,   }     �     �  '   �     
     )  $   D  D   i  +   �  ?   �  0        K  8   j     �     �  &   �        �  '  �   �  0   f   9   �   0   �   p   !     s!  A   �!  A   �!     "  7   �"  E   �"  G   #  .   ]#  �   �#  L   ;$     �$  M   �$  F   �$  +   5%  ,   a%  D   �%  ?   �%  8   &  ;   L&  ?   �&  5   �&  4   �&  9   3'  %   m'  )   �'     �'  2   �'  R   �'  
   K(     V(  7   u(  M   �(  &   �(     ")  6   .)  <   e)  0   �)     �)  .   �)  "   *     @*  7   _*  8   �*  4   �*     +  (   #+  0   L+  &   }+  /   �+     �+  '   �+  3   ,  2   E,  (   x,  C   �,  X   �,  D   >-  3   �-  1   �-  R   �-  8   <.     u.      �.     �.     �.     �.  2   �.  1   0/  1   b/  1   �/     �/  2   �/  N   0  C   e0  �   �0  >   @1  J   1     �1  O   �1  a   02     �2  B   �2  .   �2  -   3     B3  +   T3  A   �3  .   �3      �3  =   4     P4  ,   p4  2   �4     �4  ,   �4  5   5     Q5  #   j5  '   �5  -   �5  '   �5  *   6  P   76  9   �6  K   �6  5   7  #   D7  =   h7  !   �7  %   �7  ,   �7  )   8     o   9   q       5   N   '   T          v      Z              c   ^   1       3          !   d                              
   i                     `           a   _   7   b   m       [   g   t   -   2      K   ]   f      \   X      ;       =      	      +   S   j   )      h               u          L   $   I   *   E   D   e   B   G   C              "   l   U   Y       O   6   (   W       V   .       #           @           R   H   k      r   F       %             /           4       8   ?       M   0       Q   P   >   J       &   <       p   :      A                    ,         n   s    
If no output file is specified, the name is formed by adding .c to the
input file name, after stripping off .pgc if present.
 
Report bugs to <pgsql-bugs@postgresql.org>.
   --regression   run in regression testing mode
   -?, --help     show this help, then exit
   -C MODE        set compatibility mode; MODE can be one of
                 "INFORMIX", "INFORMIX_SE"
   -D SYMBOL      define SYMBOL
   -I DIRECTORY   search DIRECTORY for include files
   -V, --version  output version information, then exit
   -c             automatically generate C code from embedded SQL code;
                 this affects EXEC SQL TYPE
   -d             generate parser debug output
   -h             parse a header file, this option includes option "-c"
   -i             parse system include files as well
   -o OUTFILE     write result to OUTFILE
   -r OPTION      specify run-time behavior; OPTION can be:
                 "no_indicator", "prepare", "questionmarks"
   -t             turn on autocommit of transactions
 %s at or near "%s" %s is the PostgreSQL embedded SQL preprocessor for C programs.

 %s, the PostgreSQL embedded C preprocessor, version %d.%d.%d
 %s: could not open file "%s": %s
 %s: no input files specified
 %s: parser debug support (-d) not available
 AT option not allowed in CLOSE DATABASE statement AT option not allowed in CONNECT statement AT option not allowed in DISCONNECT statement AT option not allowed in SET CONNECTION statement AT option not allowed in TYPE statement AT option not allowed in VAR statement AT option not allowed in WHENEVER statement COPY FROM STDIN is not implemented CREATE TABLE AS cannot specify INTO ERROR:  EXEC SQL INCLUDE ... search starts here:
 Error: include path "%s/%s" is too long on line %d, skipping
 Options:
 SHOW ALL is not implemented Try "%s --help" for more information.
 Unix-domain sockets only work on "localhost" but not on "%s" Usage:
  %s [OPTION]... FILE...

 WARNING:  arrays of indicators are not allowed on input could not open include file "%s" on line %d could not remove output file "%s"
 cursor "%s" does not exist cursor "%s" has been declared but not opened cursor "%s" is already defined descriptor "%s" does not exist descriptor header item "%d" does not exist descriptor item "%s" cannot be set descriptor item "%s" is not implemented end of search list
 expected "://", found "%s" expected "@" or "://", found "%s" expected "@", found "%s" expected "postgresql", found "%s" incomplete statement incorrectly formed variable "%s" indicator for array/pointer has to be array/pointer indicator for simple data type has to be simple indicator for struct has to be a struct indicator variable "%s" is hidden by a local variable indicator variable "%s" is hidden by a local variable of a different type indicator variable must have an integer type initializer not allowed in EXEC SQL VAR command initializer not allowed in type definition internal error: unreachable state; please report this to <pgsql-bugs@postgresql.org> interval specification not allowed here invalid bit string literal invalid connection type: %s invalid data type key_member is always 0 missing "EXEC SQL ENDIF;" missing identifier in EXEC SQL DEFINE command missing identifier in EXEC SQL IFDEF command missing identifier in EXEC SQL UNDEF command missing matching "EXEC SQL IFDEF" / "EXEC SQL IFNDEF" more than one EXEC SQL ELSE multidimensional arrays are not supported multidimensional arrays for simple data types are not supported multidimensional arrays for structures are not supported multilevel pointers (more than 2 levels) are not supported; found %d level multilevel pointers (more than 2 levels) are not supported; found %d levels nested arrays are not supported (except strings) no longer supported LIMIT #,# syntax passed to server nullable is always 1 only data types numeric and decimal have precision/scale argument only protocols "tcp" and "unix" and database type "postgresql" are supported out of memory pointer to pointer is not supported for this data type pointers to varchar are not implemented subquery in FROM must have an alias syntax error syntax error in EXEC SQL INCLUDE command too many levels in nested structure/union definition too many nested EXEC SQL IFDEF conditions type "%s" is already defined type name "string" is reserved in Informix mode unmatched EXEC SQL ENDIF unrecognized data type name "%s" unrecognized descriptor item code %d unrecognized token "%s" unrecognized variable type code %d unsupported feature will be passed to server unterminated /* comment unterminated bit string literal unterminated hexadecimal string literal unterminated quoted identifier unterminated quoted string using unsupported DESCRIBE statement using variable "%s" in different declare statements is not supported variable "%s" is hidden by a local variable variable "%s" is hidden by a local variable of a different type variable "%s" is neither a structure nor a union variable "%s" is not a pointer variable "%s" is not a pointer to a structure or a union variable "%s" is not an array variable "%s" is not declared variable "%s" must have a numeric type zero-length delimited identifier Project-Id-Version: ecpg (PostgreSQL 9.3)
Report-Msgid-Bugs-To: pgsql-bugs@postgresql.org
POT-Creation-Date: 2017-08-27 22:08+0000
PO-Revision-Date: 2013-08-30 13:01-0400
Last-Translator: Álvaro Herrera <alvherre@alvh.no-ip.org
Language-Team: PgSQL-es-Ayuda <pgsql-es-ayuda@postgresql.org>
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
 
Si no se especifica un archivo de salida, el nombre se forma agregando .c al
archivo de entrada, luego de quitar .pgc si está presente.
 
Reporte errores a <pgsql-bugs@postgresql.org>.
   --regression   ejecuta en modo de prueba de regresión
   -?, --help     muestra esta ayuda, luego sale
   -C MODO        establece el modo de compatibilidad;
                 MODO puede ser "INFORMIX", "INFORMIX_SE"
   -D SYMBOL      define SYMBOL
   -I DIRECTORIO   busca los archivos de inclusión en DIRECTORIO
   -V, --version  muestra información de la versión, luego sale
   -c             genera automáticamente código en C desde código SQL
                 incrustado; esto afecta EXEC SQL TYPE
   -d             genera salida depurada del analizador
   -h             analiza un archivo de cabecera; esto incluye «-c»
   -i             analiza además los archivos de inclusión de sistema
   -o ARCHIVO     escribe la salida en ARCHIVO
   -r OPCIÓN      especifica el comportamiento en tiempo de ejecución;
                 OPCIÓN puede ser: «no_indicator», «prepare»,
                 «questionmarks»
   -t             activa el compromiso (commit) automático de transacciones
 %s en o cerca de «%s» %s es el preprocesador de SQL incrustado para programas en C de PostgreSQL.

 %s, el preprocesador de C incrustado de PostgreSQL, versión %d.%d.%d
 %s: no se pudo abrir el archivo «%s»: %s
 %s: no se especificaron archivos de entrada
 %s: la depuración del analizador (parser, -d) no está disponible)
 la opción AT no está permitida en la sentencia CLOSE DATABASE la opción AT no está permitida en la sentencia CONNECT la opción AT no está permitida en la sentencia DISCONNECT la opción AT no está permitida en la sentencia SET CONNECTION la opción AT no está permitida en la sentencia TYPE la opción AT no está permitida en la sentencia VAR la opción AT no está permitida en la sentencia WHENEVER COPY FROM STDIN no está implementado CREATE TABLE AS no puede especificar INTO ERROR:  EXEC SQL INCLUDE ... la búsqueda comienza aquí:
 Error: ruta de inclusión «%s/%s» es demasiada larga en la línea %d, omitiendo
 Opciones:
 SHOW ALL no está implementado Utilice «%s --help» para obtener mayor información.
 los sockets de dominio unix sólo trabajan en «localhost» pero no en «%s» Empleo:
  %s [OPCIÓN]... ARCHIVO...

 ATENCIÓN:  no se permiten los arrays de indicadores en la entrada no se pudo abrir el archivo a incluir «%s» en la línea %d no se pudo eliminar el archivo de salida «%s»
 no existe el cursor «%s» el cursor «%s» fue declarado pero no abierto el cursor «%s» ya está definido no existe el descriptor «%s» no existe el descriptor del elemento de cabecera «%d» no se puede establecer el elemento del descriptor «%s» elemento del descriptor «%s» no está implementado fin de la lista de búsqueda
 se esperaba «://», se encontró «%s» se esperaba «@» o «://», se encontró «%s» se esperaba «@», se encontró «%s» se esperaba «postgresql», se encontró «%s» sentencia incompleta variable formada incorrectamente «%s» indicador para array/puntero debe ser array/puntero el indicador para tipo dato simple debe ser simple el indicador para struct debe ser struct variable de indicador «%s» está escondida por una variable local la variable de indicador «%s» está escondida por una variable local de tipo diferente la variable de un indicador debe ser de algún tipo numérico entero inicializador no permitido en la orden EXEC SQL VAR inicializador no permitido en definición de tipo Error Interno: estado no esperado; por favor reporte a <pgsql-bugs@postgresql.org> la especificación de intervalo no está permitida aquí cadena de bits no válida tipo de conexión no válido: %s tipo de dato no válido key_member es siempre 0 falta el «EXEC SQL ENDIF;» identificador faltante en la orden EXEC SQL DEFINE identificador faltante en la orden EXEC SQL IFDEF falta un identificador en la orden EXEC SQL UNDEF falta el «EXEC SQL IFDEF» / «EXEC SQL IFNDEF» hay más de un EXEC SQL ELSE los arrays multidimensionales no están soportados los arrays multidimensionales para tipos de datos simples no están soportados los arrays multidimensionales para estructuras no están soportados no se soportan los punteros multinivel (más de 2); se encontró 1 nivel no se soportan los punteros multinivel (más de 2); se encontraron %d niveles no se permiten arrays anidados (excepto cadenas de caracteres) la sintaxis LIMIT #,# que ya no está soportada ha sido pasada al servidor nullable es siempre 1 sólo los tipos de dato numeric y decimal tienen argumento de precisión/escala sólo los protocolos «tcp» y «unix» y tipo de bases de datos «postgresql» están soportados memoria agotada los punteros a puntero no están soportados para este tipo de dato los punteros a varchar no están implementados las subconsultas en FROM deben tener un alias error de sintaxis error de sintaxis en orden EXEC SQL INCLUDE demasiados niveles en la definición anidada de estructura/unión demasiadas condiciones EXEC SQL IFDEF anidadas el tipo «%s» ya está definido el nombre de tipo «string» está reservado en modo Informix EXEC SQL ENDIF sin coincidencia nombre de tipo de datos «%s» no reconocido código de descriptor de elemento %d no reconocido elemento «%s» no reconocido código de tipo de variable %d no reconocido característica no soportada será pasada al servidor comentario /* no cerrado una cadena de bits está inconclusa una cadena hexadecimal está inconclusa un identificador en comillas está inconcluso una cadena en comillas está inconclusa utilizando sentencia DESCRIBE no soportada el uso de la variable «%s» en diferentes sentencias declare no está soportado la variable «%s» está escondida por una variable local la variable «%s» está escondida por una variable local de tipo diferente la variable «%s» no es una estructura ni una unión la variable «%s» no es un puntero la variable «%s» no es un puntero a una estructura o unión la variable «%s» no es un array la variable «%s» no está declarada la variable «%s» debe tener tipo numérico identificador delimitado de longitud cero 