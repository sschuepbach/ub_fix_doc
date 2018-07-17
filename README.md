# Aleph Fix-Routines für IDS Basel Bern / HAN

Dieses Repository enthält verschiedene Fix-Routinen, die im IDS Basel Bern (DSV01) und HAN (DSV05) zum Einsatz kommen.

## fix_doc_rdasave.pl

### Anwendungszweck

Seit der Einführung von RDA müssen verschiedenen Informationen im Katalogisat (z.B. Beziehungskennzeichnungen, IMD-Typen) sowohl in ausgeschriebener als auch in codierter Form eingetragen werden. Als Arbeitserleichterung wird beim Speichern eines Katalogisates in DSV01 und DSV05 die Fix-Routine "fix_doc_rdasave" ausgeführt. Sie ergänzt die codierte Form automatisch, so dass nur die ausgeschriebene Form eingetragen werden muss.

### Beschreibung

Die Fix-Routine ergänzt folgende Felder

* Beziehungkennzeichnungen in Feld 100, 110, 700, 710, 720:
** Unterfeld $4 aufgrund Inhalt des Unterfeldes $e
* Beziehungkennzeichnungen in Feld 111, 711:
** Unterfeld $4 aufgrund Inhalt des Unterfeldes $j
* IMD-Typen in Feld 336, 337, 338
** Unterfeld $b aufgrund Inhalt des Unterfeldes $a
** Unterfeld $2 mit "rdacontent", "rdamedia" bzw. "rdacarrier"

Die Fix-Routine funktioniert auch mit mehreren Unterfeldern $e/$j pro Sucheinstieg. Ebenso liest sie bei Feld 338$a = "Sonstige" das Unterfeld 337 aus, um den Code in Feld 338$b korrekt zu setzen.

Achtung! Gibt es für dieselbe ausgeschriebene Form mehrere gültige Codes (z.B. Beziehungskennzeichnung "Kameramann" -> "cng"/"vdg"), so setzt die Routine immer nur den ersten Code. 

### Technische Implementation
Die Fix-Routine muss in dsv01/dsv05/tab in [http://aleph.unibas.ch/dirlist/u/dsv51/tab/tab_fix] eingetragen werden: 

 INS   fix_doc_rdasave.pl

Zusätzlich müssen auf dem Aleph Server folgende Perl-Skripte nach /exlibris/aleph/a22_1/aleph/exe kopiert werden:

* fix_doc_rdasave.pl (Fix-Routine)
* rdacodes.pl (Konkordanz)

## fix_doc_rdaimport.pl

### Anwendungszweck

Beim Importieren von Fremddaten stehen oft englischsprachige Begriffe in den 336/337/338-Feldern. Dieser werden von dieser Routine gelöscht und durch die entsprechenden deutschen Begriffe ersetzt. Dieser werden aufgrund der codierten Begriffe in Unterfeld $b gesetzt.

### Technische Implementation

Die Fix-Routine muss in dsv01/tab in [http://aleph.unibas.ch/dirlist/u/dsv51/tab/tab_fix] eingetragen werden:

* KOPIE fix_doc_rdaimport.pl
* KOPOS fix_doc_rdaimport.pl
* KOPBE fix_doc_rdaimport.pl

Zusätzlich müssen auf dem Aleph Server folgendes Perl-Skript nach /exlibris/aleph/a22_1/aleph/exe kopiert werden:

* fix_doc_rdaimport.pl
* rdacodes.pl (Konkordanz)

## fix_doc_2gnd.pl / fix_doc_2gnd_han.pl

### Anwendungszweck

Sacherschliessungsfelder in DSV01 und DSV05, die mit der GND verknüpft sind, müssen zwingend ein Unterfeld $2 = "gnd" besitzen. Damit dieses nicht von Hand eingegeben werden muss, ergänzt die vorliegende Fix-Routine dieses Unterfeld

### Beschreibung

Die Fix-Routine ergänzt folgende Felder:

* In DSV01: Unterfeld $2 = "gnd" bei Feld 600, 610, 611, 630, 650 und 651, falls Indiktor 2=7 und falls ein Unterfeld $1 mit einer GND-Nummer vorkommt.
* In DSV05: Unterfeld $2 = "gnd" bei Feld 600, 610, 611, 630, 650 und 651, falls Indiktor 2=7 und falls ein Unterfeld $1 mit einer GND-Nummer vorkommt.
* Im DSV05: Unterfeld $2 = "resource" bei Feld 650 und 651 falls Indiktor 2=7 und kein Unterfeld $1 mit einer GND-Nummer vorkommt.

### Technische Implementation

Die Fix-Routine muss in dsv01/dsv05/tab in [http://aleph.unibas.ch/dirlist/u/dsv51/tab/tab_fix] eingetragen werden:

* DSV01: INS   fix_doc_2gnd.pl
* DSV05: INS   fix_doc_2gnd_han.pl

Zusätzlich müssen auf dem Aleph Server folgendes Perl-Skript nach /exlibris/aleph/a22_1/aleph/exe kopiert werden:

* fix_doc_2gnd.pl
* fix_doc_2gnd_han.pl

## fix_doc_655.pl

### Anwendungszweck

Gewisse Formschlagwörter in Feld 655 haben sich mit der Umstellung von RSWK zu RDA geändert. Da die alten Begriff nicht von der Gonin-Routine korrigiert werden, würde dafür eine extra Fix-Routine erstellt.

### Beschreibung

Die Routine wird aktiv, wenn ein Feld 655 mit Indikator 2=7 und mindestens ein Unterfeld $$2, das mit gnd* beginnt, vorhanden ist. Dann wird geprüft, ob in $$a ein altes RSWK-Formschlagwort vorhanden ist. Dieses wird durch den gültigen RDA-Begriff ersetzt (inkl. korrektes Unterfeld $$2). Die Zuordnung geschieht aufgrund folgender Konkordanz in https://github.com/basimar/ub_fix_doc/blob/master/rdacodes.pl:

### Technische Implementation

Die Fix-Routine muss in dsv01/tab in [http://aleph.unibas.ch/dirlist/u/dsv51/tab/tab_fix] eingetragen werden:

* DSV01: INS   fix_doc_655.pl

Zusätzlich müssen auf dem Aleph Server folgendes Perl-Skript nach /exlibris/aleph/a22_1/aleph/exe kopiert werden:

* fix_doc_655.pl

