#!/exlibris/product/bin/perl -w
package CodeHash;
our %code336 = (
"Bewegungsnotation" => "ntv",
"Computerdaten" => "cod",
"Computerprogramm" => "cop",
"Geräusche" => "snd",
"Noten" => "ntm",
"Sonstige" => "xxx",
"Text" => "txt",
"aufgeführte Musik" => "prm",
"autre" => "xxx",
"données cartographiques" => "crd",
"données informatiques" => "cod",
"dreidimensionale Form" => "tdf",
"dreidimensionales bewegtes Bild" => "tdm",
"forme cartographique tridimensionnelle" => "crf",
"forme cartographique tridimensionnelle tactile" => "crn",
"forme tridimensionnelle" => "tdf",
"forme tridimensionnelle tactile" => "tcf",
"gesprochenes Wort" => "spw",
"image animée bidimensionnelle" => "tdi",
"image animée tridimensionnelle" => "tdm",
"image cartographique" => "cri",
"image cartographique animée" => "crm",
"image cartographique tactile" => "crt",
"image fixe" => "sti",
"image tactile" => "tci",
"kartografische dreidimensionale Form" => "crf",
"kartografische taktile dreidimensionale Form" => "crn",
"kartografischer Datensatz" => "crd",
"kartografisches Bild" => "cri",
"kartografisches bewegtes Bild" => "crm",
"kartografisches taktiles Bild" => "crt",
"mouvement noté" => "ntv",
"mouvement noté tactile" => "tcn",
"musique exécutée" => "prm",
"musique notée" => "ntm",
"musique notée tactile" => "tcm",
"nicht spezifiziert" => "zzz",
"non précisé" => "zzz",
"parole énoncée" => "spw",
"programme informatique" => "cop",
"sons" => "cod",
"taktile Bewegungsnotation" => "tcn",
"taktile Noten" => "tcm",
"taktile dreidimensionale Form" => "tcf",
"taktiler Text" => "tct",
"taktiles Bild" => "tci",
"texte" => "txt",
"texte tactile" => "tct",
"unbewegtes Bild" => "sti",
"zweidimensionales bewegtes Bild" => "tdi",
);
our %gcode336 = (
"ntv" => "Bewegungsnotation",
"cod" => "Computerdaten",
"cop" => "Computerprogramm",
"snd" => "Geräusche",
"ntm" => "Noten",
"xxx" => "Sonstige",
"txt" => "Text",
"prm" => "aufgeführte Musik",
"tdf" => "dreidimensionale Form",
"tdm" => "dreidimensionales bewegtes Bild",
"spw" => "gesprochenes Wort",
"crf" => "kartografische dreidimensionale Form",
"crn" => "kartografische taktile dreidimensionale Form",
"crd" => "kartografischer Datensatz",
"cri" => "kartografisches Bild",
"crm" => "kartografisches bewegtes Bild",
"crt" => "kartografisches taktiles Bild",
"zzz" => "nicht spezifiziert",
"tcn" => "taktile Bewegungsnotation",
"tcm" => "taktile Noten",
"tcf" => "taktile dreidimensionale Form",
"tct" => "taktiler Text",
"tci" => "taktiles Bild",
"sti" => "unbewegtes Bild",
"tdi" => "zweidimensionales bewegtes Bild",
);
our %code337 = (
"Computermedien" => "c",
"Mikroform" => "h",
"Sonstige" => "x",
"audio" => "s",
"autre" => "x",
"informatique" => "c",
"microforme" => "h",
"microscopique" => "p",
"mikroskopisch" => "p",
"nicht spezifiziert" => "z",
"non précisé" => "z",
"ohne Hilfsmittel zu benutzen" => "n",
"projeté" => "g",
"projizierbar" => "g",
"sans médiation" => "n",
"stereografisch" => "e",
"stéréoscopique" => "e",
"video" => "v",
);
our %gcode337 = (
"c" => "Computermedien",
"h" => "Mikroform",
"x" => "Sonstige",
"s" => "audio",
"p" => "mikroskopisch",
"z" => "nicht spezifiziert",
"n" => "ohne Hilfsmittel zu benutzen",
"g" => "projizierbar",
"e" => "stereografisch",
"v" => "video",
);
our %code338 = (
"Audiocartridge" => "sg",
"Audiodisk" => "sd",
"Audiokassette" => "ss",
"Band" => "nc",
"Blatt" => "nb",
"Computerchip-Cartridge" => "cb",
"Computerdisk" => "cd",
"Computerdisk-Cartridge" => "ce",
"Dia" => "gs",
"Filmdose" => "mc",
"Filmkassette" => "mf",
"Filmrolle" => "mo",
"Filmspule" => "mr",
"Filmstreifen" => "gf",
"Filmstreifen-Cartridge" => "gc",
"Filmstreifen, Einzelbildvorführung" => "gc",
"Flipchart" => "nn",
"Gegenstand" => "nr",
"Karte" => "no",
"Lichtundurchlässiger Mikrofiche" => "hg",
"Magnetbandcartridge" => "ca",
"Magnetbandkassette" => "cf",
"Magnetbandspule" => "ch",
"Mikrofiche" => "he",
"Mikrofichekassette" => "hf",
"Mikrofilm-Cartridge" => "hb",
"Mikrofilmkassette" => "hc",
"Mikrofilmlochkarte" => "ha",
"Mikrofilmrolle" => "hj",
"Mikrofilmspule" => "hd",
"Mikrofilmstreifen" => "hh",
"Notenrolle" => "sq",
"Objektträger" => "pp",
"Online-Ressource" => "cr",
"Overheadfolie" => "gt",
"Phonographenzylinder" => "se",
"Rolle" => "na",
"Sonstige" => "xx",
"Speicherkarte" => "ck",
"Stereobild" => "eh",
"Stereografische Disk" => "es",
"Tonbandspule" => "st",
"Tonspurspule" => "si",
"Videobandspule" => "vr",
"Videocartridge" => "vc",
"Videodisk" => "vd",
"Videokassette" => "vf",
"autre" => "xx",
"bande de microfilm" => "hh",
"bobine de bande audio " => "st",
"bobine de bande informatique" => "ch",
"bobine de bande vidéo" => "vr",
"bobine de film" => "mr",
"bobine de microfilm" => "hd",
"bobine de piste sonore" => "si",
"carte informatique" => "ck",
"carte stéréoscopique" => "eh",
"carte à fenêtre" => "ha",
"cartouche audio" => "sg",
"cartouche de bande informatique" => "ca",
"cartouche de disque informatique" => "ce",
"cartouche de film" => "mc",
"cartouche de microfilm" => "hb",
"cartouche vidéo" => "vc",
"cartouche à puce informatique" => "cb",
"cassette audio" => "ss",
"cassette de bande informatique" => "cf",
"cassette de film" => "mf",
"cassette de microfiches" => "hf",
"cassette de microfilm" => "hc",
"cassette vidéo" => "vf",
"cylindre audio" => "se",
"diapositive" => "gs",
"disque audio" => "sd",
"disque informatique" => "cd",
"disque stéréoscopique" => "es",
"feuille" => "nb",
"fiche" => "no",
"film fixe" => "gf",
"film fixe court" => "gc",
"lame pour microscope" => "pp",
"micro-opaque" => "hg",
"microfiche" => "he",
"nicht spezifiziert" => "zz",
"non spécifié" => "zz",
"objet" => "nr",
"ressource en ligne" => "cr",
"rouleau" => "na",
"rouleau audio" => "sq",
"rouleau de film" => "mo",
"rouleau de microfilm" => "hj",
"tableau à feuilles mobiles" => "nn",
"transparent" => "gt",
"vidéodisque" => "vd",
"volume" => "nc",
);
our %gcode338 = (
"sg" => "Audiocartridge",
"sd" => "Audiodisk",
"ss" => "Audiokassette",
"nc" => "Band",
"nb" => "Blatt",
"cb" => "Computerchip-Cartridge",
"cd" => "Computerdisk",
"ce" => "Computerdisk-Cartridge",
"gs" => "Dia",
"mc" => "Filmdose",
"mf" => "Filmkassette",
"mo" => "Filmrolle",
"mr" => "Filmspule",
"gf" => "Filmstreifen",
"gc" => "Filmstreifen-Cartridge",
"gc" => "Filmstreifen, Einzelbildvorführung",
"nn" => "Flipchart",
"nr" => "Gegenstand",
"no" => "Karte",
"hg" => "Lichtundurchlässiger Mikrofiche",
"ca" => "Magnetbandcartridge",
"cf" => "Magnetbandkassette",
"ch" => "Magnetbandspule",
"he" => "Mikrofiche",
"hf" => "Mikrofichekassette",
"hb" => "Mikrofilm-Cartridge",
"hc" => "Mikrofilmkassette",
"ha" => "Mikrofilmlochkarte",
"hj" => "Mikrofilmrolle",
"hd" => "Mikrofilmspule",
"hh" => "Mikrofilmstreifen",
"sq" => "Notenrolle",
"pp" => "Objektträger",
"cr" => "Online-Ressource",
"gt" => "Overheadfolie",
"se" => "Phonographenzylinder",
"na" => "Rolle",
"xx" => "Sonstige",
"ck" => "Speicherkarte",
"eh" => "Stereobild",
"es" => "Stereografische Disk",
"st" => "Tonbandspule",
"si" => "Tonspurspule",
"vr" => "Videobandspule",
"vc" => "Videocartridge",
"vd" => "Videodisk",
"vf" => "Videokassette",
);
our %relator = (
"Adressat" => "rcp",
"Akademischer Betreuer" => "dgs",
"Aktenbildner" => "cre",
"Andere" => "oth",
"Angeklagter/Beklagter" => "dfd",
"Annotierende Person" => "ann",
"Annotator" => "ann",
"Architekt" => "arc",
"Arrangeur" => "arr",
"Arrangeur [Musik]" => "arr",
"Art Director" => "adi",
"Auftraggeber" => "pat",
"Ausführender" => "prf",
"Autor" => "aut",
"Begründer des Werks" => "oth",
"Berater" => "csl",
"Berichterstatter" => "cre",
"Berufungsbeklagter/Revisionsbeklagter" => "ape",
"Berufungskläger/Revisionskläger" => "apl",
"Beschriftende Person" => "ins",
"Bildhauer" => "scl",
"Bildregisseur" => "cng",
"Kameramann" => "cng",
"Brailleschriftpräger" => "brl",
"Buchbinder" => "bnd",
"Buchbinder/Buchbinderei" => "bnd",
"Buchgestalter" => "bkd",
"Buchhändler" => "bsl",
"Buchkünstler" => "cre",
"Buchmaler" => "ilu",
"Bühnenregisseur" => "sgd",
"Chefredakteur" => "pbd",
"Choreograf" => "chr",
"Chorleiter" => "ctb",
"Colorist" => "clr",
"Cutter" => "edm",
"Darsteller/Interpret" => "prf",
"Designer" => "dsr",
"Dirigent" => "cnd",
"Diskussionsteilnehmer" => "pan",
"Drehbuchautor" => "aus",
"Drucker" => "prt",
"Druckformhersteller" => "plt",
"Druckgrafiker" => "prm",
"Durch Verfahrensvorschriften geregeltes Gericht" => "cou",
"Erfinder" => "inv",
"Erscheinungsort" => "pup",
"Erzähler" => "nrt",
"Sprecher/Erzähler" => "nrt",
"Fernsehproduzent" => "tlp",
"Fernsehregisseur" => "tld",
"Filmemacher" => "fmk",
"Filmproduzent" => "fmp",
"Filmregisseur" => "fmd",
"Filmvertrieb" => "fds",
"Formgießer" => "cas",
"Forscher" => "res",
"Fotograf" => "pht",
"Früherer Eigentümer" => "fmo",
"Eigentümer" => "own",
"Gastgebende Institution" => "his",
"Gastgeber" => "hst",
"Gefeierter" => "hnr",
"Gegenwärtiger Eigentümer" => "own",
"Geistiger Schöpfer" => "cre",
"Geregelte Gebietskörperschaft" => "jug",
"Gerichtsstenograf" => "crt",
"Geschichtenerzähler" => "stl",
"Grad-verleihende Institution" => "dgg",
"Herausgebendes Organ" => "isb",
"Herausgeber" => "edt",
"Hersteller" => "mfr",
"Hörfunkproduzent" => "rpc",
"Hörfunkregisseur" => "rdd",
"Illustrator" => "ill",
"Illustrator/Atelier" => "ill",
"Instrumentalmusiker" => "itr",
"Interviewer" => "ivr",
"Interviewter" => "ive",
"Kalligraf" => "cll",
"Kartograf" => "ctg",
"Kartograph" => "ctg",
"Kommentarverfasser" => "wac",
"Kommentator" => "cmm",
"Komponist" => "cmp",
"Kostümbildner" => "cst",
"Kurator" => "cur",
"Künstler" => "art",
"Kürzender" => "abr",
"Landschaftsarchitekt" => "lsa",
"Landvermesser" => "srv",
"Lehrer" => "tch",
"Leihgeber" => "dpt",
"Letterer" => "ctb",
"Librettist" => "lbt",
"Lichtdrucker" => "clt",
"Lichtgestalter" => "lgd",
"Lithograf" => "ltg",
"Maskenbildner" => "ctb",
"Medium" => "med",
"Mitwirkender" => "ctb",
"Moderator" => "mod",
"Musikalischer Leiter" => "msd",
"Musiker" => "mus",
"Normerlassende Gebietskörperschaft" => "enj",
"On-Screen-Präsentator" => "osp",
"On-Screen-Teilnehmer" => "ctb",
"Orchesterleiter" => "ctb",
"Papiermacher" => "ppm",
"Praeses" => "pra",
"Produktionsfirma" => "prn",
"Produzent" => "pro",
"Programmierer" => "prg",
"Protokollant" => "mtk",
"Präsentator" => "pre",
"Puppenspieler" => "ppt",
"Radierer" => "etr",
"Redner" => "spk",
"Regisseur" => "drt",
"Registrar" => "cor",
"Respondens" => "rsp",
"Respondent" => "rsp",
"Restaurator" => "rsr",
"Richter" => "jud",
"Sammler" => "col",
"Schauspieler" => "act",
"Schreiber/Scriptorium" => "scr",
"Sender" => "brd",
"Softwareentwickler" => "ctb",
"Sonstige" => "oth",
"Sonstige Person (Exemplar)" => "oth",
"Special-effects-Provider" => "ctb",
"Sponsor" => "spn",
"Stecher" => "egr",
"Stifter" => "dnr",
"Synchronsprecher" => "vac",
"Szenenbildner" => "prs",
"Sänger" => "sng",
"Technischer Zeichner" => "drm",
"Textdichter" => "lyr",
"Toningenieur" => "rce",
"Tonmeister" => "rcd",
"Transkribierer" => "trc",
"Trickfilmzeichner" => "anm",
"Tänzer" => "dnc",
"Unterzeichner" => "ato",
"Veranstalter" => "orm",
"Verfasser" => "aut",
"Verfasser einer Einleitung" => "win",
"Verfasser eines Geleitwortes" => "aui",
"Verfasser eines Nachworts" => "aft",
"Verfasser eines Postscriptums" => "ctb",
"Verfasser eines Vorworts" => "wpr",
"Verfasser von Zusatztexten" => "wat",
"Verfasser von ergänzendem Text" => "wst",
"Verfasser von zusätzlichen Lyrics" => "wal",
"Verkäufer" => "sll",
"Verlag" => "pbl",
"Vertragspartner" => "ctr",
"Vertrieb" => "dst",
"Visual-effects-Provider" => "ctb",
"Widmungsverfasser" => "dto",
"Widmender" => "dto",
"Widmungsempfänger" => "dte",
"Zensor" => "cns",
"Zivilkläger" => "ptf",
"Zusammenstellender" => "com",
"Zweifelhafter Autor" => "dub",
"abridger" => "abr",
"abréviateur" => "abr",
"acteur" => "act",
"actor" => "act",
"addressee" => "rcp",
"Addressee" => "rcp",
"ancien propriétaire" => "fmo",
"animateur" => "anm",
"animator" => "anm",
"annotateur" => "ann",
"annotator" => "ann",
"appelant" => "apl",
"appellant" => "apl",
"appellee" => "ape",
"aquafortiste" => "etr",
"architect" => "arc",
"architecte" => "arc",
"architecte paysagiste" => "lsa",
"arpenteur" => "srv",
"Arranger" => "",
"arranger of music" => "arr",
"arrangeur de musique" => "arr",
"art director" => "adi",
"artist" => "art",
"Artist" => "art",
"artiste" => "art",
"artiste du livre" => "cre",
"auteur" => "aut",
"auteur d'introduction" => "win",
"auteur de commentaire ajouté" => "wac",
"auteur de contenu textuel supplémentaire" => "wst",
"auteur d'après-propos" => "aft",
"auteur d'avant-propos" => "aui",
"auteur de paroles ajoutées" => "wal",
"auteur de texte ajouté" => "wat",
"author" => "aut",
"Author" => "aut",
"autographer" => "ato",
"autre" => "oth",
"autre personne associée à un item" => "oth",
"binder" => "bnd",
"Binder" => "bnd",
"book artist" => "cre",
"book designer" => "bkd",
"bookseller" => "bsl",
"braille embosser" => "brl",
"broadcaster" => "brd",
"calligraphe" => "cll",
"calligrapher" => "cll",
"cartographe" => "ctg",
"cartographer" => "ctg",
"Cartographer" => "ctg",
"caster" => "cas",
"censeur" => "cns",
"censor" => "cns",
"chanteur" => "sng",
"chef d'orchestre" => "cnd",
"chef décorateur" => "adi",
"choral conductor" => "ctb",
"chef de chorale" => "ctb",
"choreographer" => "chr",
"chorégraphe" => "chr",
"cinéaste" => "fmk",
"collection registrar" => "cor",
"collectionneur" => "col",
"collector" => "col",
"Collector" => "col",
"collotyper" => "clt",
"coloriste" => "clr",
"colourist" => "clr",
"commanditaire" => "spn",
"commentateur" => "cmm",
"commentator" => "cmm",
"commissioning body" => "pat",
"mécène" => "pat",
"compilateur" => "com",
"compiler" => "com",
"composer" => "cmp",
"Composer" => "cmp",
"compositeur" => "cmp",
"conductor" => "cnd",
"Conductor" => "cnd",
"conservateur" => "cur",
"conservateur de collections" => "cor",
"consultant" => "csl",
"conteur" => "stl",
"contributeur" => "ctb",
"contributor" => "ctb",
"Contributor" => "ctb",
"costume designer" => "cst",
"court governed" => "cou",
"court reporter" => "crt",
"creator" => "cre",
"Creator" => "cre",
"créateur" => "cre",
"créateur de costumes" => "cst",
"curator" => "cur",
"current owner" => "own",
"owner" => "own",
"dancer" => "dnc",
"danseur" => "dnc",
"dedicatee" => "dte",
"Dedicatee" => "dte",
"dedicator" => "dto",
"Dedicator" => "dto",
"defendant" => "dfd",
"degree committee member" => "oth",
"degree granting institution" => "dgg",
"degree supervisor" => "dgs",
"demandeur" => "ptf",
"depositor" => "dpt",
"designer" => "dsr",
"dessinateur industriel" => "drm",
"destinataire" => "rcp",
"diffuseur" => "brd",
"directeur artistique" => "prs",
"directeur de la photographie" => "cng",
"directeur musical" => "msd",
"director" => "drt",
"director of photography" => "cng",
"distributeur" => "dst",
"distributeur de films" => "fds",
"distributor" => "dst",
"donateur" => "dnr",
"donor" => "dnr",
"draftsman" => "drm",
"dédicataire" => "dte",
"dédicateur" => "ins",
"défendeur" => "dfd",
"déposant" => "dpt",
"Dubious author" => "dub",
"editor" => "edt",
"editor of moving image work" => "edm",
"editoral director" => "pbd",
"directeur de la publication" => "pbd",
"enacting jurisdiction" => "enj",
"engraver" => "egr",
"enlumineur" => "ilu",
"enseignant" => "tch",
"entité honorée" => "hnr",
"etcher" => "etr",
"fabricant" => "mfr",
"film director" => "fmd",
"film distributor" => "fds",
"film producer" => "fmp",
"filmmaker" => "fmk",
"Filmmaker" => "fmk",
"fondeur" => "cas",
"former owner" => "fmo",
"Former owner" => "fmo",
"founder of work" => "oth",
"fournisseur d'effets spéciaux" => "ctb",
"fournisseur d'effets visuels" => "ctb",
"graphiste" => "bkd",
"graveur" => "egr",
"graveur d'estampes" => "prm",
"graveur de planches" => "plt",
"honouree" => "hnr",
"host" => "hst",
"host institution" => "his",
"hôte" => "hst",
"illuminator" => "ilu",
"illustrateur" => "ill",
"illustrator" => "ill",
"imprimeur" => "prt",
"ingénieur du son" => "rce",
"inscriber" => "ins",
"institution conférant des diplômes universitaires" => "dgg",
"institution hôte" => "his",
"instrumental conductor" => "ctb",
"instrumentalist" => "itr",
"instrumentiste" => "itr",
"interprète" => "prf",
"interviewee" => "ive",
"interviewer" => "ivr",
"intervieweur" => "ivr",
"interviewé" => "ive",
"intimé" => "ape",
"inventeur" => "inv",
"inventor" => "inv",
"issuing body" => "isb",
"judge" => "jud",
"juge" => "jud",
"juridiction promulgatrice" => "enj",
"juridiction régie" => "jug",
"jurisdiction governed" => "jug",
"landscape architect" => "lsa",
"letterer" => "ctb",
"lettreur" => "ctb",
"libraire" => "bsl",
"librettist" => "lbt",
"librettiste" => "lbt",
"lieu de publication" => "pup",
"lighting designer" => "lgd",
"éclairiste" => "lgd",
"lithographer" => "ltg",
"lithographe" => "ltg",
"lighting designer" => "lgd",
"lyricist" => "lyr",
"make-up artist" => "ctb",
"maquilleur" => "ctb",
"manufacturer" => "mfr",
"marionnettiste" => "ppt",
"medium" => "med",
"metteur en scène" => "sgd",
"minute taker" => "mtk",
"moderator" => "mod",
"modérateur" => "mod",
"monteur d'<9c>uvre d'images animées" => "edm",
"musical director" => "msd",
"musician" => "mus",
"médium" => "med",
"narrateur" => "nrt",
"narrator" => "nrt",
"Narrator" => "nrt",
"on-screen participant" => "ctb",
"participant à l'écran" => "ctb",
"on-screen presenter" => "osp",
"opérateur d'enregistrement" => "rcd",
"orateur" => "spk",
"organisateur" => "orm",
"organisme de publication" => "isb",
"organizer" => "orm",
"other" => "oth",
"Other" => "oth",
"other person associated with an item" => "oth",
"Owner" => "own",
"panelist" => "pan",
"panéliste" => "pan",
"papermaker" => "ppm",
"Papermaker" => "ppm",
"papetier" => "ppm",
"pariolier" => "lyr",
"participant in a treaty" => "ctr",
"participant à un traité" => "ctr",
"performer" => "prf",
"Performer" => "prf",
"photographe" => "pht",
"photographer" => "pht",
"Photographer" => "pht",
"phototypeur" => "clt",
"plaintiff" => "ptf",
"platemaker" => "plt",
"postfacier" => "wst",
"praeses" => "pra",
"presenter" => "pre",
"printer" => "prt",
"Printer" => "prt",
"printmaker" => "prm",
"procès-verbaliste" => "mtk",
"producer" => "pro",
"Producer" => "pro",
"producteur" => "pro",
"producteur braille" => "brl",
"producteur d'émissions de radio" => "rpc",
"producteur d'émissions de télévision" => "tlp",
"producteur de films" => "fmp",
"production company" => "prn",
"production designer" => "prs",
"programmer" => "prg",
"programmeur" => "prg",
"propriétaire actuel" => "own",
"propriétaire" => "own",
"préfacier" => "wst",
"présentateur" => "pre",
"présentateur à l'écran" => "osp",
"publication place" => "pup",
"publisher" => "pbl",
"puppeteer" => "ppt",
"radio director" => "rdd",
"radio producer" => "rpc",
"rapporteur" => "cre",
"rapporteur judiciaire" => "crt",
"recording engineer" => "rce",
"recordist" => "rcd",
"relieur" => "bnd",
"chercheur" => "res",
"researcher" => "res",
"respondent" => "rsp",
"restaurateur" => "rsr",
"restorationist" => "rsr",
"réalisateur" => "drt",
"réalisateur d'émissions de radio" => "rdd",
"réalisateur d'émissions de télévision" => "tld",
"réalisateur de films" => "fmd",
"répondant" => "rsp",
"screenwriter" => "aus",
"Scribe" => "scr",
"sculpteur" => "scl",
"sculptor" => "scl",
"Sculptor" => "scl",
"scénariste" => "aus",
"seller" => "sll",
"signataire autographe" => "ato",
"singer" => "sng",
"Singer" => "sng",
"société de production" => "prn",
"software developer" => "ctb",
"sound designer" => "sds",
"speaker" => "spk",
"special effects provider" => "ctb",
"fournisseur d'effets spéciaux" => "ctb",
"sponsoring body" => "spn",
"stage director" => "sgd",
"storyteller" => "stl",
"superviseur académique" => "dgs",
"surveyor" => "srv",
"teacher" => "tch",
"television director" => "tld",
"television producer" => "tlp",
"traducteur" => "trl",
"transcriber" => "trc",
"transcripteur" => "trc",
"translator" => "trl",
"tribunal régi" => "cou",
"vendeur" => "sll",
"visual effects provider" => "ctb",
"fournisseur d'effets visuels" => "ctb",
"voice actor" => "vac",
"voix" => "vac",
"writer of added commentary" => "wac",
"writer of added lyrics" => "wal",
"writer of added text" => "wat",
"writer of afterword" => "aft",
"writer of foreword" => "aui",
"writer of introduction" => "win",
"writer of postface" => "ctb",
"writer of preface" => "wpr",
"writer of supplementary textual content" => "wst",
"Übersetzer" => "trl",
"éclairagiste" => "lgd",
"éditeur" => "pbl",
"éditeur intellectuel" => "edt",
);