waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Zmeny"];
player createDiarySubject ["serverrules","Zakladni pravidla"];
player createDiarySubject ["policerules","Pravidla pro policii"];
player createDiarySubject ["safezones","Bezpecna zona"];
//player createDiarySubject ["civrules","Pravidla pro civilisty"];
player createDiarySubject ["illegalitems","Nelegalni aktivity"];
//player createDiarySubject ["gangrules","Pravidla gangu"];
//player createDiarySubject ["terrorrules","Pravidla pro rebely"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					The official change log can be found on the BIS forums (search Altis Life RPG)
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Custom Change Log",
				"
					This section is meant for people doing their own edits to the mission, DO NOT REMOVE THE ABOVE.
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Vyhody", 
				"
				Precti si pozorne co se muze a co ne.<br/><br/>

				1. Dostat se z vezeni jinak nez zaplacenim kauce.<br/>
				2. Zabit se vedomne pokud jsi mimo Roleplay. Utect pred zakonem, pokud nejsi omracen, zadrzen, zatcet nebo ve vezeni atd.. Pokud se prijde na to, ze jsi byl vysetrovat a i pres to jsi se zabil, budes zabanovan. Muzes se zabit, abys nemusel platit kauci a dostal se rychle domu, ale potom jsi liny hovno.<br/>
				3. Pokud zjistis ze se ti penize nebo veci v inventari zduplikovali a nebo vis o nekom komu se to stalo, neprodlene to nahlas Adminovi, pokud se na to pride bez tveho nahlaseni, tak kazdy kdo toho zneuzije bude zabanovan.<br/>
				4. Pouzivani Hacku. Pokud ty nebo kdokoli jiny ma u sebe vec, ktera neni dostupna ve hre, je treba to nahlasit adminovi, pokud tak neucinis, budes zabanovan.<br/>
				5. Zneuzivani chyb nebo herni mechaniky je zakazane a bude trestano banem.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Bezpecna zona",
				"
					Pokud zabijes nekoho v bezpecne zone, znicis auto nebo nekoho okrades, hrozi ti ban.<br/><br/>
					
					Obchodnici s auty a garaze.<br/>
					Obchodnici se zbranemi.<br/>
					Policejni stanice<br/>
					Rebelska zakladna<br/>
					Obchod pro Donatory<br/><br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Za co se banuje", 
				"
				Tohle si zapamatuj.<br/><br/>
				
				1. Hacking<br/>
				2. Cheating<br/>
				3. Pouzivani vyhod (precti si 'Vyhody')<br/>
				4. Pokud jsi kicknuty 3x a vice.<br/>
				5. Vstup na policajnu stanicu v Kavale.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Pravomoce policie", 
				"
				Co je zde napsane, je treba dodrzovat, jinak ti hrozi kick/ban.<br/><br/>
				
				1. Civilista muze byt zatcen, pokud prohledava policii batoh nebo automobil. Pokud se to bude opakovat bude tento civilista zabanovan.<br/>
				2. Civilista muze byt zatcen za rozptylovani policisty.<br/>
				3. Pokud civilista nebo rebel zabije bezduvodne policistu, je to brano jako RDM, pokud nejde o nejakou Roleplay akci. Precti si co je RDM.<br/>
				4. Trvale pronasledovani, obtezovani, spamovani a vykradani policisty povede k zabanovani.<br/>
				5. Za braneni policii ve vykonu sluzby hrozi vezeni. Pokud se to bude opakovat, znamena to ban.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Plavba", 
				"
				Tyto pravidla posuzuje Admin a pri poruseni hrozi ban.<br/><br/>
				
				1. Opakovane tlaceni tvou lodi lod nekoho jineho bez jeho svoleni.<br/>
				2. Tlacit lod v umyslu nekoho zabit.<br/>
				3. Prejizdet plavce nebo potapece.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Letani", 
				"
				Tyto pravidla posuzuje Admin a pri poruseni hrozi ban.<br/><br/>
				
				1. Umyslne bourani do helikopter, budov nebo do cehokoli jineho.<br/>
				2. Letat 150m nad mestem a pristavat opakovane ve meste.<br/>
				3. Nastoupit do helikoptery bez souhlasu majitele. Pokud majitel utece bez zamceni, tak neni problem, ale pokud nastoupis po jeho vystoupeni, tak to znamena postih.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Vozidla", 
				"
				Tyto pravidla posuzuje Admin a pri poruseni hrozi ban.<br/><br/>
				
				1. Bezduvodne prejizdeni lidi (VRDM). Pokud nekoho nechtene prejedete, bere se to jako nehoda a vysetri to policie.<br/>
				2. Zamerne nekoho strcit pred jedouci vozidlo za umyslem nekoho zabit nebo zranit.<br/>
				3. Bourani do vozidel, aby vybuchlo.<br/>
				4. Opakovane vstupovat do vozidla nebo ho vykradat a tim obtezovat majitele, pokud nejde o Roleplay.<br/>
				5. Krast vozidlo za ucelem jeho zniceni nebo poskozeni.<br/>
				6. Nakupovat hromadne vozidla a blokovat tim spawn vozidel dalsim lidem.<br/>
				7. Strilet po vozidle bez predchoziho varovani, pokud nejde o Roleplay..<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Pravidla komunikace", 
				"
				Tyto pravidla posuzuje Admin a pri poruseni hrozi ban.<br/><br/>
				
				1. Nespamovat Side Chat (pouzivat jen nutne).<br/>
				2. Nespamovat jakykoli chat.<br/>
				4. Teamspek musi mit oddelene mistnosti pro civilisty a policii.<br/>
				5. Civilista nesmi byt na Teamspeaku policie. Pokud se tam bude pripojovat opakovane hrozi mu ban.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Nahodne zabijeni (RDM)", 
				"
				Tyto pravidla posuzuje Admin a pri poruseni hrozi ban.<br/><br/>
				
				1. Bezduvodne zabiti kohokoli pokud nejde o Roleplay.<br/>
				2. Pokud je vyvolane povstani, tak to neni duvod zabijet civilisty ani policii.<br/>
				3. Policie a civilisti/rebelove se mohou zabije pouze pri prestrelce, pokud existuje duvod, ale jde o trestny cin.<br/>
				4. Pokud je nekdo zabit v krizove palbe, nejde o RDM.<br/>
				5. Pokud nekoho zabijes v sebeobrane nebo obrane nekoho jineho, nejde o RDM.<br/>
				6. Strilet po komkoli bezduvodne s umyslem ho zabit.<br/><br/>
				
				Vsechny tyto pripady posuzuje Admin.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"Novy zivot", 
				"
				Tyto pravidla plati pro policisty a civilisty.<br/><br/>
				
				Tyto pravidla posuzuje Admin a pri poruseni hrozi ban.<br/><br/>

				1. Vratit se na misto tve smrti muzes po uplynuti 15 min.<br/>
				2. Pokud umres a nejdena se o Roleplay akci, nesmis se mstit.<br/>
				3. Pokud jsi zabit stylem RDM, nejedna se o Novy zivot.<br/>
				4. Pokud se sam Respawnes, nejde o Novy zivot.<br/>
				5. Pokud se sam zabijes a nejde o Roleplay, nejde o Novy zivot.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Nebud debil!", 
				"
				Pokud ti Admin rekne, aby ses nechoval jako debil, tak to nedelej.<br/>
				Nekoho stvat nebo obtezovat, popripade kazit Roleplay akci.<br/>
				Proste nebud debil, ok?<br/>
				Vsechny tyto pripady posuzuje Admin.<br/><br/>
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Kriticka situace",
				"
				Resi ji serzant, pokud neni pripojeny, zastupuje ho policista s nejvyssi hodnosti.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Federalni rezerva",
				"
				1. Vstup civilisty do oblasti Federalnich rezerv je zakazan. Za neopravneny vstup ti hrozi vezeni.
				2. Letat nad timto uzemim je zakazane, pokud nekdo tento zakaz porusi, bude zatcen.<br/>
				2. Pokud je nekdo vykrada, vsichni policiste maji prioritu tuto oblast chranit.<br/>
				3. Chranit tuto oblast je dulezitejsi nez ostatni zlociny.<br/>
				4. Pred tim nez se pouzije na zlodeje zbran, je treba se pokusit nejprve o omraceni a zatceni zlodeje.<br/>
				5. Policista nesmi nahodne strilet do budov.<br/>
				6. Oblast by mela byt pri probihajici loupezi zajistena a evakuovana od civilistu.<br/>
				7. Pokud bude civilicta branit policii ve vykonu sluzby, bude povazovan za spolupachatele.<br/>
				8. Policista muze najmout jednotlivce nebo skupinu lidi jako straz rezerv. Vice ve smluvni casti.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Letani",
				"
				1. Pristavat ve meste je mozne pouze s povolenim nejvyse postaveneho policisty. (Vyjimky nize.)<br/>
				Kavala: Heliport nemocnice (037129) nebo v prictavu (031128).<br/>
				Athira: Sportovni hriste (138185) nebo za DMV (140188).<br/>
				Pyrgos: Severni a vychodni pole u DMV (170127)<br/>
				Sofia: Naproti obchodu s auty (258214) nebo v oblasti jihovychodni garaze (257212)<br/>
				Small towns: Na vhodnem miste, to posuzuje vyse postaveny policista.<br/><br/>
				
				2. Nepristavat na silnici.<br/>
				3. Policie muze docasne zakazat pristani v nektere oblasti, ale pouze na kratkou dobu.<br/>
				4. Je zakazano letat nad mestem ve vysce pod 150m pokud na to nemas zvlastni povoleni.<br/>
				5. Helikoptera se nesmi vznaset nad mestem, pokud nejde o policejni zasah.<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Nelegalni oblasti", 
				"
				1. Zakladny gangu nejsou povazovany za nelegalni. Policista nesmi nikoho omezovat v teto oblasti, pokud k tomu nema dostatecny duvod. (Mluveni s NPC neni nezakone.)<br/>
				2. Nevstupujte na nelegalni oblast, pokud nejde o najezd nebo strezeni.<br/>
				3. Pokud nekoho pronasledujes do nelegalni oblasti, pozadej o posily.<br/>
				4. Policistovi neni dovoleno vyckavat v nelegalni oblasti.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Hlidkovani", 
				"
				1. Policie muze hlidkovat na silnici, v mestech, hledat opustena vozidla a resit trestne ciny.<br/>
				2. Hlidkovat je mozne pesky nebo ve vozidle uvnitr mesta, mimo mesto pouze ve vozidle.<br/>
				3. Hlidkovat neni povolene v nelegalnich oblastnech. Viz. Utok/Kempeni.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Kontrolni stanoviste", 
				"
				Vytvoreni je dobre vyuzit ve strategickych mistech, pro boj proti nezakonne cinnosti a udrzeni bezpecnosti na silnicich.<br/><br/>
				
				1. K vytvoreni je zapotrebi tri a vice policiste, dvou a vice vozidel, ATV neni povazovana za potrebne vozidlo, ale muze byt pouzito .<br/>
				2. Nesmi byt vytvoren v blizsi vzdalenosti nez 300m od nelegalni oblasti.<br/>
				3. Muze byt pouze na silnici, mimo krizovatku.<br/>
				4. Nemusi byt oznacen na mape.<br/><br/>


				Spravny postup:<br/>
				1. Reknete ridici at zastavi na bezpecnem miste a vypne motor.<br/>
				2. Zjisti jestli cestujici nemaji zbrane.<br/>
				3. Pozadej vsechny, aby vystoupili z vozidla. Pokud maji pri vystoupeni v ruce zbran, pozadej je, aby je schovali a dej jim cas, aby to mohli provest.<br/>
				4. Zeptej se jich kam jedou.<br/>
				5. Zeptej se jich jestli je muzes prohledat.<br/>
				6. Pokud ti umozni prohledani, dej jim pouta a prohledej je.<br/>
				7. Pokud ti to neumozni, musis je nechat jit, pokud nemas podezreni.<br/>
				8. Po prohledani je muzes nechat nastoupit do vozidla a odjet.<br/>
				9. Pokud je nalezen pri prohledani nelegalni predmet, je mozne osobu zatknout.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Vozidla", 
				"
				1. Pokud vozidlo parkuje na miste k tomu urcenem, neni mozne ho zabavit.<br/>
				2. Pokud vozidlo vypada opustene, je rozbite a neni v blizkosti ridic, muze byt zabaveno.<br/>
				3. Lode by meli kotvit u brehu.<br/>
				4. Pokud vozidlo nikdo nepouzije v urcitem case, tak muze byt zabaveno.<br/>
				5. Zabavovani vozidel je dulezite pro bezproblemovy beh serveru.<br/>
				6. V pripade pochybnosti o nepritomnosti majitele vozidla, je treba ho pred zabavenim vozidla kontaktovat.<br/>
				7. Policejni cluny a vozidla muhou byt pouzity pri dopadeni zlocince. Zbrane by meli byt pouzity pouze pro zastaveni vozidla, nikoli pro zniceni.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Rychlosti", 
				"
				Tyto rychlosti musi byt dodrzovany pro bezpecnost lidi.<br/><br/>
				
				Ve mestech:<br/>
				Vedlejsi silnice: 50km/h<br/>
				Hlavni silnice: 65km/h<br/>
				Mimo mesto:<br/>
				Vedlejsi silnice: 80km/h<br/>
				Hlavni silnice: 110km/h<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Protokol mesta", 
				"
				1. Policie muze hlidkovat ve velkych mestech - Kavala, Athira, Pyrgos a Sofia.<br/>
				2. Policista muze zkontrolovat misto kolem obchodu s auty, pripadne zabavit prekazejici vozidlo.<br/>
				3. Policista nesmi stat v okoli nebo se zdrzovat v centru mesta.<br/>
				4. Pokude nekde vypukla vzpoura, je treba do mesta vstupovat ve vetsim poctu. Pri vyreseni vzpoury, je mozne mesto opustit.<br/>
				5. Stanne pravo nemuze byt vyhlaseno kdykoli.<br/>
				6. Do zakladny policie je vstup civilistum zakazan, pokud nechce nahlasit zlocin.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Zatceni a pokuta",
				"
				Zatceni zlocince je nutne pro bezpecnost.<br/><br/>

				1. Pokud nekdo zaplati pokutu, nesmi byt zatcen.<br/>
				2. Musite podezrelemu oznamit duvod zatceni.<br/>
				3. Pokud je civilista hledany, muzes ho zatknout, strelne zbrane pouzij jen v krajnich pripadech.<br/><br/>


				Pokuta je myslena jako varovani. Pokud civilista nepredstavuje hrozbu, je mozne mu ulozit jen pokutu.<br/><br/>

				1. Pokuty musi byt za rozumne ceny.<br/>
				2. Cena pokuty by mela byt stanovena podle zavaznosti trestneho cinu.<br/>
				3. Odmitnuti zaplaceni pokuty vede k zatceni.<br/>
				4. Za udeleni neprimerene pokuty budes odstranen z policejniho sboru.<br/><br/>
				
				Behem treninku by mel byt policista seznamen se seznamem trestnych cinu a odpovidajicich trestu. Pokud v nejake situaci nevis jak se mas zachovat, zeptej se nadrizeneho dustojnika.<br/><br/>
				
				The list is available at crime.sealteamsloth.com<br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Zbrane", 
				"
				Policista nema dovoleno dodavat civilistum zbrane. Pokud je toto pravidlo poruseno, budes zabanovan.<br/><br/>

				Civilista muze vlastnit tyto zbrane:<br/>
				1. P07<br/>
				2. Rook<br/>
				3. ACP-C2<br/>
				4. Zubr<br/>
				5. 4-five<br/>
				6. PDW2000<br/><br/>

				Vsechny dalsi zbrane (P07 s tlumicem [Policejni zbran]) jsou nelegalni.<br/><br/>

				1. Civiliste nesmi mit zbrane pokud to omezuje pravidlo ve meste.<br/>
				2. Pokud je civilista mimo mesto, muze mit zbran v ruce. Pokud jsou vysetrovani policii, mely by zbran sklonit (stisknutim 2x Ctrl).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Pouziti omraceni",
				"
				Je mozne zvolit Taser (P07 s tlumicem).<br/><br/>

				1. Taser by mel byt pouzit ke zneskodneni civilicty, ktery predstavuje nebezpeci.<br/>
				2. pokud bezduvodne budes pouzivat Taser, jako treba jen tak strilet do civilistu nebo do vzduchu, budes suspendovan.<br/>
				3. Pouzivej Tazer jen v souladu s pravidly.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Zatah/Kempovani",
				"
				Zatah muze provadet specialni jednotka policie k tomu urcena, pokud jde o velkou trestnou cinnost, s cilem tuto nelegalni cinnost zastavit.<br/><br/>

				1. Pri najezdu musi byyt ve skupine alespon 4 policiste a z toho jeden serzant nebo vyssi.<br/>
				2. Vsichni civiliste v oblasti zatahu budou prohledani, pokud u sebe nebudou mit nic nelegalniho, budou propusteni.<br/>
				3. Pokud pri prohledani naleznes neco nelegalniho, muzes udelit pokutu nebo osobu zatknout.<br/>
				5. Pravidla pro pouziti smrtici sily, jsou vypsany nize.'.<br/>
				6. Pokud je oblast zabezpecena, musi policie opustit oblast.<br/>
				7. Na oblast nemuze byt po dubo 20ti min udelat znovu zatah.<br/>
				8. V pripade, ze zatah selze (vsichni policiste byli zabiti), pak nesmi zatah opakovat po dobu 20ti minut.<br/>
				9. Mohou byt zavolany posily, ale nesmi byt mezi nimi padli policiste (viz. 'Novy zivot').<br/><br/>

				Kempovani znamena, ze se dustojnik zdrzuje v oblasti dele nez je nutne.<br/><br/>

				1. Kontrolni bod neni povazovan za Kempovani. Viz. definice kontrolniho bodu.<br/>
				2. Pro vice informaci o Kempovani viz. bankovni loupez a Agia Marina.<br/>
				3. Kempovani v oblasti je mozne, ale ne po bodu delsi nez je nutne, pouze pro strezeni teto oblasti proti vstupu civilistu po urcitou dobu.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Linie dustojniku",
				"
				Nejvyssi dustojnik ma na starost policii v nepritomnosti Admina. Od vysoce postaveneho dustojnika se ocekava, ze bude dodrzovat pravidla a pokud je nekdo porusuje, tak je treba podle potreby nahlasit poruseni pravidel.<br/><br/>

				Linie dustojniku:<br/>
				1. Chief<br/>
				2. Deputy Chief<br/>
				3. Superintendent<br/>
				4. Captain<br/>
				5. Lieutenant<br/>
				6. Sergeant<br/>
				7. Senior Patrol Officer<br/>
				8. Patrol Officer<br/>
				9. Cadet<br/><br/>

				Policista s nizkou hodnosti nema moc co povidat do policejni akce.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Pouzit smrtici silu",
				"
				1. Pouziti smrtici sily je povoleno pouze pri ochrane zivota sveho, policisty nebo civilisty a to jen v pripade, ze omraceni by nemelo ucinek.<br/>
				2. Vybijeni zbrane strelbou do vzduchu neni povole ani pri vycvik. Pokud policista toto pravidla porusi, bude zabanovan.<br/>
				3. Nedodrzeni postupu a spatneho pouziti zbrane, bude znamenat zabanovani.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Pravidla Teamspeaku",
				"
				1. Vsichni policiste musi byt v mistnosti pro policii.<br/>
				2. Do mistnosti policie se pripoj az po te co se pripojis jako policista do hry.<br/><br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Pravidla pro rebely",
				"
				Rebel je odpor proti zakonum. V tomto pripade odpor vuci policii. Nicmene, neutocte na policii bezduvodne a neberte rebelstvi moc vazne, hrajte pro zabavu a rozumne.<br/><br/>
				1. Rebel musi nejdrive vytvorit gank a pak prohlasit jake ma zamery.<br/>
				2. Pokud jsi rebel, rid se pravidly pro RDM.<br/>
				3. Pokud jsi rebel, mel bys brat v na vedomi Roleplay a nevykradat jen obchody a nebo strilet policisty.<br/>
				4. Rebelstvi musi byt koordinovano.<br/>
				5. Kazda akce musi mit duvod.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Pravidla gangu",
				"
				1. Byt v gangu neni nelegalni. Nelegalni je to pouze v pripade nelegalni cinnosti.<br/>
				2. Byt v oblasti gangu neni nezakonne. Nezakonne to je pri nelegalni cinnosti.<br/>
				3. Gang muze ovladat oblasti pro gank. Ostatni gangy mohou bojovat o obsazeni oblati.<br/>
				4. Pokud gang chce druhemu gangu vyhlasit valku, musi to druhemu gangu ohlasit vudce, pokud tato valka ma byt dlouhodoba, je treba to ohlacit vsem na serveru.<br/>
				5. Gang nesmi zabijet neozbrojene civilisty, pokud tento civilista neni z druheho gangu nebo je v kontrolovane oblasti tveho gagu.<br/>
				6. Gangy nesmi zabijet civilisty pokud nejsou v ohrozeni. Zabijeni neozbrojenych civilistu neni povoleno, pokud tento ucel nespada pod RDM.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Nelegalni vozidla",
				"
				Kontrola nelegalnich vozidel je hlavne pouzivano pro zjisteni vlastnictvi nelegalnich zblani.<br/><br/>

				1. Ifrit<br/>
				2. Speedboat<br/>
				3. Hunter<br/>
				4. Police Offroad<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Nelegalni zbrane",
				"
				Civilista nesmi vlastnit nelegalni zbran viz. drzeni nelegalni zbrane.<br/><br/>

				1. MX Series<br/>
				2. Katiba Series<br/>
				3. TRG Series<br/>
				4. Mk.20 Series<br/>
				5. Mk.18 ABR<br/>
				6. SDAR Rifle<br/>
				7. Sting SMG<br/>
				8. Silenced P07 (Taser)<br/>
				9. Any explosives<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Nelegalni veci",
				"
				Tyto veci jsou nezakonne:<br/><br/>
				1. Turtle<br/>
				2. Cocaine<br/>
				3. Heroin<br/>
				4. Cannabis<br/>
				5. Marijuana<br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"Ovladani",
				"
				Y: Otevrit menu hrace<br/>
				U: Odemceni a zamceni vozidla<br/>
				F: Policejni sirena (pouze za policistu)<br/>
				T: Inventar vozidla<br/>
				Left Shift + R: Zatceni (Cop Only)<br/>
				Left Shift + G: Omraceni (Pouze pro civilistu a pro okradeni)<br/>
				Left Windows: Hlavni klavesa pro veskerou interakci s vozidly, pri hre za policistu s civilisty. Doporucene nastaveni, je na tlacitko H (ESC->Configure->Controls->Custom->Use Action 10)<br/>
				Left Shift + L: Policejni svetla (pouze policista).<br/>
				Left Shift + H: Schovani zbrane<br/>
				"
		]
	];