#!/exlibris/product/bin/perl -w
##########################################################################
# fix_doc_2gnd_han.pl 
##########################################################################
# speichern in $aleph_dev/aleph/exe
# Skript muss ausfuehrbar gemacht werden (chmod 755)
# einhaengen in tab_fix 
#
# Anforderungen: 
# Bei allen Sacherschliessungsfeldern (6##), die GND-Verknuepfungen 
# enthalten, wird automatisch $$2gnd hinzugefuegt. 
# Falls keine GND-Nummer vorhanden ist, wird $$2resource hinzugefuegt
# (ausser bei 650 und 651).
##########################################################################
# xx.09.2015 Erstellt / IDSBB, bmt 
# xx.01.2016 Adaption fuer HAN / IDSBB, bmt
# 17.07.2018 Bugfixes bei mehrfach vorhandenen Unterfeldern / IDSBB, bmt
##########################################################################

$ENV{NLS_LANG} = "AMERICAN_AMERICA.UTF8";

use strict;

my $line   = '';

my $line1 = <STDIN>;                                              # Weg damit (1. Zeile enthaelt keine Kategorien)
while ($line = <STDIN>) {                                           
   if ($line) {
      chomp $line; 	
      if (substr($line, 0, 5) =~ /6(00|10|11|30).7/) {            # Fall 1: 600, 610, 611 oder 630 mit Indikator 2=7
         $line =~ s/\$\$.(?=(\$\$|$))//g;                         # Loesche leere Unterfelder in der Feldmitte und am Feldenede
         if ( $line =~ /(\$\$1\(DE-588\).+?)(\$\$|$)/ ) {         # Pruefe ob $$1 (DE-588) * vorkommt
            $line =~ s/\$\$2.+?(?=(\$\$|$))//g;                   # Loesche allfaellig vorhandenes Unterfeld $$2
            $line =~ s/$/\$\$2gnd/                                # Fuege Unterfeld $$2gnd am Ende ein
         } else {
            $line =~ s/\$\$2.+?(?=(\$\$|$))//g;                   # Loesche allfaellig vorhandenes Unterfeld $$2
            $line =~ s/$/\$\$2resource/                           # Fuege Unterfeld $$2resource am Ende ein
         }                                           
      } elsif (substr($line, 0, 5) =~ /6(50|51).7/) {             # Fall 2: 650 oder 651 mit Indikator 2=7
         $line =~ s/\$\$.(?=(\$\$|$))//g;                         # Loesche leere Unterfelder in der Feldmitte und am Feldenede
         if ( $line =~ /(\$\$1\(DE-588\).+?)(\$\$|$)/ ) {         # Pruefe ob $$1 (DE-588) * vorkommt
            $line =~ s/\$\$2.+?(?=(\$\$|$))//g;                   # Loesche allfaellig vorhandenes Unterfeld $$2
            $line =~ s/$/\$\$2gnd/                                # Fuege Unterfeld $$2gnd am Ende ein
         }
      }

   print $line . "\n";                                            # Schreibe Feld wieder ins Katalogisat
   } else {
      last
   }
}

exit;
