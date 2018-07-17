#!/exlibris/product/bin/perl -w
##########################################################################
# fix_doc_rdasave.pl Ersetzt englischsprachige Begriff in den 336/337/338 
# Feldern  
##########################################################################
# speichern in $aleph_dev/aleph/exe
# Skript muss ausfuehrbar gemacht werden (chmod 755)
# einhaengen in tab_fix 
#
# Ersetzt nicht-deutschsprachige Begriffe in den 336/337/338 Feldern 
# durch deutschsprachige Begriffe anhand der Codes in $$b
##########################################################################
# xx.10.2015 Erstellt / IDSBB, bmt
# 17.07.2018 Dokumentation erweritert, Bugfixes fuer mehrfach vorhandene
#            Unterfelder / IDSBB, bmt
##########################################################################

$ENV{NLS_LANG} = "AMERICAN_AMERICA.UTF8";

use strict;

my $line = '';

use Cwd qw(abs_path);
use File::Basename;
my $file = abs_path($0);
my $path = dirname($file);

do "$path/rdacodes.pl";
my %code336 = %CodeHash::gcode336;
my %code337 = %CodeHash::gcode337;
my %code338 = %CodeHash::gcode338;

#weg damit (1. Zeile enthaelt keine Kategorien)
my $line1 = <STDIN>;                               
while ($line = <STDIN>) {
    my $newline = $line;
    if ($newline) {
        chomp $newline; 	
        if (substr($newline, 0, 3) =~ /(336|337|338)/) {                                              # Fall : Feld 336, 337 oder 338
            $newline =~ s/\$\$a.+?(?=(\$\$|$))//g;                                                    # Loesche allfaellig vorhandene Unterfelder $$a 

            my @subfields = split(/\$\$/, $newline);                                                  # Unterfelder in Array einlesen
            shift @subfields;

            foreach (@subfields) {
                if (substr($_,0,1) eq 'b') {                                                          # Pruefe ob Unterfeld $$b mit Code vorhanden
                    if ($code336{substr($_,1)}) {                                                     # Falls Unterfeld $$b mit 336-Code, erstelle neues 336-Feld mit $$a
                        $newline = '336  L' . '$$a' . $code336{substr($_,1)} . substr($newline,6);
                    } elsif ($code337{substr($_,1)}) {                                                # Falls Unterfeld $$b mit 337-Code, erstelle neues 337-Feld mit $$a
                        $newline = '337  L' . '$$a' . $code337{substr($_,1)} . substr($newline,6);
                    } elsif ($code338{substr($_,1)}) {                                                # Falls Unterfeld $$b mit 338-Code, erstelle neues 338-Feld mit $$a
                        $newline = '338  L' . '$$a' . $code338{substr($_,1)} . substr($newline,6);
                    }
                } 
            }
        }
    print $newline . "\n";                                                                            # Schreibe Zeile wieder ins Katalogisat
    } else {
        last
    } 
}
exit;



















