#!/exlibris/product/bin/perl -w
##########################################################################
# fix_doc_rdasave Ersetzt englischsprachige Begriff in den 336/337/338 
# Feldern  
##########################################################################
# speichern in $aleph_dev/aleph/exe
# Skript muss ausfuehrbar gemacht werden (chmod 755)
# einhaengen in tab_fix 
##########################################################################
#                                         erstellt  10/2015 bmt IDSBB


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
        if (substr($newline, 0, 3) =~ /336/) {
            $newline =~ s/\$\$a.+?\$\$/\$\$/g;                   #Loesche allfaellig vorhandenes Unterfeld $$a 
            $newline =~ s/\$\$a.+?$//g;   

            my @subfields = split(/\$\$/, $newline);
            shift @subfields;

            foreach (@subfields) {
                if (substr($_,0,1) eq 'b') {
                    if ($code336{substr($_,1)}) {
                        $newline = '336  L' . '$$a' . $code336{substr($_,1)} . substr($newline,6);
                    }
                } 
            }
        } elsif (substr($newline, 0, 3) =~ /337/) {
            $newline =~ s/\$\$a.+?\$\$/\$\$/g;                   #Loesche allfaellig vorhandenes Unterfeld $$a 
            $newline =~ s/\$\$a.+?$//g;   

            my @subfields = split(/\$\$/, $newline);
            shift @subfields;

            foreach (@subfields) {
                if (substr($_,0,1) eq 'b') {
                    if ($code337{substr($_,1)}) {
                        $newline = '337  L' . '$$a' . $code337{substr($_,1)} . substr($newline,6);
                    }
                } 
            }
        } elsif (substr($newline, 0, 3) =~ /338/) {
            $newline =~ s/\$\$a.+?\$\$/\$\$/g;                   #Loesche allfaellig vorhandenes Unterfeld $$a 
            $newline =~ s/\$\$a.+?$//g;   

            my @subfields = split(/\$\$/, $newline);
            shift @subfields;

            foreach (@subfields) {
                if (substr($_,0,1) eq 'b') {
                    if ($code338{substr($_,1)}) {
                        $newline = '338  L' . '$$a' . $code338{substr($_,1)} . substr($newline,6);
                    }
                } 
            }
        }
    print $newline . "\n";
    } else {
        last
    } 
}
exit;



















