#!/exlibris/product/bin/perl -w
##########################################################################
# fix_doc_rdasave.pl 
##########################################################################
# speichern in $aleph_dev/aleph/exe
# Skript muss ausfuehrbar gemacht werden (chmod 755)
# einhaengen in tab_fix 
#
# Fuegt RDA-Codes fuer Sucheinstiege und IMD-Felder automatisch hinzu
##########################################################################
# xx.10.2015 Erstellt / IDSBB, bmt 
# 17.07.2018 Bugfixing fuer mehrfach vorhandene Unterfelder / IDSBB, bmt 
##########################################################################

$ENV{NLS_LANG} = "AMERICAN_AMERICA.UTF8";

use strict;
no warnings 'once';

#Konstruiere Pfad zur Datei mit den Konkordanzen
use Cwd qw(abs_path);
use File::Basename;
my $file = abs_path($0);
my $path = dirname($file);

#Lese Konkordanz ein
do "$path/rdacodes.pl";
my %code336 = %CodeHash::code336;
my %code337 = %CodeHash::code337;
my %code338 = %CodeHash::code338;
my %relator = %CodeHash::relator;


# Weg damit (1. Zeile enthaelt keine Kategorien)
my $line1 = <STDIN>;                               
while ( my $line = <STDIN>) {
    if ($line) {
        chomp $line; 
        # Fall 1: Feld 100,110,700,710,720 (Relator in Feld $e)
        if (substr($line, 0, 3) =~ /(100|110|700|710|720)/) {        

            #Loesche vorhandene Unterfelder $4
            $line =~ s/\$\$4.+?(?=(\$\$|$))//g;
 
            #Lese Unterfelder aus
            my @subfields = split(/\$\$/, $line);
            shift @subfields;

            foreach (@subfields) {
                #Falls Unterfeld $e einen Begriff in der Konkordanz enthaelt, fuege Unterfeld $4 mit zugehoerigem Code hinzu
                if (substr($_,0,1) eq 'e') {
                    if ($relator{substr($_,1)}) {
                        $line .= ('$$4' . $relator{substr($_,1)} );
                    }
                } 
            }
        # Fall 2: Feld 111,711 (Relator in Feld $j)
        } elsif (substr($line, 0, 3) =~ /(111|711)/) {        

            #Loesche vorhandene Unterfelder $4
            $line =~ s/\$\$4.+?(?=(\$\$|$))//g;

            #Lese Unterfelder aus
            my @subfields = split(/\$\$/, $line);
            shift @subfields;

            foreach (@subfields) {
                #Falls Unterfeld $j einen Begriff in der Konkordanz enthaelt, fuege Unterfeld $4 mit zugehoerigem Code hinzu
                if (substr($_,0,1) eq 'j') {
                    if ($relator{substr($_,1)}) {
                        $line .= ('$$4' . $relator{substr($_,1)} );
                    }
                } 
            }
	# Fall 3: Feld 336
        } elsif (substr($line, 0, 3) =~ /336/) {

            #Loesche vorhandene Unterfelder $b und $2
            $line =~ s/\$\$b.+?(?=(\$\$|$))//g;
            $line =~ s/\$\$2.+?(?=(\$\$|$))//g;

            #Lese Unterfelder aus
            my @subfields = split(/\$\$/, $line);
            shift @subfields;

            foreach (@subfields) {
                #Falls Unterfeld $a einen Begriff in der Konkordanz enthaelt, fuege Unterfeld $b mit zugehoerigem Code und Unterfeld $2 mit rdacontent hinzu
                if (substr($_,0,1) eq 'a') {
                    if ($code336{substr($_,1)}) {
                        $line .= ('$$b' . $code336{substr($_,1)} . '$$2rdacontent' );
                    }
                } 
            }
	# Fall 4: Feld 337
        } elsif (substr($line, 0, 3) =~ /337/) {

            #Loesche vorhandene Unterfelder $b und $2
            $line =~ s/\$\$b.+?(?=(\$\$|$))//g;
            $line =~ s/\$\$2.+?(?=(\$\$|$))//g;

            #Lese Unterfelder aus
            my @subfields = split(/\$\$/, $line);
            shift @subfields;

            foreach (@subfields) {
                #Falls Unterfeld $a einen Begriff in der Konkordanz enthaelt, fuege Unterfeld $b mit zugehoerigem Code und Unterfeld $2 mit rdamedia hinzu
                if (substr($_,0,1) eq 'a') {
                    if ($code337{substr($_,1)}) {
                        $line .= ('$$b' . $code337{substr($_,1)} . '$$2rdamedia' );
                    }
                } 
            }
	# Fall 5: Feld 338
        } elsif (substr($line, 0, 3) =~ /338/) {

            #Loesche vorhandene Unterfelder $b und $2
            $line =~ s/\$\$b.+?(?=(\$\$|$))//g;
            $line =~ s/\$\$2.+?(?=(\$\$|$))//g;

            #Lese Unterfelder aus
            my @subfields = split(/\$\$/, $line);
            shift @subfields;

            foreach (@subfields) {
                #Falls Unterfeld $a einen Begriff in der Konkordanz enthaelt, fuege Unterfeld $b mit zugehoerigem Code und Unterfeld $2 mit rdacarrier hinzu
                if (substr($_,0,1) eq 'a') {
                    if ($code338{substr($_,1)}) {
                        $line .= ('$$b' . $code338{substr($_,1)} . '$$2rdacarrier' );
                    }
                } 
            }
	}
    #Schreibe modifiziertes Feld wieder ins Katalogisat
    print $line . "\n";
    } else {
        last
    } 
}
exit;


