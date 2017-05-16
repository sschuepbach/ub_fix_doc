# ub_fix_doc_rdasave

## Anwendungszweck

Seit der Einführung von RDA müssen verschiedenen Informationen im Katalogisat (z.B. Beziehungskennzeichnungen, IMD-Typen) sowohl in ausgeschriebener als auch in codierter Form eingetragen werden. Als Arbeitserleichterung wird beim Speichern eines Katalogisates in DSV01 und DSV05 die Fix-Routine "fix_doc_rdasave" ausgeführt. Sie ergänzt die codierte Form automatisch, so dass nur die ausgeschriebene Form eingetragen werden muss.

## Beschreibung

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

## Technische Implementation
Die Fix-Routine muss in dsv01/dsv05/tab in [http://aleph.unibas.ch/dirlist/u/dsv51/tab/tab_fix tab_fix] eingetragen werden: 

 INS   fix_doc_rdasave.pl

Zusätzlich müssen auf dem Aleph Server folgende Perl-Skripte nach /exlibris/aleph/a22_1/aleph/exe kopiert werden:

* fix_doc_rdasave.pl (Fix-Routine)
* rdacodes.pl (Konkordanz)
