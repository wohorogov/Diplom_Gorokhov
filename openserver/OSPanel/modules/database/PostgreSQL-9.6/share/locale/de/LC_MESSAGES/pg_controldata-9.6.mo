��    W      �     �      �  X   �  
   �     �  +     7   2      j  C   �  -   �  !   �  ,   	      L	  4   m	     �	  ,   �	  ,   �	  )   
  )   6
  )   `
  )   �
  )   �
  )   �
  )     )   2  )   \  ,   �  )   �  )   �  ,     )   4  )   ^  )   �  ,   �  )   �  )   	  ,   3  )   `  )   �  )   �  )   �  )     )   2  )   \  )   �  )   �  )   �  )     )   .  )   X  )   �  ,   �  ,   �  ,     )   3  )   ]  &   �     �  )   �  �   �    �     �     �     �  ;   �           7     K     ]  )   k  )   �  )   �  )   �                 )     )   G  	   q     {     �     �  )   �     �     �  )     )   /     Y  g  ]  Y   �       !   +  4   M  >   �  &   �  I   �  4   2  (   g  7   �  $   �  <   �     *  3   <  3   p  1   �  0   �  0     1   8  2   j  0   �  0   �  0   �  0   0  5   a  1   �  1   �  3   �  0   /  0   `  0   �  3   �  0   �  0   '  3   X  0   �  0   �  0   �  0     0   P  0   �  0   �  0   �  0     0   E  0   v  1   �  3   �  9      3   G   3   {   5   �   2   �   0   !  8   I!     �!  2   �!  �   �!  S  �"     �#     �#     $  I   $     g$     x$  &   �$     �$  0   �$  0   %  0   5%  0   f%     �%     �%     �%  1   �%  0   �%     &  )   &     A&     Q&  0   Y&     �&     �&  0   �&  0   �&     '                  1   =           $   E   )   .      S      U                   (          W   T                         %   6       	          <       +                 "   C   2       >       &   *       
   B   M   #   :   P   '   A   ?              5      3       0         ;          ,   J   G             8   F   V       Q      I                     R   O           7   H   D          /   N   L          K          4   9   !                               @           -        
If no data directory (DATADIR) is specified, the environment variable PGDATA
is used.

 
Options:
   %s [OPTION] [DATADIR]
   -?, --help     show this help, then exit
   -V, --version  output version information, then exit
  [-D] DATADIR    data directory
 %s displays control information of a PostgreSQL database cluster.

 %s: could not open file "%s" for reading: %s
 %s: could not read file "%s": %s
 %s: could not read file "%s": read %d of %d
 %s: no data directory specified
 %s: too many command-line arguments (first is "%s")
 64-bit integers Backup end location:                  %X/%X
 Backup start location:                %X/%X
 Blocks per segment of large relation: %u
 Bytes per WAL segment:                %u
 Catalog version number:               %u
 Data page checksum version:           %u
 Database block size:                  %u
 Database cluster state:               %s
 Database system identifier:           %s
 Date/time type storage:               %s
 End-of-backup record required:        %s
 Fake LSN counter for unlogged rels:   %X/%X
 Float4 argument passing:              %s
 Float8 argument passing:              %s
 Latest checkpoint location:           %X/%X
 Latest checkpoint's NextMultiOffset:  %u
 Latest checkpoint's NextMultiXactId:  %u
 Latest checkpoint's NextOID:          %u
 Latest checkpoint's NextXID:          %u:%u
 Latest checkpoint's PrevTimeLineID:   %u
 Latest checkpoint's REDO WAL file:    %s
 Latest checkpoint's REDO location:    %X/%X
 Latest checkpoint's TimeLineID:       %u
 Latest checkpoint's full_page_writes: %s
 Latest checkpoint's newestCommitTsXid:%u
 Latest checkpoint's oldestActiveXID:  %u
 Latest checkpoint's oldestCommitTsXid:%u
 Latest checkpoint's oldestMulti's DB: %u
 Latest checkpoint's oldestMultiXid:   %u
 Latest checkpoint's oldestXID's DB:   %u
 Latest checkpoint's oldestXID:        %u
 Maximum columns in an index:          %u
 Maximum data alignment:               %u
 Maximum length of identifiers:        %u
 Maximum size of a TOAST chunk:        %u
 Min recovery ending loc's timeline:   %u
 Minimum recovery ending location:     %X/%X
 Prior checkpoint location:            %X/%X
 Report bugs to <pgsql-bugs@postgresql.org>.
 Size of a large-object chunk:         %u
 Time of latest checkpoint:            %s
 Try "%s --help" for more information.
 Usage:
 WAL block size:                       %u
 WARNING: Calculated CRC checksum does not match value stored in file.
Either the file is corrupt, or it has a different layout than this program
is expecting.  The results below are untrustworthy.

 WARNING: possible byte ordering mismatch
The byte ordering used to store the pg_control file might not match the one
used by this program.  In that case the results below would be incorrect, and
the PostgreSQL installation would be incompatible with this data directory.
 by reference by value byte ordering mismatch calculated CRC checksum does not match value stored in file floating-point numbers in archive recovery in crash recovery in production max_connections setting:              %d
 max_locks_per_xact setting:           %d
 max_prepared_xacts setting:           %d
 max_worker_processes setting:         %d
 no off on pg_control last modified:             %s
 pg_control version number:            %u
 shut down shut down in recovery shutting down starting up track_commit_timestamp setting:       %s
 unrecognized status code unrecognized wal_level wal_level setting:                    %s
 wal_log_hints setting:                %s
 yes Project-Id-Version: PostgreSQL 9.6
Report-Msgid-Bugs-To: pgsql-bugs@postgresql.org
POT-Creation-Date: 2018-08-06 09:22+0000
PO-Revision-Date: 2016-04-24 22:52-0400
Last-Translator: Peter Eisentraut <peter_e@gmx.net>
Language-Team: German <peter_e@gmx.net>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 
Wenn kein Datenverzeichnis angegeben ist, wird die Umgebungsvariable
PGDATA verwendet.

 
Optionen:
   %s [OPTION] [DATENVERZEICHNIS]
   -?, --help     diese Hilfe anzeigen, dann beenden
   -V, --version  Versionsinformationen anzeigen, dann beenden
  [-D] DATENVERZ  Datenbankverzeichnis
 %s zeigt Kontrollinformationen über einen PostgreSQL-Datenbankcluster.

 %s: konnte Datei »%s« nicht zum Lesen öffnen: %s
 %s: konnte Datei »%s« nicht lesen: %s
 %s: konnte Datei »%s« nicht lesen: %d von %d gelesen
 %s: kein Datenverzeichnis angegeben
 %s: zu viele Kommandozeilenargumente (das erste ist »%s«)
 64-Bit-Ganzzahlen Backup-Endpunkt:                             %X/%X
 Backup-Startpunkt:                           %X/%X
 Blöcke pro Segment:                          %u
 Bytes pro WAL-Segment:                       %u
 Katalogversionsnummer:                       %u
 Datenseitenprüfsummenversion:                %u
 Datenbankblockgröße:                         %u
 Datenbank-Cluster-Status:                    %s
 Datenbanksystemidentifikation:               %s
 Speicherung von Datum/Zeit-Typen:            %s
 End-of-Backup-Eintrag erforderlich:          %s
 Fake-LSN-Zähler für ungeloggte Relationen:   %X/%X
 Übergabe von Float4-Argumenten:              %s
 Übergabe von Float8-Argumenten:              %s
 Position des letzten Checkpoints:            %X/%X
 NextMultiOffset des letzten Checkpoints:     %u
 NextMultiXactId des letzten Checkpoints:     %u
 NextOID des letzten Checkpoints:             %u
 NextXID des letzten Checkpoints:             %u:%u
 PrevTimeLineID des letzten Checkpoints:      %u
 REDO-WAL-Datei des letzten Checkpoints:      %s
 REDO-Position des letzten Checkpoints:       %X/%X
 TimeLineID des letzten Checkpoints:          %u
 full_page_writes des letzten Checkpoints:    %s
 newestCommitTsXid des letzten Checkpoints:   %u
 oldestActiveXID des letzten Checkpoints:     %u
 oldestCommitTsXid des letzten Checkpoints:   %u
 DB des oldestMulti des letzten Checkpoints:  %u
 oldestMultiXid des letzten Checkpoints:      %u
 DB der oldestXID des letzten Checkpoints:    %u
 oldestXID des letzten Checkpoints:           %u
 Maximale Spalten in einem Index:             %u
 Maximale Datenausrichtung (Alignment):       %u
 Maximale Bezeichnerlänge:                    %u
 Maximale Größe eines Stücks TOAST:           %u
 Zeitleiste des minimalen Wiederherstellungsendpunkts: %u
 Minimaler Wiederherstellungsendpunkt:        %X/%X
 Position des vorletzten Checkpoints:         %X/%X
 Berichten Sie Fehler an <pgsql-bugs@postgresql.org>.
 Größe eines Large-Object-Chunks:             %u
 Zeit des letzten Checkpoints:                %s
 Versuchen Sie »%s --help« für weitere Informationen.
 Aufruf:
 WAL-Blockgröße:                              %u
 WARNUNG: Berechnete CRC-Prüfsumme stimmt nicht mit dem Wert in der Datei
überein. Entweder ist die Datei kaputt oder sie hat ein anderes Layout
als von diesem Programm erwartet. Die Ergebnisse unten sind nicht
verlässlich.

 WARNUNG: möglicherweise falsche Byte-Reihenfolge
Die Byte-Reihenfolge, die zur Speicherung der Datei pg_control verwendet wurde,
stimmt möglicherweise nicht mit der von diesem Programm verwendeten überein. In
diesem Fall wären die Ergebnisse unten falsch und die PostgreSQL-Installation
wäre inkompatibel mit diesem Datenverzeichnis.
 Referenz Wert falsche Byte-Reihenfolge berechnete CRC-Prüfsumme stimmt nicht mit dem Wert in der Datei überein Gleitkommazahlen bei der Archivwiederherstellung bei der Wiederherstellung nach Absturz im Produktionsmodus max_connections-Einstellung:                 %d
 max_locks_per_xact-Einstellung:              %d
 max_prepared_xacts-Einstellung:              %d
 max_worker_processes-Einstellung:            %d
 nein aus an pg_control zuletzt geändert:                 %s
 pg_control-Versionsnummer:                   %u
 heruntergefahren in der Wiederherstellung heruntergefahren fährt herunter startet track_commit_timestamp-Einstellung:          %s
 nicht erkannter Statuscode unbekanntes wal_level wal_level-Einstellung:                       %s
 wal_log_hints-Einstellung:                   %s
 ja 