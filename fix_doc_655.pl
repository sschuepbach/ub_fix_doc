#!/exlibris/product/bin/perl -w
##########################################################################
# fix_doc_655.pl Korrigiert alte RSWK-FormschlagwÃrter in Feld 655, die in 
# RDA anders lauten 
##########################################################################
# speichern in $aleph_dev/aleph/exe
# Skript muss ausfuehrbar gemacht werden (chmod 755)
# einhaengen in tab_fix, vor der Gonin-Routine fix_doc_gnd
#
# Korrigiert alte RSWK-Formschlagwoerter in Feld 655, die in RDA anders
# lauten.
##########################################################################
# 05.07.2018 Erstellt / IDSBB, bmt
##########################################################################

$ENV{NLS_LANG} = "AMERICAN_AMERICA.UTF8";

use strict;
no warnings 'once';

# Konstruiere Pfad zur Datei mit den Konkordanzen
use Cwd qw(abs_path);
use File::Basename;
my $file = abs_path($0);
my $path = dirname($file);

# Lese Konkordanz ein
do "$path/rdacodes.pl";
my %code655 = %CodeHash::code655;

# Weg damit (1. Zeile enthaelt keine Kategorien)
my $line1 = <STDIN>;                               
while ( my $line = <STDIN>) {
    if ($line) {
        chomp $line; 
        
        # Fall 1: Feld 655 mit Indikator 2=7
        if (substr($line, 0, 5) =~ /655.7/) {        
            
            # Lese Unterfelder aus
            my @subfields = split(/\$\$/, $line);
            shift @subfields;

            # Pruefen, ob in einem $$2 ein Code, der mit gnd beginnt, vorkommt
            if ( grep /^2gnd/, @subfields ) {

                foreach (@subfields) {
		   
                    # Falls Unterfeld $$a einen Begriff in der Konkordanz enthaelt, fuege neues Unterfeld $a mit korrigiertem Begriff hinzu
                    if (substr($_,0,1) eq 'a') {
                        if ($code655{substr($_,1)}) {
                            # Loesche vorhandene Unterfelder $a und $2
                            $line =~ s/\$\$a.+?(?=(\$\$|$))//g;
                            $line =~ s/\$\$2.+?(?=(\$\$|$))//g;
			    # Fuege neue Unterfelder $a und $2 hinzu
                            $line .= ('$$a' . $code655{substr($_,1)} . '$$2gnd-content' );
                        }
                    } 
                }
            }
        }

    # Schreibe modifiziertes Feld wieder ins Katalogisat
    print $line . "\n";

    } else {
        last
    } 
}
exit;


