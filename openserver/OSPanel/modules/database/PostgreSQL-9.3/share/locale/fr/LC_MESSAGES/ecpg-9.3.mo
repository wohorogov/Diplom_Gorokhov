��    x      �  �   �      (
  ~   )
  -   �
  0   �
  +     g   3     �  4   �  7   �  s   (  .   �  G   �  4     )   H  w   r  4   �       @   2  =   s  !   �     �  ,   �  1     *   P  -   {  1   �  '   �  &     +   *  "   V  #   y     �  )   �  =   �  	          &   3  <   Z  !   �  	   �  -   �  +   �  "        @  ,   [     �     �  *   �  "   �  '        <     P  !   k     �  !   �     �      �  3   �  /   2  '   b  )   �  *   �  5   �  I     ,   _  /   �  *   �  T   �  '   <     d          �     �     �  -   �  ,     ,   9  5   f     �  )   �  ?   �  8   "  �   [  0   �  5   #     Y  A   n  L   �     �  6     '   B  #   j     �  (   �  4   �  )   �     #  /   @     p      �  $   �     �  "   �  ,   
     7     O  '   o     �     �  $   �  D   �  +   ;  ?   g  0   �     �  8   �     0     N  &   l      �  �  �  �      6   5!  >   l!  .   �!  |   �!  "   W"  F   z"  .   �"  �   �"  ?   r#  V   �#  C   	$  2   M$  �   �$  C   %     ]%  M   y%  B   �%  0   
&  (   ;&  =   d&  <   �&  5   �&  8   '  <   N'  2   �'  1   �'  6   �'  #   '(  )   K(  	   u(  1   (  Q   �(  	   )     )  2   *)  ]   ])  $   �)     �)  <   �)  @   **  3   k*      �*  1   �*  &   �*  $   +  ;   >+  A   z+  7   �+     �+  #   ,  .   6,  !   e,  *   �,     �,     �,  A   �,  ;   *-  -   f-  3   �-  /   �-  C   �-  W   <.  3   �.  8   �.  6   /  g   8/  ,   �/     �/     �/     0     %0     @0  5   _0  4   �0  4   �0  E   �0     E1  6   ]1  Z   �1  J   �1  �   :2  Q   �2  9   :3     t3  \   �3  n   �3     Y4  =   l4  N   �4  ,   �4     &5  3   85  A   l5  -   �5  #   �5  ?    6     @6  1   Z6  1   �6     �6  '   �6  9   7     ;7  "   W7  .   z7  (   �7  &   �7  3   �7  i   -8  8   �8  M   �8  8   9  *   W9  J   �9  )   �9  )   �9  /   !:  &   Q:         )         ,   ;          @      !   8   N   P           <   ]      /   v      x   +   Q                1   k          s   (   H   u   4   p   =       9      d   G       Y       \       >             $   j   K   I   :   Z           U       h      c       
   F               O       #   `   a      T               X   5      E      g   '   %   f   o   t   B   L          W       "           V   m   C           J   *   n   ^   7   r          R          w      3      0   6                               .   e   _   M   b   ?   [       l       &                 2   	      A       D   S   i           q            -    
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
 expected "://", found "%s" expected "@" or "://", found "%s" expected "@", found "%s" expected "postgresql", found "%s" incomplete statement incorrectly formed variable "%s" indicator for array/pointer has to be array/pointer indicator for simple data type has to be simple indicator for struct has to be a struct indicator struct "%s" has too few members indicator struct "%s" has too many members indicator variable "%s" is hidden by a local variable indicator variable "%s" is hidden by a local variable of a different type indicator variable must have an integer type initializer not allowed in EXEC SQL VAR command initializer not allowed in type definition internal error: unreachable state; please report this to <pgsql-bugs@postgresql.org> interval specification not allowed here invalid bit string literal invalid connection type: %s invalid data type key_member is always 0 missing "EXEC SQL ENDIF;" missing identifier in EXEC SQL DEFINE command missing identifier in EXEC SQL IFDEF command missing identifier in EXEC SQL UNDEF command missing matching "EXEC SQL IFDEF" / "EXEC SQL IFNDEF" more than one EXEC SQL ELSE multidimensional arrays are not supported multidimensional arrays for simple data types are not supported multidimensional arrays for structures are not supported multilevel pointers (more than 2 levels) are not supported; found %d level multilevel pointers (more than 2 levels) are not supported; found %d levels nested arrays are not supported (except strings) no longer supported LIMIT #,# syntax passed to server nullable is always 1 only data types numeric and decimal have precision/scale argument only protocols "tcp" and "unix" and database type "postgresql" are supported out of memory pointer to pointer is not supported for this data type pointers to varchar are not implemented subquery in FROM must have an alias syntax error syntax error in EXEC SQL INCLUDE command too many levels in nested structure/union definition too many nested EXEC SQL IFDEF conditions type "%s" is already defined type name "string" is reserved in Informix mode unmatched EXEC SQL ENDIF unrecognized data type name "%s" unrecognized descriptor item code %d unrecognized token "%s" unrecognized variable type code %d unsupported feature will be passed to server unterminated /* comment unterminated bit string literal unterminated hexadecimal string literal unterminated quoted identifier unterminated quoted string using unsupported DESCRIBE statement using variable "%s" in different declare statements is not supported variable "%s" is hidden by a local variable variable "%s" is hidden by a local variable of a different type variable "%s" is neither a structure nor a union variable "%s" is not a pointer variable "%s" is not a pointer to a structure or a union variable "%s" is not an array variable "%s" is not declared variable "%s" must have a numeric type zero-length delimited identifier Project-Id-Version: PostgreSQL 9.3
Report-Msgid-Bugs-To: pgsql-bugs@postgresql.org
POT-Creation-Date: 2018-02-05 13:45+0000
PO-Revision-Date: 2018-02-10 17:46+0100
Last-Translator: Guillaume Lelarge <guillaume@lelarge.info>
Language-Team: PostgreSQLfr <pgsql-fr-generale@postgresql.org>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Poedit 2.0.3
 
Si aucun nom de fichier en sortie n'est fourni, le nom est formaté en
ajoutant le suffixe .c au nom du fichier en entrée après avoir supprimé le
suffixe .pgc s'il est présent
 
Rapporter les bogues à <pgsql-bugs@postgresql.org>.
   --regression   s'exécute en mode de tests des régressions
   -?, --help     affiche cette aide et quitte
   -C MODE        configure le mode de compatibilité ; MODE peut être
                 « INFORMIX » ou « INFORMIX_SE »
   -D SYMBOLE     définit SYMBOLE
   -I RÉPERTOIRE  recherche les fichiers d'en-têtes dans RÉPERTOIRE
   -V, --version  affiche la version et quitte
   -c             produit automatiquement le code C à partir du code SQL embarqué ;
                 ceci affecte EXEC SQL TYPE
   -d             produit la sortie de débogage de l'analyseur
   -h             analyse un fichier d'en-tête, cette option inclut l'option « -c »
   -i             analyse en plus les fichiers d'en-tête systèmes
   -o FICHIER     écrit le résultat dans FICHIER
   -r OPTION      indique le comportement à l'exécution ; OPTION peut valoir :
                 « no_indicator », « prepare », « questionmarks »
   -t             active la validation automatique des transactions
 %s sur ou près de « %s » %s est le préprocesseur SQL embarqué de PostgreSQL pour les programmes C.

 %s, le préprocesseur C embarqué de PostgreSQL, version %d.%d.%d
 %s : n'a pas pu ouvrir le fichier « %s » : %s
 %s : aucun fichier précisé en entrée
 %s : support de débogage de l'analyseur (-d) non disponible
 option AT non autorisée dans une instruction CLOSE DATABASE option AT non autorisée dans une instruction CONNECT option AT non autorisée dans une instruction DISCONNECT option AT non autorisée dans une instruction SET CONNECTION option AT non autorisée dans une instruction TYPE option AT non autorisée dans une instruction VAR option AT non autorisée dans une instruction WHENEVER COPY FROM STDIN n'est pas implanté CREATE TABLE AS ne peut pas indiquer INTO ERREUR :  la recherche EXEC SQL INCLUDE ... commence ici :
 Erreur : le chemin d'en-tête « %s/%s » est trop long sur la ligne %d,
ignoré
 Options:
 SHOW ALL n'est pas implanté Essayer « %s --help » pour plus d'informations.
 les sockets de domaine Unix fonctionnent seulement sur « localhost », mais pas sur « %s » Usage:
  %s [OPTION]... FICHIER...

 ATTENTION :  les tableaux d'indicateurs ne sont pas autorisés en entrée n'a pas pu ouvrir le fichier d'en-tête « %s » sur la ligne %d n'a pas pu supprimer le fichier « %s » en sortie
 le curseur « %s » n'existe pas le curseur « %s » est déclaré mais non ouvert le curseur « %s » est déjà défini le descripteur « %s » n'existe pas l'élément d'en-tête du descripteur « %d » n'existe pas l'élément du descripteur « %s » ne peut pas être initialisé l'élément du descripteur « %s » n'est pas implanté fin de la liste de recherche
 « :// » attendu, « %s » trouvé « @ » ou « :// » attendu, « %s » trouvé « @ » attendu, « %s » trouvé « postgresql » attendu, « %s » trouvé instruction incomplète variable « %s » mal formée l'indicateur pour le tableau/pointeur doit être tableau/pointeur l'indicateur d'un type de données simple doit être simple l'indicateur d'un struct doit être un struct le struct indicateur « %s » a trop peu de membres le struct indicateur « %s » a trop de membres la variable indicateur « %s » est cachée par une variable locale la variable indicateur « %s » est caché par une variable locale d'un type
différent la variable d'indicateur doit avoir un type integer initialiseur non autorisé dans la commande EXEC SQL VAR initialiseur non autorisé dans la définition du type erreur interne : l'état ne peut être atteint ; merci de rapporter ceci à
<pgsql-bugs@postgresql.org> interval de spécification non autorisé ici chaîne bit litéral invalide type de connexion invalide : %s type de données invalide key_member vaut toujours 0 « EXEC SQL ENDIF; » manquant identifiant manquant dans la commande EXEC SQL DEFINE identifiant manquant dans la commande EXEC SQL IFDEF identifiant manquant dans la commande EXEC SQL UNDEF correspondance manquante « EXEC SQL IFDEF » / « EXEC SQL IFNDEF » plusieurs EXEC SQL ELSE les tableaux multidimensionnels ne sont pas supportés les tableaux multi-dimensionnels pour les types de données simples ne sont
pas supportés les tableaux multidimensionnels ne sont pas supportés pour les structures les pointeurs multi-niveaux (plus de deux) ne sont pas supportés :
%d niveau trouvé les pointeurs multi-niveaux (plus de deux) ne sont pas supportés :
%d niveaux trouvés les tableaux imbriqués ne sont pas supportés (sauf les chaînes de
caractères) la syntaxe obsolète LIMIT #,# a été passée au serveur nullable vaut toujours 1 seuls les types de données numeric et decimal ont des arguments de
précision et d'échelle seuls les protocoles « tcp » et « unix » et les types de base de données
« postgresql » sont supportés mémoire épuisée ce type de données ne supporte pas les pointeurs de pointeur les pointeurs sur des chaînes de caractères (varchar) ne sont pas implantés la sous-requête du FROM doit avoir un alias erreur de syntaxe erreur de syntaxe dans la commande EXEC SQL INCLUDE trop de niveaux dans la définition de structure/union imbriquée trop de conditions EXEC SQL IFDEF imbriquées le type « %s » est déjà défini le nom du type « string » est réservé dans le mode Informix EXEC SQL ENDIF différent nom « %s » non reconnu pour un type de données code %d de l'élément du descripteur non reconnu jeton « %s » non reconnu code %d du type de variable non reconnu la fonctionnalité non supportée sera passée au serveur commentaire /* non terminé chaîne bit litéral non terminée chaîne hexadécimale litéralle non terminée identifiant entre guillemet non terminé chaîne entre guillemets non terminée utilisation de l'instruction DESCRIBE non supporté l'utilisation de la variable « %s » dans différentes instructions de déclaration
n'est pas supportée la variable « %s » est cachée par une variable locale la variable « %s » est cachée par une variable locale d'un type différent la variable « %s » n'est ni une structure ni une union la variable « %s » n'est pas un pointeur la variable « %s » n'est pas un pointeur vers une structure ou une union la variable « %s » n'est pas un tableau la variable « %s » n'est pas déclarée la variable « %s » doit avoir un type numeric identifiant délimité de taille zéro 