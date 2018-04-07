import "Turbine.Gameplay";

-- Shortcuts that anyone could have
generalShortcut = {
	-- Engineer
	["0x7003A2CF"] = { icon = 0x41140AE7, en = "Trap - Bear", de = "Falle â€“ B\195\164renfalle", fr = "Pi\195\168ge - Ours" },
	["0x7003A2D0"] = { icon = 0x41140AF7, en = "Trap - Caltrops", de = "Falle – Kr\195\164henf\195\188\195\159e", fr = "Pi\195\168ge - Chausse-trappes" },
	["0x7003A2CE"] = { icon = 0x41140AE2, en = "Trap - Tripwire", de = "Falle – Stolperdraht", fr = "Pi\195\168ge - Fil de d\195\169tente" },

	-- Officer
	["0x70039982"] = { icon = 0x411411C7, en = "Banner - Engineer", de = "Banner – Maschinenmeister", fr = "Banni\195\168re - Ing\195\169nieur" },
	["0x70039983"] = { icon = 0x411411D1, en = "Banner - Vanguard", de = "Banner – Vorhut", fr = "Banni\195\168re - Premi\195\168re ligne" },

	-- Vanguard
	["0x700378E8"] = { icon = 0x411421D6, en = "Empowerment", de = "Erm\195\164chtigung", fr = "Accentuation" },
	["0x700378EA"] = { icon = 0x411421D5, en = "Invigoration", de = "Kr\195\164ftigung", fr = "Renforcement" },
	["0x700378EB"] = { icon = 0x411421D7, en = "Serrated", de = "Auf Zack", fr = "En dents de scie" },
	["0x700378ED"] = { icon = 0x411421C9, en = "Fleetness", de = "Schnellf\195\188\195\159igkeit", fr = "C\195\169l\195\169rit\195\169" },

	["0x70037A3F"] = { icon = 0x411421CE, en = "Fortification", de = "Befestigung", fr = "Fortification" },
	["0x70037A48"] = { icon = 0x411421D0, en = "Eye for an Eye", de = "Auge um Auge", fr = "Oeil pour \197\147il" },
	["0x70037A4A"] = { icon = 0x411421D2, en = "Rejuvenation", de = "Verj\195\188ngung", fr = "Renouveau" },
	["0x70037A4B"] = { icon = 0x411421CC, en = "Entrenchment", de = "Verschanzung", fr = "Ancrage" },

	["0x7003E178"] = { icon = 0x41142E05, en = "Incite Foe", de = "Angestachelter Gegner", fr = "Instigation" },
	["0x700378E9"] = { icon = 0x411421D4, en = "Rending Bark", de = "Rei\195\159endes Blaffen", fr = "Aboiement d\195\169chirant" },
	["0x700378E2"] = { icon = 0x41142304, en = "Demoralizing Shout", de = "Demoralisierender Schrei", fr = "Cri d\195\169moralisant" },
	["0x700378E4"] = { icon = 0x411421D8, en = "Enfeebling Cry", de = "Schw\195\164chender Schrei", fr = "Cri d'affaiblissement" },
	["0x700378E5"] = { icon = 0x411421D1, en = "Piercing Roar", de = "Durchdringendes Br\195\188llen", fr = "Rugissement per\195\167ant" },
	["0x700378E6"] = { icon = 0x411421D9, en = "Stunning Bellow", de = "Bet\195\164ubendes Gebr\195\188ll", fr = "Braillement \195\169tourdissant" },

	-- Resource Tracking
	["0x7000AF34"] = { icon = 0x410D44DF, en = "Track Artifacts", de = "Artefakte aufsp\195\188ren", fr = "D\195\169tection d'artefacts" },
	["0x70003A03"] = { icon = 0x410D44E2, en = "Track Crops", de = "Feldfr\195\188chte aufsp\195\188ren", fr = "D\195\169tection de r\195\169colte" },
	["0x70003953"] = { icon = 0x41005E0B, en = "Track Mines", de = "Minen aufsp\195\188ren", fr = "D\195\169tection de mine" },
	["0x7000397A"] = { icon = 0x41005E0D, en = "Track Wood", de = "Holz aufsp\195\188ren", fr = "D\195\169tection du bois" },

	-- Reputation Ports
	["0x7003DC81"] = { icon = 0x41142BE6, en = "Return to Aldburg", de = "Kehrt nach Aldburg zur\195\188ck.", fr = "Retour \195\160 Aldburg" },
	["0x7001BF90"] = { icon = 0x4100888A, en = "Return to Bree", de = "R\195\188ckkehr nach Bree", fr = "Retour \195\160 Bree" },									-- CHECK: Store
	["0x7004128F"] = { icon = 0x41102111, en = "Return to Derndingle", de = "R\195\188ckkehr ins Geheimnistal", fr = "Retour \195\160 Derunant" },
	["0x700411AC"] = { icon = 0x411556D9, en = "Return to Dol Amroth", de = "R\195\188ckkehr nach Dol Amroth", fr = "Retour \195\160 Dol Amroth" },
	["0x70021FA2"] = { icon = 0x41108672, en = "Return to Enedwaith", de = "R\195\188ckkehr nach Enedwaith", fr = "Retour en Enedwaith" },
	["0x70036B5E"] = { icon = 0x4113B6F8, en = "Return to Forlaw", de = "R\195\188ckkehr nach Forlach", fr = "Retour \195\160 Forloi" },
	["0x7002C647"] = { icon = 0x4111F79F, en = "Return to Galtrev", de = "Kehrt nach Galtrev zur\195\188ck.", fr = "Retour \195\160 Galtrev" },
	["0x7003DC82"] = { icon = 0x41142BE7, en = "Return to Helm's Deep", de = "Kehrt nach Helms Klamm zur\195\188ck.", fr = "Retour au Gouffre de Helm" },
	["0x700364B1"] = { icon = 0x4100888A, en = "Return to Laila's Market", de = "Kehrt zu Lalias Markt zur\195\188ck", fr = "Retour au March\195\169 de Lalia" },	-- CHECK: Laila's Market
	["0x70023262"] = { icon = 0x41008873, en = "Return to Michel Delving", de = "R\195\188ckkehr nach Michelbinge", fr = "Retour \195\160 Grand'Cave" },			-- CHECK: Store
	["0x7001F374"] = { icon = 0x41102111, en = "Return to Mirkwood", de = "R\195\188ckkehr zum D\195\188sterwald", fr = "Retour dans la For\195\170t Noire" },
	["0x70020441"] = { icon = 0x4110C4BC, en = "Return to Ost Guruth", de = "R\195\188ckkehr zur Feste Guruth", fr = "Retournez \195\160 Ost Guruth." },
	["0x70023263"] = { icon = 0x4100889D, en = "Return to Rivendell", de = "R\195\188ckkehr nach Bruchtal", fr = "Retour \195\160 Fondcombe" },						-- CHECK: Store
	["0x70031A46"] = { icon = 0x4112DEA0, en = "Return to Snowbourn", de = "Kehrt nach Schneegrenze zur\195\188ck", fr = "Retourner \195\160 Neigebronne" },
	["0x7002C65D"] = { icon = 0x4111F79E, en = "Return to Stangard", de = "Kehrt nach Stangard zur\195\188ck.", fr = "Retour \195\160 Stangarde" },
	["0x7001BF91"] = { icon = 0x410088AD, en = "Return to Thorin's Gate", de = "R\195\188ckkehr zu Thorins Tor", fr = "Revenir \195\160 la Porte de Thorin" },

	["0x7000D047"] = { icon = 0x410D83FE, en = "Travel to Kinship House", de = "Reist zum Haus Eurer Sippe", fr = "Retour \195\160 la maison de confr\195\169rie" },
	["0x7000D046"] = { icon = 0x410D83FC, en = "Travel to Personal House", de = "Reist zu Eurem eigenen Heim", fr = "Retour \195\160 la maison personnelle" },
	
	-- Warsteed
	["0x70031EDC"] = { icon = 0x4112AAD3, en = "Break Free", de = "Losrei\195\159en", fr = "Lib\195\169ration" },
	["0x7002FDA4"] = { icon = 0x4112D3D9, en = "Caution", de = "Vorsicht", fr = "Prudence" },
	["0x7002FDA3"] = { icon = 0x4112BD6C, en = "Coax", de = "\195\156berreden", fr = "Persuasion" },
	["0x7002E996"] = { icon = 0x41128B8E, en = "Favour of the Mearas", de = "Gunst der Mearas", fr = "Faveur des Mearas" },
	["0x7002FDA2"] = { icon = 0x4112BD68, en = "Intimidate", de = "Einsch\195\188chtern", fr = "Intimidation" },
	["0x7002EAF0"] = { icon = 0x4112DEB3, en = "Quick Stop", de = "Schneller Halt", fr = "Arr\195\170t rapide" },
	["0x700303C2"] = { icon = 0x4112BAC4, en = "Spur On", de = "Antreiben", fr = "Pouss\195\169e" },

	-- Light
	["0x7002E7D2"] = { icon = 0x411294D5, en = "Bolstering Cry", de = "Ermutigender Schrei", fr = "Cri encourageant" },
	["0x7002E80B"] = { icon = 0x411294D7, en = "Dash", de = "Spurt", fr = "Course folle" },
	["0x7002E778"] = { icon = 0x411294D8, en = "Feign Injury", de = "Verletzung vort\195\164uschen", fr = "Simulation de blessure" },	-- CHECK: Light/Red
	["0x7002E7D8"] = { icon = 0x411294D6, en = "Invigorate", de = "Beleben", fr = "Stimulation" },
	["0x7002E7E2"] = { icon = 0x411294D9, en = "Rush of Energy", de = "Energieschub", fr = "Mont\195\169e d'\195\169nergie" },			-- CHECK: Light/Red

	-- Medium
	["0x7002EF6C"] = { icon = 0x4112BD69, en = "Arise", de = "Energiereserven", fr = "Eveil" },											-- CHECK: Medium/Red
	["0x7002F191"] = { icon = 0x411294D7, en = "Dash", de = "Spurt", fr = "Course folle" },												-- CHECK: Medium/Yellow
	["0x7002EA44"] = { icon = 0x4112BD67, en = "Sacrifice", de = "Aufopferung", fr = "Sacrifice" },										-- CHECK: Medium/Blue

	-- Heavy
	["0x7003001A"] = { icon = 0x411294D7, en = "Dash", de = "Spurt", fr = "Course folle" },												-- CHECK: Heavy/Yellow
	["0x7002EDA2"] = { icon = 0x4112BD6D, en = "Instigate", de = "Aufhetzen", fr = "Incitation" },										-- CHECK: Heavy/Red
	["0x7002EA5F"] = { icon = 0x4112BD6F, en = "Positive Thinking", de = "Positiv denken", fr = "Pens\195\169es positives" },			-- CHECK: Heavy/Blue
	["0x7002EA8A"] = { icon = 0x4112FA39, en = "Ride for Ruin", de = "H\195\182llenritt", fr = "Course vers la destruction" },			-- CHECK: Heavy/Red
	["0x7002EA5B"] = { icon = 0x4112BD6B, en = "Steel Skin", de = "Stahlhaut", fr = "Peau d'acier" },									-- CHECK: Heavy/Blue
	["0x700303F3"] = { icon = 0x4112BD65, en = "Trample", de = "Niedertrampeln", fr = "Pi\195\169tinement" },							-- CHECK: Heavy/Red

	["0x700256BA"] = { icon = 0x41111040, en = "Return Home", de = "Zum 1. Heim zur\195\188ckkehren", fr = "Retour \195\160 la maison" }
};

-- class specific shortcuts
classShortcut = {
	[Turbine.Gameplay.Class.Beorning] = {
		["0x70041255"] = { icon = 0x4115B22D, en = "Bash", de = "Heftiger Schlag", fr = "Coup violent" },
		["0x70042DB4"] = { icon = 0x4115E07B, en = "Bear Up", de = "Bear Up", fr = "Bear Up" },
		["0x700403BB"] = { icon = 0x4115B220, en = "Bee Swarm", de = "Bienenschwarm", fr = "Essaim d'abeilles" },
		["0x70040390"] = { icon = 0x4115B224, en = "Biting Edge", de = "Bei\195\159ende Schneide", fr = "Lame mordante" },
		["0x70041257"] = { icon = 0x4115B27C, en = "Call To Wild", de = "Ruf der Wildnis", fr = "Appel sauvage" },
		["0x70041289"] = { icon = 0x4115B226, en = "Claw Swipe", de = "Klauenstreich", fr = "Griffure" },
		["0x7004039E"] = { icon = 0x4115B227, en = "Cleanse", de = "S\195\164ubern", fr = "Purification" },
		["0x7004128C"] = { icon = 0x4115B229, en = "Counter", de = "Konter", fr = "Contre" },
		["0x7004128A"] = { icon = 0x4115C255, en = "Counterattack", de = "Gegenangriff", fr = "Contre-attaque" },
		["0x700412EE"] = { icon = 0x4115B228, en = "Encouraging Roar", de = "Ermutigendes Br\195\188llen", fr = "Rugissement d'encouragement" },
		["0x70041256"] = { icon = 0x4115B238, en = "Execute", de = "Ausf\195\188hren", fr = "Ex\195\169cution" },
		["0x70041258"] = { icon = 0x4115B225, en = "Expose", de = "Ungesch\195\188tzt", fr = "Exposition" },
		["0x7004039C"] = { icon = 0x4115B236, en = "Ferocious Roar", de = "Grimmiges Gebr\195\188ll", fr = "Rugissement f\195\169roce" },
		["0x700403B7"] = { icon = 0x4115B222, en = "Grisly Cry", de = "Grausiger Schrei", fr = "Cri atroce" },
		["0x7004128E"] = { icon = 0x4115B22B, en = "Guarded Attack", de = "Besonnener Angriff", fr = "Attaque gard\195\169e" },
		["0x7004039B"] = { icon = 0x4115B230, en = "Hearten", de = "Ermuntern", fr = "Encouragement" },
		["0x700412EB"] = { icon = 0x4115B21E, en = "Mark of Beorn", de = "Zeichen von Beorn", fr = "Marque de Beorn" },
		["0x700412EF"] = { icon = 0x4115B22A, en = "Mark of Grimbeorn", de = "Zeichen von Grimbeorn", fr = "Marque de Grimbeorn" },
		["0x70041F1B"] = { icon = 0x4115B27A, en = "Nature's Bond", de = "Bund der Natur", fr = "Lien avec la Nature" },
		["0x700412EA"] = { icon = 0x4115B239, en = "Nature's Mend", de = "Nat\195\188rliche Genesung", fr = "R\195\169paration naturelle" },
		["0x7004039F"] = { icon = 0x4115B232, en = "Nature's Vengeance", de = "Die Rache der Natur", fr = "Revanche de la Nature" },
		["0x70041253"] = { icon = 0x4115B22E, en = "Piercing Roar", de = "Durchdringendes Br\195\188llen", fr = "Rugissement per\195\167ant" },
		["0x7004128D"] = { icon = 0x4115B22F, en = "Recuperate", de = "Erholen", fr = "R\195\169cup\195\169ration" },
		["0x70041F62"] = { icon = 0x4115B27E, en = "Rejuvenating Bellow", de = "Erfrischendes Knurren", fr = "Hurlement du renouveau" },
		["0x700403B9"] = { icon = 0x4115B22C, en = "Relentless Maul", de = "Unerbittliche Zerfleischung", fr = "Mutilation acharn\195\169e" },
		["0x7004128B"] = { icon = 0x4115B21B, en = "Rending Blow", de = "Rei\195\159ender Hieb", fr = "Attaque d\195\169chirante" },
		["0x7004039A"] = { icon = 0x4115B223, en = "Rush", de = "Vorschnellen", fr = "Ru\195\169e" },
		["0x700403B8"] = { icon = 0x4115B231, en = "Sacrifice", de = "Aufopferung", fr = "Sacrifice" },
		["0x7004039D"] = { icon = 0x4115B234, en = "Shake Free", de = "Absch\195\188tteln", fr = "Arrachement" },
		["0x700422ED"] = { icon = 0x4115B21A, en = "Skin-change", de = "Pelzwechsel", fr = "Changement de peau" },
		["0x70040391"] = { icon = 0x4115B235, en = "Slam", de = "Bewusstlos schlagen", fr = "Claquement brusque" },
		["0x7004038F"] = { icon = 0x4115B221, en = "Slash", de = "Schneiden", fr = "Coup tranchant" },
		["0x700412ED"] = { icon = 0x4115B21C, en = "Takedown", de = "Zu Fall gebracht", fr = "Tacle" },
		["0x70041F1C"] = { icon = 0x4115B27B, en = "Thickened Hide", de = "Verdichteter Pelz", fr = "Cuir renforc\195\169" },
		["0x70041E78"] = { icon = 0x4115B219, en = "Thrash - Tier 1", de = "Pr\195\188geln - Stufe 1", fr = "Passage \195\160 tabac - niveau\194\1601" },
		["0x700403BA"] = { icon = 0x4115B237, en = "Vicious Claws", de = "Boshafte Krallen", fr = "Griffes sauvages" },
		["0x700403B6"] = { icon = 0x4115B21F, en = "Vigilant Roar", de = "Aufmerksames Gebr\195\188ll", fr = "Rugissement vigilant" },

		["0x7004165C"] = { icon = 0x4112A940, en = "Bee Swarm", de = "Bienenschwarm", fr = "Essaim d'abeilles" },
		["0x70041B4B"] = { icon = 0x41135B81, en = "Biting Edge", de = "Bei\195\159ende Schneide", fr = "Lame mordante" },
		["0x70041657"] = { icon = 0x4112B111, en = "Execute", de = "Ausf\195\188hren", fr = "Ex\195\169cution" },
		["0x70041646"] = { icon = 0x4112A70F, en = "Discipline: Red Dawn", de = "Disziplin: Morgenr\195\182te", fr = "Discipline\194\160: Aube rouge" },
		["0x70041647"] = { icon = 0x4112A713, en = "Discipline: Riddermark", de = "Disziplin: Riddermark", fr = "Discipline\194\160: Riddermark" },
		["0x70041648"] = { icon = 0x4112A712, en = "Discipline: Rohirrim", de = "Disziplin: Rohirrim", fr = "Discipline\194\160: Rohirrim" },
		["0x70041652"] = { icon = 0x41135B7A, en = "Ferocious Roar", de = "Grimmiges Gebr\195\188ll", fr = "Rugissement f\195\169roce" },
		["0x70041658"] = { icon = 0x41135B79, en = "Recuperate", de = "Erholen", fr = "R\195\169cup\195\169ration" },
		["0x7004164E"] = { icon = 0x4112AC0F, en = "Slash", de = "Schneiden", fr = "Coup tranchant" },
		["0x70041974"] = { icon = 0x41135D2B, en = "Sixth Sense", de = "Sechster Sinn", fr = "Sixi\195\168me sens" },

		-- Light
		["0x7004257E"] = { icon = 0x411294D5, en = "Bolstering Cry", de = "Ermutigender Schrei", fr = "Cri encourageant" },
		["0x7004257D"] = { icon = 0x411294D8, en = "Feign Injury", de = "Verletzung vort\195\164uschen", fr = "Simulation de blessure" },	-- CHECK: Light/Red
		["0x7004257C"] = { icon = 0x411294D6, en = "Invigorate", de = "Beleben", fr = "Stimulation" },

		-- Medium
		["0x700425A9"] = { icon = 0x411294D7, en = "Dash", de = "Spurt", fr = "Course folle" },												-- CHECK: Medium/Yellow
		["0x7004257F"] = { icon = 0x4112BD67, en = "Sacrifice", de = "Aufopferung", fr = "Sacrifice" },										-- CHECK: Medium/Blue

		-- Heavy
		["0x700425AA"] = { icon = 0x411294D7, en = "Dash", de = "Spurt", fr = "Course folle" },
		["0x70042577"] = { icon = 0x4112BD6D, en = "Instigate", de = "Aufhetzen", fr = "Incitation" },										-- CHECK: Heavy/Red
		["0x70042578"] = { icon = 0x4112BD6F, en = "Positive Thinking", de = "Positiv denken", fr = "Pens\195\169es positives" },			-- CHECK: Heavy/Blue
		["0x7004257A"] = { icon = 0x4112FA39, en = "Ride for Ruin", de = "H\195\182llenritt", fr = "Course vers la destruction" },			-- CHECK: Heavy/Red
		["0x70042579"] = { icon = 0x4112BD6B, en = "Steel Skin", de = "Stahlhaut", fr = "Peau d'acier" },									-- CHECK: Heavy/Blue
		["0x7004257B"] = { icon = 0x4112BD65, en = "Trample", de = "Niedertrampeln", fr = "Pi\195\169tinement" }							-- CHECK: Heavy/Red
	},

	[Turbine.Gameplay.Class.Burglar] = {
		["0x7000FB73"] = { icon = 0x410E9EFB, en = "A Small Snag", de = "Ein kleiner Schnitt", fr = "Petit accrochage" },
		["0x70003F0E"] = { icon = 0x4100883C, en = "Addle", de = "Tumult", fr = "Embrouillement" },													-- CHECK: Level 14 - 47
		["0x700031E1"] = { icon = 0x410055A7, en = "Aim", de = "Zielen", fr = "Vis\195\169e" },
		["0x700345EA"] = { icon = 0x41139ECA, en = "All In", de = "Alles auf eine Karte", fr = "Le tout pour le tout" },
		["0x70032F7C"] = { icon = 0x41139EC9, en = "Blind Bet", de = "Blind-Einsatz", fr = "Pari \195\160 l'aveugle" },
		["0x7001F4A4"] = { icon = 0x41102173, en = "Burglar's Antidote", de = "Schurken-Gegengift", fr = "Antidote du cambrioleur" },
		["0x70003F16"] = { icon = 0x41008843, en = "Burgle", de = "Stehlen", fr = "Vol \195\160 la tire" },
		["0x70034604"] = { icon = 0x41139ECB, en = "Cash Out", de = "Auszahlung", fr = "Empocher ses gains" },
		["0x7000FDC7"] = { icon = 0x410DA94A, en = "Clever Retort", de = "Schlaue Erwiderung", fr = "Don de r\195\169partie" },
		["0x7000D442"] = { icon = 0x410DA93E, en = "Contact Pedlar", de = "H\195\164ndler rufen", fr = "Appel au colporteur" },
		["0x70034963"] = { icon = 0x41139ECE, en = "Coup De Gr\195\162ce", de = "Gnadensto\195\159", fr = "Coup final" },
		["0x70003F09"] = { icon = 0x410056C5, en = "Cunning Attack", de = "T\195\164uschender Angriff", fr = "Attaque sournoise" },
		["0x70003F17"] = { icon = 0x41008844, en = "Cure Poison", de = "Gift neutralisieren", fr = "Gu\195\169rison de poison" },					-- CHECK: Level 16 - 25
		["0x700031F5"] = { icon = 0x410056D2, en = "Diversion", de = "Ablenkung", fr = "Diversion" },
		["0x70003F0C"] = { icon = 0x4100883A, en = "Double-edged Strike", de = "Zweischneidiger Schlag", fr = "Frappe \195\160 double tranchant" },
		["0x70003F0D"] = { icon = 0x4100883B, en = "Exploit Opening", de = "M\195\182glichkeit ausnutzen", fr = "Exploitation d'ouverture" },
		["0x70000F80"] = { icon = 0x4100319F, en = "Exposed Throat", de = "Ungesch\195\188tzte Kehle", fr = "Gorge expos\195\169e" },
		["0x7000FB71"] = { icon = 0x410E9EF8, en = "Feint Attack", de = "Scheinangriff", fr = "Attaque feinte" },
		["0x70003F14"] = { icon = 0x41008841, en = "Find Footing", de = "Halt finden", fr = "Equilibre" },
		["0x70000F5D"] = { icon = 0x41003198, en = "Flashing Blades", de = "Blitzende Klingen", fr = "Lames \195\169clatantes" },
		["0x70003F0B"] = { icon = 0x41139EC7, en = "Gambler's Advantage", de = "Vorteil des Spielers", fr = "Avantage du parieur" },
		["0x70032F7D"] = { icon = 0x41139ED5, en = "Hedge Your Bet", de = "Auf Nummer sicher gehen", fr = "Couverture des risques" },
		["0x7000320D"] = { icon = 0x410056DA, en = "Hide in Plain Sight", de = "In Luft aufl\195\182sen", fr = "Camouflage" },						-- CHECK: Level 30 - 53
		["0x7003038F"] = { icon = 0x4100883C, en = "Improved Addle", de = "Verbesserter Tumult", fr = "Embrouillement am\195\169lior\195\169" },
		["0x70015A02"] = { icon = 0x410056DA, en = "Improved Hide in Plain Sight", de = "Verbesserung von \"In Luft aufl\195\182sen\"", fr = "Camouflage am\195\169lior\195\169" },
		["0x70028385"] = { icon = 0x411167D8, en = "Improved Riddle", de = "Verbesserung: R\195\164tsel", fr = "Enigme am\195\169lior\195\169e" },
		["0x7000D444"] = { icon = 0x410DA943, en = "Knives Out", de = "Messerkampf", fr = "A couteaux tir\195\169s" },
		["0x7000FD86"] = { icon = 0x410E9EFC, en = "Lucky Strike", de = "Gl\195\188ckstreffer", fr = "Coup chanceux" },
		["0x70003F10"] = { icon = 0x4100883E, en = "Mischievous Glee", de = "B\195\182sartige Schadenfreude", fr = "Jubilation malicieuse" },
		["0x7000D446"] = { icon = 0x410DA945, en = "Practical Joke", de = "Streich", fr = "Farce" },
		["0x70003F0A"] = { icon = 0x41008837, en = "Provoke", de = "Provozieren", fr = "Provocation" },
		["0x7003A68C"] = { icon = 0x410EA43E, en = "Purge Corruption", de = "Verderbtheit austreiben", fr = "Purge de corruption" },
		["0x70003F12"] = { icon = 0x4100883F, en = "Ready and Able", de = "Bereit und bef\195\164higt", fr = "Pr\195\170t \195\160 l'action" },
		["0x70003F11"] = { icon = 0x41000084, en = "Reveal Weakness", de = "Schw\195\164chen aufsp\195\188ren", fr = "R\195\169v\195\169lation de faiblesse" },
		["0x700031D8"] = { icon = 0x410056C9, en = "Riddle", de = "R\195\164tsel", fr = "Enigme" },													-- CHECK: Level 8 - 65
		["0x7002613D"] = { icon = 0x4111079A, en = "Safe Fall", de = "Sicherer Fall", fr = "Chute sans danger" },
		["0x7000D448"] = { icon = 0x410DA947, en = "Share The Fun", de = "Geteilter Spa\195\159", fr = "Amusement partag\195\169" },
		["0x70003212"] = { icon = 0x410056DB, en = "Sneak", de = "Heimlichkeit", fr = "Dissimulation" },
		["0x70015A04"] = { icon = 0x411167DD, en = "Startling Twist", de = "\195\156berraschende Wende", fr = "Manœuvre saisissante" },
		["0x7003611C"] = { icon = 0x41139ED3, en = "Stun Dust", de = "Bet\195\164ubungsstaub", fr = "Poussi\195\168re \195\169tourdissante" },
		["0x700031D3"] = { icon = 0x410056C7, en = "Subtle Stab", de = "Raffinierter Stich", fr = "Subtilit\195\169 du poignard" },
		["0x70003F08"] = { icon = 0x41008836, en = "Surprise Strike", de = "\195\156berraschungs-\nschlag", fr = "Attaque par surprise" },
		["0x70003F13"] = { icon = 0x41008840, en = "Touch and Go", de = "Gewandtheit", fr = "Sur un fil" },
		["0x70003F15"] = { icon = 0x41008842, en = "Track Treasure", de = "Schatz aufsp\195\188ren", fr = "D\195\169tection de tr\195\169sor" },
		["0x70003F07"] = { icon = 0x41008834, en = "Trip", de = "Zu Fall bringen", fr = "Croc-en-jambe" },
		["0x70003200"] = { icon = 0x410056D7, en = "Trick: Counter Defence", de = "Trick: Abwehr reduzieren", fr = "Tour\194\160: contre-d\195\169fense" },
		["0x700031FA"] = { icon = 0x410056D5, en = "Trick: Disable", de = "Trick: Behindern", fr = "Tour\194\160: incapacit\195\169" },
		["0x700031EC"] = { icon = 0x410056CF, en = "Trick: Dust in the Eyes", de = "Trick: Staub in die Augen", fr = "Tour\194\160:\npoussi\195\168re dans les yeux" },
		["0x70003218"] = { icon = 0x41000C96, en = "Trick: Enrage", de = "Trick: Erz\195\188rnt", fr = "Tour\194\160: emportement" },
		["0x7003611B"] = { icon = 0x41139ED2, en = "Trickster", de = "Blender", fr = "Illusionniste" },

		["0x7002FDE2"] = { icon = 0x4112B122, en = "All in the Wrist", de = "Aus dem Handgelenk", fr = "Tout est dans le poignet" },
		["0x70033C96"] = { icon = 0x41134A90, en = "Burglar's Treat", de = "Schurkengabe", fr = "Cadeau du cambrioleur" },
		["0x7002FDDD"] = { icon = 0x4112B109, en = "Discipline: Red Dawn", de = "Disziplin: Morgenr\195\182te", fr = "Discipline\194\160: Aube rouge" },
		["0x7002FDE1"] = { icon = 0x4112B10A, en = "Discipline: Riddermark", de = "Disziplin: Riddermark", fr = "Discipline\194\160: Riddermark" },
		["0x7002FDE4"] = { icon = 0x4112B10B, en = "Discipline: Rohirrim", de = "Disziplin: Rohirrim", fr = "Discipline\194\160: Rohirrim" },
		["0x7002FDD6"] = { icon = 0x4112B11E, en = "Jollification", de = "Ausgelassenheit", fr = "R\195\169jouissance" },
		["0x7002FDE5"] = { icon = 0x4112B111, en = "Keen Strike", de = "K\195\188hner Schlag", fr = "Frappe cinglante" },
		["0x7002FDD3"] = { icon = 0x4112B10E, en = "Ride By", de = "En Passant", fr = "En passant" },
		["0x70033B11"] = { icon = 0x411349DA, en = "Trick: Impugn Character", de = "Trick: Charakter herausfordern", fr = "Tour\194\160: Remise en question de personnage" },
		["0x7002FDD9"] = { icon = 0x4113083E, en = "Trick: Stratagem", de = "Trick: List", fr = "Tour\194\160: Stratag\195\168me" },
		["0x7002FDE6"] = { icon = 0x4112B10D, en = "Strategic Strike", de = "Strategischer Schlag", fr = "Frappe strat\195\169gique" }
	},

	[Turbine.Gameplay.Class.Captain] = {
		["0x70002F67"] = { icon = 0x41005613, en = "Battle-shout", de = "Kampfschrei", fr = "Cri de bataille" },
		["0x7000AD9A"] = { icon = 0x4109B53E, en = "Blade of Elendil", de = "Klinge Elendils", fr = "Lame d'Elendil" },					-- CHECK: Level 30 - 51
		["0x70037C54"] = { icon = 0x411429AF, en = "Blade-brother's Call", de = "Ruf des Schildbruders", fr = "Appel du fr\195\168re d'armes" },
		["0x7000FC78"] = { icon = 0x410E9A7D, en = "Call to Arms: Archer", de = "Rekrutierung: Sch\195\188tze", fr = "Appel aux armes\194\160:\nArcher" },
		["0x70002FAF"] = { icon = 0x4100563C, en = "Call to Arms: Herald of Hope", de = "Rekrut.: Hoffnungsherold", fr = "Appel aux armes\194\160:\nH\195\169raut d'espoir" },
		["0x70002F1A"] = { icon = 0x41005607, en = "Call to Arms: Herald of Victory", de = "Rekrutierung: Siegesherold", fr = "Appel aux armes\194\160:\nH\195\169raut de victoire" },
		["0x70002F7A"] = { icon = 0x41005619, en = "Call to Arms: Herald of War", de = "Rekrutierung: Kriegsherold", fr = "Appel aux armes\194\160:\nH\195\169raut de guerre" },
		["0x7003A6A3"] = { icon = 0x410EA43E, en = "Cleanse Corruption", de = "Verderbtheit s\195\164ubern", fr = "Epuration de corruption" },
		["0x70003E5A"] = { icon = 0x410087BC, en = "Command Respect", de = "Befehl: Respekt", fr = "Commande le respect" },
		["0x70003E4C"] = { icon = 0x410087AF, en = "Cutting Attack", de = "Schneidiger Angriff", fr = "Attaque coupante" },				-- CHECK: Level 4 - 71
		["0x70002FCF"] = { icon = 0x4100563E, en = "Devastating Blow", de = "Zerst\195\182rerischer Schlag", fr = "Coup d\195\169vastateur" },
		["0x70002F45"] = { icon = 0x4100560B, en = "Escape from Darkness", de = "Flucht aus der Dunkelheit", fr = "Fuite des t\195\169n\195\168bres" },
		["0x7001F4C9"] = { icon = 0x4107E9F6, en = "Fighting Withdrawal", de = "R\195\188ckzug aus dem Kampf", fr = "Repli strat\195\169gique" },
		["0x70036FE2"] = { icon = 0x41140018, en = "Gallant Display", de = "Ritterliche Geste", fr = "Attitude h\195\169ro\195\175que" },
		["0x70028E4B"] = { icon = 0x411167EE, en = "Grave Wound", de = "Ernsthafte Wunde", fr = "Blessure grave" },
		["0x70017D31"] = { icon = 0x4109B53E, en = "Improved Blade of Elendil", de = "Verbesserte Klinge Elendils", fr = "Lame d'Elendil am\195\169lior\195\169e" },
		["0x70028FA5"] = { icon = 0x411167F7, en = "Improved Cutting Attack", de = "Verbesserung: Schneidiger Angriff", fr = "Attaque coupante am\195\169lior\195\169e" },
		["0x700385EE"] = { icon = 0x410087B4, en = "Improved Motivating Speech", de = "Verbesserte Motivierende Rede", fr = "Discours motivant am\195\169lior\195\169" },
		["0x70028DB4"] = { icon = 0x411167ED, en = "Improved Sure Strike", de = "Verbesserung: Sicherer Schlag", fr = "Frappe certaine am\195\169lior\195\169e" },
		["0x7002F88D"] = { icon = 0x4112C2CE, en = "Inspiriting Call", de = "Mut machender Ruf", fr = "Appel stimulant" },
		["0x70003E58"] = { icon = 0x41157A95, en = "In Harm's Way", de = "In den Weg werfen", fr = "Au cœur du danger" },
		["0x7000A1D7"] = { icon = 0x4107E9F1, en = "Inspire (Shield-brother)", de = "Inspirieren", fr = "Inspiration" },
		["0x7000AA0E"] = { icon = 0x4107E9F4, en = "Kick", de = "Treten", fr = "Coup de pied" },
		["0x70003E54"] = { icon = 0x41003796, en = "Last Stand", de = "Letztes Gefecht", fr = "Dernier combat" },
		["0x70003E4E"] = { icon = 0x4100371F, en = "Make Haste", de = "Beeilung", fr = "Rapidit\195\169" },
		["0x70003E52"] = { icon = 0x410087B4, en = "Motivating Speech", de = "Motivierende Rede", fr = "Discours motivant" },			-- CHECK: Level: 16 - 45
		["0x70002F99"] = { icon = 0x4100561C, en = "Muster Courage", de = "Mut fassen", fr = "Rassemblement de courage" },
		["0x70003E4F"] = { icon = 0x411429BD, en = "Noble Mark", de = "Edles Zeichen", fr = "Marque de noblesse" },
		["0x70001306"] = { icon = 0x41003722, en = "Oathbreaker's Shame", de = "Eidbrechers Schande", fr = "Honte du parjure" },
		["0x70003E50"] = { icon = 0x410087B2, en = "Pressing Attack", de = "Doppelschlag", fr = "Attaque pressante" },
		["0x70002F4F"] = { icon = 0x41005609, en = "Rallying Cry", de = "Schlachtruf", fr = "Cri de ralliement" },
		["0x70036A39"] = { icon = 0x41140019, en = "Reform the Lines!", de = "Formiert die Reihen!", fr = "Reformez les rangs\194\160!" },
		["0x70003E56"] = { icon = 0x411428F8, en = "Revealing Mark", de = "Zeichen setzen", fr = "Marque r\195\169v\195\169latrice" },
		["0x70002F61"] = { icon = 0x41005611, en = "Routing Cry", de = "Spottruf", fr = "Cri de d\195\169route" },
		["0x7000FF8B"] = { icon = 0x410E9A7E, en = "Shadow's Lament", de = "Klage des Schattens", fr = "Lamentation de l'Ombre" },
		["0x70037C34"] = { icon = 0x411406A2, en = "Shield-brother's Call", de = "Ruf des Schildbruders", fr = "Appel du fr\195\168re de bouclier" },
		["0x700012F9"] = { icon = 0x41157A96, en = "Shield of the D\195\186nedain", de = "Schild der D\195\186nedain", fr = "Bouclier des Dunedain" },
		["0x70037C5A"] = { icon = 0x4114069D, en = "Song-brother's Call", de = "Ruf des Liedbruders", fr = "Appel du fr\195\168re de chants" },
		["0x700369B8"] = { icon = 0x4114001C, en = "Standard of Honour", de = "Standarte der Ehre", fr = "Etendard d'honneur" },
		["0x700369B9"] = { icon = 0x4114001A, en = "Standard of Valour", de = "Standarte der Tapferkeit", fr = "Etendard de bravoure" },
		["0x700369B7"] = { icon = 0x4114001B, en = "Standard of War", de = "Standarte des Krieges", fr = "Etendard de guerre" },
		["0x70036A22"] = { icon = 0x4114001D, en = "Strength in Numbers", de = "St\195\164rke durch \195\156berzahl", fr = "L'union fait la force" },
		["0x700215CF"] = { icon = 0x41105E9A, en = "Sure Strike", de = "Sicherer Schlag", fr = "Frappe certaine" },						-- CHECK: Level 1 - 65
		["0x70003E4D"] = { icon = 0x4100568C, en = "Telling Mark", de = "Verr\195\164terisches Zeichen", fr = "Marque efficace" },
		["0x70002FD5"] = { icon = 0x41005640, en = "Threatening Shout", de = "Drohruf", fr = "Cri de menace" },
		["0x7000AA12"] = { icon = 0x4107E9F8, en = "Time of Need", de = "Gro\195\159e Verzweiflung", fr = "N\195\169cessit\195\169 fait loi" },
		["0x7000AA0D"] = { icon = 0x411167F5, en = "To Arms (Shield-brother)", de = "Zu den Waffen (Schildbruder)", fr = "Aux-armes\194\160!" },
		["0x7002F312"] = { icon = 0x410E68E8, en = "Valiant Strike", de = "Tapferer Schlag", fr = "Coup vaillant" },
		["0x70020DF6"] = { icon = 0x41104588, en = "Watchful Shield-brother", de = "Wachsamer Schildbruder", fr = "Fr\195\168re de bouclier vigilant" },
		["0x7000AA10"] = { icon = 0x4107E9F6, en = "Withdraw", de = "Zur\195\188ckziehen", fr = "Repli" },								-- CHECK: Level 12 - 61
		["0x70003E51"] = { icon = 0x410087B3, en = "Words of Courage", de = "Worte der Ermutigung", fr = "Paroles de courage" },

		["0x700343A7"] = { icon = 0x41135A14, en = "Command", de = "Befehl", fr = "Commandement" },
		["0x7002FCE2"] = { icon = 0x4112AC11, en = "Cry Havoc", de = "Schlachtschrei", fr = "Cri de ravage" },
		["0x7003431A"] = { icon = 0x41135B80, en = "Cry Vengeance", de = "Schrei nach Rache", fr = "Cri de vengeance" },
		["0x7002FCD1"] = { icon = 0x4112AC07, en = "Cry Wrath", de = "Zornesschrei", fr = "Cri de rage" },
		["0x7002FCE0"] = { icon = 0x4112AC32, en = "Discipline: Red Dawn", de = "Disziplin: Morgenr\195\182te", fr = "Discipline\194\160: Aube rouge" },
		["0x7002FCE1"] = { icon = 0x4112AC31, en = "Discipline: Riddermark", de = "Disziplin: Riddermark", fr = "Discipline\194\160: Riddermark" },
		["0x7002FCDC"] = { icon = 0x4112AC33, en = "Discipline: Rohirrim", de = "Disziplin: Rohirrim", fr = "Discipline\194\160: Rohirrim" },
		["0x7002FCDF"] = { icon = 0x4112B107, en = "Measured Attack", de = "Bed\195\164chtiger Angriff", fr = "Attaque mesur\195\169e" },
		["0x70034BDA"] = { icon = 0x41135D2B, en = "Motivation", de = "Motivation", fr = "Motivation" },
		["0x7002FCDD"] = { icon = 0x4112AC16, en = "Oppressive Blow", de = "Erdr\195\188ckender Schlag", fr = "Coup oppressant" },
		["0x7002FCD2"] = { icon = 0x4112AC14, en = "Rally the Riders", de = "Reiter zu den Waffen", fr = "Ralliement des cavaliers" },
		["0x7002FCD5"] = { icon = 0x4112AC0D, en = "Rider and Steed", de = "Ross und Reiter", fr = "Cavalier et monture" }
	},

	[Turbine.Gameplay.Class.Champion] = {
		["0x7000F70B"] = { icon = 0x410E5A31, en = "Adamant", de = "Felsenfest", fr = "Adamantite" },
		["0x70003043"] = { icon = 0x41139EFC, en = "Battle Frenzy", de = "Kampfrausch", fr = "Fr\195\169n\195\169sie guerri\195\168re" },
		["0x70003E03"] = { icon = 0x4100879C, en = "Blade Storm", de = "Klingensturm", fr = "D\195\169luge de lames" },
		["0x70003DFD"] = { icon = 0x41008798, en = "Blade Wall", de = "Klingenwand", fr = "Mur de lames" },
		["0x7000F70E"] = { icon = 0x410E5A30, en = "Blood Rage", de = "Blutdurst", fr = "Rage sanguinaire" },
		["0x70003E15"] = { icon = 0x410087A8, en = "Boast", de = "Prahlerei", fr = "Vantardise" },
		["0x70036AC1"] = { icon = 0x41140156, en = "Born For Combat", de = "F\195\188r den Kampf geboren", fr = "Combattant-n\195\169" },
		["0x70003E04"] = { icon = 0x41139EDF, en = "Bracing Attack", de = "St\195\164rkender Angriff", fr = "Attaque fortifiante" },
		["0x70003E01"] = { icon = 0x4100879A, en = "Brutal Strikes", de = "Brutale Schl\195\164ge", fr = "Attaques brutales" },
		["0x70003E08"] = { icon = 0x410087A0, en = "Champion's Challenge", de = "Herausforderung des Waffenmeisters", fr = "D\195\169fi du champion" },
		["0x70036767"] = { icon = 0x41139EDB, en = "Champion's Duel", de = "Duell des Waffenmeisters", fr = "Duel du champion" },
		["0x70003E0C"] = { icon = 0x410087A3, en = "Clobber", de = "Pr\195\188gel", fr = "Assommoir" },
		["0x70002DB5"] = { icon = 0x41139EF6, en = "Controlled Burn", de = "Kontrolliertes Verbrennen", fr = "Br\195\187lure contr\195\180l\195\169e" },
		["0x70036AA2"] = { icon = 0x41139EFB, en = "Devastating Strike", de = "Verheerender Schlag", fr = "Coup d\195\169vastateur" },
		["0x70003047"] = { icon = 0x41005653, en = "Dire Need", de = "Verzweiflung", fr = "Besoin imp\195\169rieux" },
		["0x70009E5B"] = { icon = 0x4101FBA6, en = "Ebbing Ire", de = "Zorn verkleinern", fr = "Col\195\168re att\195\169nu\195\169e" },		-- CHECK: Red (6)
		["0x70003E02"] = { icon = 0x4100879B, en = "Exchange of Blows", de = "Schlagabtausch", fr = "Echange de coups" },
		["0x70021D27"] = { icon = 0x41105E9B, en = "Fear Nothing!", de = "Keine Furcht!", fr = "Peur de rien" },
		["0x7003B445"] = { icon = 0x410F3589, en = "Feral Strikes", de = "Barbarische Schl\195\164ge", fr = "Attaques sauvages" },
		["0x70002D8D"] = { icon = 0x41139EE6, en = "Ferocious Strikes", de = "Grimmige Schl\195\164ge", fr = "Coups f\195\169roces" },
		["0x70002D9D"] = { icon = 0x410050B3, en = "Fight On", de = "Weiterk\195\164mpfen", fr = "Pers\195\169v\195\169rance" },
		["0x70036747"] = { icon = 0x41140137, en = "Fury of Blades", de = "Zorn der Klingen", fr = "Tourbillon de lames" },
		["0x7000F70C"] = { icon = 0x41139F02, en = "Great Cleave", de = "Gro\195\159es Spalten", fr = "Puissant coup de tranchoir" },
		["0x70003E0E"] = { icon = 0x410087A5, en = "Hamstring", de = "Achillessehne", fr = "Coup aux jarrets" },
		["0x7002FC30"] = { icon = 0x4112B2F3, en = "Horn of Champions", de = "Horn der Waffenmeister", fr = "Cor des champions" },
		["0x70003E0D"] = { icon = 0x410087A4, en = "Horn of Gondor", de = "Sturmangriff", fr = "Cor du Gondor" },
		["0x70003E14"] = { icon = 0x410087A7, en = "Let Fly", de = "Abschie\195\159en", fr = "Tirer" },
		["0x70003E09"] = { icon = 0x410087A1, en = "Merciful Strike", de = "Barmherziger Schlag", fr = "Frappe mis\195\169ricordieuse" },
		["0x70002DA9"] = { icon = 0x41139F0B, en = "Raging Blade", de = "Rasende Klinge", fr = "Lame d\195\169cha\195\174n\195\169e" },
		["0x7001F4B3"] = { icon = 0x4100879F, en = "Remorseless Strike", de = "Erbarmungs-\nloser Schlag", fr = "Coup impitoyable" },
		["0x7000F660"] = { icon = 0x410E5A2F, en = "Rend", de = "Zerrei\195\159en", fr = "D\195\169chirement" },
		["0x7003B43E"] = { icon = 0x41139F0C, en = "Riposte", de = "Gegenschlag", fr = "Contre-offensive" },
		["0x70003DFE"] = { icon = 0x41008799, en = "Savage Strikes", de = "Wilde Schl\195\164ge", fr = "Coups sauvages" },						-- CHECK: Level 2 - 49
		["0x7000D47A"] = { icon = 0x410DD3A6, en = "Second Wind", de = "Atempause", fr = "Second souffle" },
		["0x70003E0B"] = { icon = 0x410087A2, en = "Sprint", de = "Sprint", fr = "Sprint" },
		["0x70003E06"] = { icon = 0x4100879E, en = "Sudden Defence", de = "Pl\195\182tzliche Verteidigung", fr = "D\195\169fense soudaine" },
		["0x7000300F"] = { icon = 0x41005645, en = "Swift Strike", de = "Schneller Schlag", fr = "Attaque rapide" },
		["0x70020DF3"] = { icon = 0x41104589, en = "True Heroics", de = "Wahre Heldentaten", fr = "Grands actes d'h\195\169ro\195\175sme" },
		["0x7003771A"] = { icon = 0x41139F05, en = "Unbreakable", de = "Unverw\195\188stlich", fr = "Indomptable" },
		["0x70036777"] = { icon = 0x41139F05, en = "Unbreakable", de = "Unverw\195\188stlich", fr = "Indomptable" },
		["0x70003DFC"] = { icon = 0x41008797, en = "Wild Attack", de = "Wilder Angriff", fr = "Attaque sauvage" },

		["0x70034681"] = { icon = 0x411359FF, en = "Crippling Shot", de = "L\195\164hmender Schuss", fr = "Coup invalidant" },
		["0x7002EFFD"] = { icon = 0x41129E7E, en = "Destabilizing Strike", de = "Destabilisierender Schlag", fr = "Coup d\195\169stabilisant" },
		["0x7002EFF8"] = { icon = 0x41129E83, en = "Discipline: Red Dawn", de = "Disziplin: Morgenr\195\182te", fr = "Discipline\194\160: Aube rouge" },
		["0x7002EFF9"] = { icon = 0x41129E87, en = "Discipline: Riddermark", de = "Disziplin: Riddermark", fr = "Discipline\194\160: Riddermark" },
		["0x7002F001"] = { icon = 0x41129E8A, en = "Discipline: Rohirrim", de = "Disziplin: Rohirrim", fr = "Discipline\194\160: Rohirrim" },
		["0x7002EFFF"] = { icon = 0x41129E81, en = "Horn Blast", de = "Hornsignal", fr = "Souffle du cor" },
		["0x7002EFF7"] = { icon = 0x41129E88, en = "Mounted Strike", de = "Berittener Schlag", fr = "Frappe mont\195\169e" },
		["0x7002EFFA"] = { icon = 0x41129E86, en = "Recuperate", de = "Erholen", fr = "R\195\169cup\195\169ration" },
		["0x7003485C"] = { icon = 0x41135A00, en = "Strength of Champions", de = "St\195\164rke der Waffenmeister", fr = "Force des champions" },
		["0x7002EFFE"] = { icon = 0x41129E89, en = "Sundering Blow", de = "Spaltender Schlag", fr = "Coup destructeur" },
		["0x7002EFFC"] = { icon = 0x41129E82, en = "Swift Cut", de = "Schneller Schnitt", fr = "Entaille preste" }
	},

	[Turbine.Gameplay.Class.Guardian] = {
		["0x70003EE1"] = { icon = 0x4100882A, en = "Bash", de = "Heftiger Schlag", fr = "Coup violent" },
		["0x7000F158"] = { icon = 0x410E32F2, en = "Brutal Assault", de = "Brutaler Angriff", fr = "Assaut brutal" },
		["0x70036948"] = { icon = 0x4113A035, en = "Cataclysmic Shout", de = "Verheerender Schrei", fr = "Cri cataclysmique" },
		["0x7000307D"] = { icon = 0x41005670, en = "Catch a Breath", de = "Luft holen", fr = "Reprise de souffle" },
		["0x70003097"] = { icon = 0x41000C98, en = "Challenge", de = "Herausforderung", fr = "D\195\169fi" },
		["0x7000DD14"] = { icon = 0x41140025, en = "Charge", de = "Angriff", fr = "Charge" },
		["0x7000D4B2"] = { icon = 0x410DAEF1, en = "Engage", de = "Feindkontakt", fr = "Engagement" },
		["0x7000D4B0"] = { icon = 0x410DAEEE, en = "Force Opening", de = "L\195\188cke erzwingen", fr = "Ouverture forc\195\169e" },
		["0x7000D4B5"] = { icon = 0x410DAEEF, en = "Fray the Edge", de = "Schartige Schneide", fr = "Effondrement" },
		["0x700030A4"] = { icon = 0x4113A05E, en = "Guardian's Pledge", de = "Gel\195\182bnis des W\195\164chters", fr = "Serment de gardien" },
		["0x70003EE9"] = { icon = 0x41019E93, en = "Guardian's Promise", de = "Versprechen des W\195\164chters", fr = "Promesse du gardien" },
		["0x70003066"] = { icon = 0x41005477, en = "Guardian's Ward", de = "W\195\164chterschild", fr = "Protection de gardien" },
		["0x70036944"] = { icon = 0x4113A071, en = "Hammer Down", de = "Einschlagen", fr = "Coup de marteau" },
		["0x70021663"] = { icon = 0x41105E9C, en = "Ignore the Pain", de = "Schmerzen ignorieren", fr = "Disparition de la douleur" },
		["0x70036946"] = { icon = 0x4113A073, en = "Juggernaut", de = "Moloch", fr = "Mastodonte" },
		["0x70003E14"] = { icon = 0x410087A7, en = "Let Fly", de = "Abschie\195\159en", fr = "Tirer" },
		["0x7000F095"] = { icon = 0x410E205A, en = "Litany of Defiance", de = "Litanei des Trotzes", fr = "Litanie de d\195\169fi" },
		["0x70003EE2"] = { icon = 0x4113A082, en = "Overwhelm", de = "\195\156bermannen", fr = "D\195\169ferlement" },
		["0x7000309A"] = { icon = 0x41005678, en = "Protection", de = "Schutz", fr = "Protection" },
		["0x7000309C"] = { icon = 0x4111735D, en = "Protection by the Sword", de = "Schutz durch das Schwert", fr = "Protection par l'\195\169p\195\169e" },
		["0x70036945"] = { icon = 0x4113A074, en = "Redirect", de = "Umlenken", fr = "Redirection" },
		["0x70003EE0"] = { icon = 0x41008828, en = "Retaliation", de = "Vergeltung", fr = "Riposte" },
		["0x7000D4AE"] = { icon = 0x410DAEF3, en = "Shield Wall", de = "Schildwall", fr = "Mur de boucliers" },
		["0x7000306F"] = { icon = 0x4100566E, en = "Shield-blow", de = "Schildschlag", fr = "Coup de bouclier" },
		["0x70002EC4"] = { icon = 0x41005472, en = "Shield-smash", de = "Schildhieb", fr = "Ecrasement au bouclier" },
		["0x7000305D"] = { icon = 0x4100566A, en = "Shield-swipe", de = "Schildstreich", fr = "Balayage au bouclier" },
		["0x70003EE6"] = { icon = 0x41008831, en = "Shield-taunt", de = "Schildspott", fr = "Provocation au bouclier" },
		["0x70036DCD"] = { icon = 0x4113A03F, en = "Smashing Stab", de = "Zerschmetternder Sto\195\159", fr = "Coup plongeant" },
		["0x7000D4B3"] = { icon = 0x410DAEEC, en = "Stagger", de = "Ins Wanken bringen", fr = "Titubement" },
		["0x70003EE7"] = { icon = 0x41008832, en = "Stamp", de = "Stampfen", fr = "Marque" },
		["0x70003058"] = { icon = 0x41005668, en = "Sting", de = "Stechen", fr = "Aiguillon" },		-- CHECK: Level 1 - 49
		["0x7000F1E1"] = { icon = 0x41005668, en = "Sting", de = "Stechen", fr = "Aiguillon" },		-- Level 50
		["0x70003EDE"] = { icon = 0x41008825, en = "Sweeping Cut", de = "Fegender Schnitt", fr = "Grand coup de taille" },
		["0x7000ED87"] = { icon = 0x410E1665, en = "Take to Heart", de = "Zu Herzen nehmen", fr = "Prendre \195\160 cœur" },
		["0x700030B4"] = { icon = 0x41005680, en = "Thrill of Danger", de = "Nervenkitzel der Gefahr", fr = "Go\195\187t du danger" },
		["0x70003EE5"] = { icon = 0x4100882F, en = "Thrust", de = "Sto\195\159", fr = "Fente" },
		["0x70002EA5"] = { icon = 0x4113A080, en = "To the King", de = "F\195\188r den K\195\182nig", fr = "Au roi" },
		["0x70003EE8"] = { icon = 0x41008833, en = "Turn the Tables", de = "Spie\195\159 umdrehen", fr = "Chacun son tour" },
		["0x7000308D"] = { icon = 0x41005673, en = "Vexing Blow", de = "Irritierender Schlag", fr = "Coup contrariant" },
		["0x70036947"] = { icon = 0x4113A07E, en = "War-chant", de = "Kriegsgesang", fr = "Chant de guerre" },
		["0x700030AC"] = { icon = 0x4100567E, en = "Warrior's Heart", de = "Kriegerherz", fr = "Cœur de guerrier" },
		["0x70003EE4"] = { icon = 0x4100882E, en = "Whirling Retaliation", de = "Wirbelnde Vergeltung", fr = "Riposte tourbillonnante" },

		["0x700346EC"] = { icon = 0x41135A16, en = "By The Right Flank", de = "An der rechten Flanke", fr = "Par le flanc droit" },
		["0x7002F508"] = { icon = 0x4112A710, en = "Clash of Arms", de = "Waffenrasseln", fr = "Fracas des armes" },
		["0x7002F50C"] = { icon = 0x4112A70F, en = "Discipline: Red Dawn", de = "Disziplin: Morgenr\195\182te", fr = "Discipline\194\160: Aube rouge" },
		["0x7002F50D"] = { icon = 0x4112A713, en = "Discipline: Riddermark", de = "Disziplin: Riddermark", fr = "Discipline\194\160: Riddermark" },
		["0x7002F50A"] = { icon = 0x4112A712, en = "Discipline: Rohirrim", de = "Disziplin: Rohirrim", fr = "Discipline\194\160: Rohirrim" },
		["0x7002F50E"] = { icon = 0x4112A715, en = "Driving Slash", de = "Wuchtiger Schlag", fr = "Coup cinglant" },
		["0x70034708"] = { icon = 0x41135B81, en = "Goading Strike", de = "Anstachelnder Schlag", fr = "Frappe provocante" },
		["0x7003463A"] = { icon = 0x41135B79, en = "Pledge of Protection", de = "Schutzgel\195\182bnis", fr = "Serment de protection" },
		["0x7002F507"] = { icon = 0x4112A711, en = "Pledge to Rohan", de = "Treueschwur auf Rohan", fr = "Promesse au Rohan" },
		["0x7002F510"] = { icon = 0x4112A717, en = "Rohan's Edge", de = "Rohans Schneide", fr = "Tranchant du Rohan" },
		["0x7002F50B"] = { icon = 0x4112A716, en = "Serrated Edge", de = "Gezackte Klinge", fr = "Lame en dents de scie" },
		["0x7002F509"] = { icon = 0x4112A70E, en = "Staggering Slash", de = "Benebelnder Schlag", fr = "Coup affaiblissant" }
	},

	[Turbine.Gameplay.Class.Hunter] = {
		["0x70003F33"] = { icon = 0x41008830, en = "Barbed Arrow", de = "Stachelpfeil", fr = "Fl\195\168che barbel\195\169e" },
		["0x700010D3"] = { icon = 0x41003325, en = "Bard's Arrow", de = "Bards Pfeil", fr = "Fl\195\168che de Bard" },
		["0x7003646E"] = { icon = 0x41140039, en = "Barrage", de = "Sperrfeuer", fr = "Barrage" },
		["0x700030EC"] = { icon = 0x41005690, en = "Beneath Notice", de = "Unscheinbar", fr = "Insignifiance" },									-- CHECK: Level 38 - 63
		["0x70003F3B"] = { icon = 0x41008856, en = "Blindside", de = "Schwache Seite", fr = "Angle mort" },
		["0x70021D0D"] = { icon = 0x41105E9D, en = "Blood Arrow", de = "Blutpfeil", fr = "Fl\195\168che de sang" },
		["0x70003F3F"] = { icon = 0x4100885A, en = "Bright Campfire", de = "Helles Lagerfeuer", fr = "Grand feu de camp" },
		["0x7000F835"] = { icon = 0x410E4DDA, en = "Burn Hot", de = "Hei\195\159e Flamme", fr = "Vive flamme" },
		["0x70003F48"] = { icon = 0x41008863, en = "Camouflage", de = "Tarnung", fr = "Camouflage" },
		["0x7003200C"] = { icon = 0x4112E6D0, en = "Cry of the Hunter", de = "Ruf des J\195\164gers", fr = "Cri du chasseur" },
		["0x70021D0E"] = { icon = 0x41105E9E, en = "Dazing Blow", de = "Bet\195\164ubender Schlag", fr = "Coup d'h\195\169b\195\168tement" },		-- CHECK: Level 48 - 51
		["0x70035CA7"] = { icon = 0x41140042, en = "Decoy", de = "K\195\182der", fr = "Leurre explosif" },
		["0x70003F40"] = { icon = 0x4100885B, en = "Desperate Flight", de = "Verzweifelte Flucht", fr = "Fuite \195\169perdue" },
		["0x7000F9AB"] = { icon = 0x410E57BF, en = "Distracting Shot", de = "Irritierender Schuss", fr = "Tir de distraction" },
		["0x70033AEA"] = { icon = 0x410E57C0, en = "Explosive Arrow", de = "Explosiver Pfeil", fr = "Fl\195\168che explosive" },
		["0x700364A9"] = { icon = 0x41139ECF, en = "Exsanguinate", de = "Ausbluten", fr = "Exsangue" },
		["0x70003F4C"] = { icon = 0x41008865, en = "Focus", de = "Fokus", fr = "Concentration" },													-- CHECK: Level 8 - 65
		["0x70003F3D"] = { icon = 0x41008858, en = "Find the Path", de = "Weg finden", fr = "Orientation" },
		["0x7000A2D3"] = { icon = 0x410D45BB, en = "Heart Seeker", de = "Herzsucher", fr = "Cherche-cœur" },
		["0x70020DF8"] = { icon = 0x4110458B, en = "Improved Beneath Notice", de = "Verbesserung: Unscheinbar", fr = "Insignifiance am\195\169lior\195\169e" },
		["0x70021D18"] = { icon = 0x41105E9E, en = "Improved Dazing Blow", de = "Verbesserter bet\195\164ubender Schlag", fr = "Coup d'h\195\169b\195\168tement am\195\169lior\195\169" },
		["0x70029854"] = { icon = 0x41008865, en = "Improved Focus", de = "Verbesserung: Fokus", fr = "Concentration am\195\169lior\195\169e" },
		["0x700153E5"] = { icon = 0x41008853, en = "Improved Merciful Shot", de = "Verbesserter Gnadenschuss", fr = "Tir mis\195\169ricordieux am\195\169lior\195\169" },
		["0x7002984F"] = { icon = 0x4100884D, en = "Improved Penetrating Shot", de = "Verbesserter Durchdringender Schuss", fr = "Tir p\195\169n\195\169trant am\195\169lior\195\169" },
		["0x70029856"] = { icon = 0x41008845, en = "Improved Quick Shot", de = "Verbesserter Schneller Schuss", fr = "Tir rapide am\195\169lior\195\169" },
		["0x700153E2"] = { icon = 0x4100884A, en = "Improved Swift Bow", de = "Verbesserter Schneller Bogen", fr = "Arc rapide am\195\169lior\195\169" },
		["0x700030DE"] = { icon = 0x4100568B, en = "Intent Concentration", de = "Gespannte Konzentration", fr = "Concentration d\195\169lib\195\169r\195\169e" },
		["0x70035CC1"] = { icon = 0x41139EC8, en = "Lingering Wound", de = "Anhaltende Wunde", fr = "Blessure persistante" },
		["0x70003F39"] = { icon = 0x41008854, en = "Low Cut", de = "Niedriger Schnitt", fr = "Coup aux jambes" },
		["0x70003F37"] = { icon = 0x41008853, en = "Merciful Shot", de = "Gnadenschuss", fr = "Tir mis\195\169ricordieux" },						-- CHECK: Level 30 - 51
		["0x70003F46"] = { icon = 0x41008861, en = "Passage of Foes", de = "Passage der Feinde", fr = "Passage d'ennemis" },
		["0x70003F45"] = { icon = 0x41008860, en = "Passage of Nature", de = "Passage der Natur", fr = "Passage d'animal" },
		["0x70003F47"] = { icon = 0x41008862, en = "Passage of Shadow", de = "Passage des Schattens", fr = "Passage d'ombre" },
		["0x70003F35"] = { icon = 0x4100884D, en = "Penetrating Shot", de = "Durchdringender Schuss", fr = "Tir p\195\169n\195\169trant" },			-- CHECK: Level 1 - 67
		["0x70036497"] = { icon = 0x41139ECD, en = "Pinning Shot", de = "Festnagelnder Schuss", fr = "Tir de suppression" },
		["0x7000A6B1"] = { icon = 0x4114003B, en = "Piercing Trap", de = "Schneidende Falle", fr = "Pi\195\168ge per\195\167ant" },
		["0x70010004"] = { icon = 0x41003327, en = "Press Onward", de = "Weiter vorr\195\188cken", fr = "Toujours plus loin" },
		["0x70003F3E"] = { icon = 0x41008859, en = "Purge Poison", de = "Gift neutralisieren", fr = "Purge du poison" },
		["0x70003F32"] = { icon = 0x4112DEB3, en = "Quick Stop", de = "Schneller Halt", fr = "Arr\195\170t rapide" },
		["0x70003F36"] = { icon = 0x41008850, en = "Rain of Arrows", de = "Pfeilregen", fr = "Pluie de fl\195\168ches" },
		["0x700010F4"] = { icon = 0x41003329, en = "Rain of Thorns", de = "Dornenregen", fr = "Pluie d'\195\169pines" },
		["0x70036424"] = { icon = 0x41139ED1, en = "Rapid Fire", de = "Schnellfeuer", fr = "Tir nourri" },
		["0x70003F3A"] = { icon = 0x41008855, en = "Scourging Blow", de = "Gei\195\159elnder Hieb", fr = "Attaque punitive" },
		["0x700030BB"] = { icon = 0x41001431, en = "Set Trap", de = "Falle stellen", fr = "Pose de pi\195\168ge" },
		["0x700292DC"] = { icon = 0x41019E76, en = "Split Shot", de = "Spaltschuss", fr = "Tir multiple" },
		["0x70003F4F"] = { icon = 0x41008868, en = "Stance: Endurance", de = "Haltung: Ausdauer", fr = "Posture\194\160: endurance" },
		["0x70003F4D"] = { icon = 0x41008866, en = "Stance: Precision", de = "Haltung: Pr\195\164zision", fr = "Posture\194\160: pr\195\169cision" },
		["0x70003F4E"] = { icon = 0x41008867, en = "Stance: Strength", de = "Haltung: St\195\164rke", fr = "Posture\194\160: force" },
		["0x7000A2D4"] = { icon = 0x410D461C, en = "Strength of the Earth", de = "St\195\164rke der Erde", fr = "Force de la terre" },
		["0x70003F34"] = { icon = 0x4100884A, en = "Swift Bow", de = "Schneller Bogen", fr = "Arc rapide" },										-- CHECK: Level 10 - 53
		["0x70035F61"] = { icon = 0x41138611, en = "The One Trap", de = "Die Eine Falle", fr = "Le grand pi\195\168ge" },
		["0x70037DC8"] = { icon = 0x410D461D, en = "Tripwire", de = "Stolperdraht", fr = "Fil de d\195\169tente" },
		["0x70035F62"] = { icon = 0x41139ED6, en = "Upshot", de = "Steilschuss", fr = "D\195\169nouement" },

		["0x7003DC71"] = { icon = 0x41142BE9, en = "Guide to Aldburg", de = "F\195\188hrer nach Aldburg", fr = "Guide vers Aldburg" },
		["0x70003F42"] = { icon = 0x4100885D, en = "Guide to Bree", de = "F\195\188hrer nach Bree", fr = "Guide vers Bree" },
		["0x7002E754"] = { icon = 0x41128942, en = "Guide to Caras Galadhon", de = "F\195\188hrer nach Caras Galadhon", fr = "Guide vers Caras Galadhon" },
		["0x70041197"] = { icon = 0x411556DA, en = "Guide to Dol Amroth", de = "F\195\188hrer nach Dol Amroth", fr = "Guide vers Dol Amroth" },
		["0x7000A2C6"] = { icon = 0x410D45B4, en = "Guide to East Angmar", de = "F\195\188hrer nach Ost-Angmar", fr = "Guide vers l'est d'Angmar" },
		["0x70017C81"] = { icon = 0x410EE413, en = "Guide to Echad D\195\186nann", de = "F\195\188hrer nach Echad D\195\186nann", fr = "Guide vers Echad Dunann" },
		["0x70003F43"] = { icon = 0x4100885E, en = "Guide to Esteld\195\173n", de = "F\195\188hrer nach Esteld\195\173n", fr = "Guide vers Esteldin" },
		["0x7000A2C4"] = { icon = 0x410D45B8, en = "Guide to Evendim", de = "F\195\188hrer nach Evendim", fr = "Guide vers Evendim" },
		["0x70036B5D"] = { icon = 0x4113B6F8, en = "Guide to Forlaw", de = "F\195\188hrer nach Forlach", fr = "Guide vers Forloi" },
		["0x7002A93F"] = { icon = 0x4111B396, en = "Guide to Galtrev", de = "F\195\188hrer nach Galtrev", fr = "Guide pour Galtrev" },
		["0x700235EF"] = { icon = 0x4110AF3F, en = "Guide to Harndirion", de = "F\195\188hrer nach Harndirion", fr = "Guide vers Harndirion" },
		["0x7003DC72"] = { icon = 0x41142BE8, en = "Guide to Helm's Deep", de = "F\195\188hrer nach Helms Klamm", fr = "Guide vers le Gouffre de Helm" },
		["0x7000A2C3"] = { icon = 0x410D45BA, en = "Guide to Michel Delving", de = "F\195\188hrer nach Michelbinge", fr = "Guide vers Grand'Cave" },
		["0x7001F459"] = { icon = 0x4110C4BD, en = "Guide to Mirk-eaves", de = "F\195\188hrer zur Dunkelsenke", fr = "Guide vers l'Or\195\169e noire" },
		["0x7002E756"] = { icon = 0x41128941, en = "Guide to the Misty Mountains", de = "F\195\188hrer ins Nebelgebirge", fr = "Guide vers les Monts Brumeux" },
		["0x7000A2C2"] = { icon = 0x410D45B5, en = "Guide to Ost Guruth", de = "F\195\188hrer zur Feste Guruth", fr = "Guide vers Ost Guruth" },
		["0x70003F44"] = { icon = 0x4100885F, en = "Guide to Rivendell", de = "F\195\188hrer nach Bruchtal", fr = "Guide vers Fondcombe" },
		["0x7003198E"] = { icon = 0x4112DE9F, en = "Guide to Snowbourn", de = "F\195\188hrer nach Schneegrenze", fr = "Guide vers Neigebronne" },
		["0x7002C62C"] = { icon = 0x4111F79D, en = "Guide to Stangard", de = "F\195\188hrer nach Stangard", fr = "Guide vers Stangarde" },
		["0x70017C82"] = { icon = 0x410EE414, en = "Guide to S\195\187ri-kyl\195\164", de = "F\195\188hrer nach S\195\187ri-kyl\195\164", fr = "Guide vers S\195\187ri-kyl\195\164" },
		["0x70003F41"] = { icon = 0x4100885C, en = "Guide to Thorin's Hall", de = "F\195\188hrer zu Thorins Halle", fr = "Guide vers le Palais de Thorin" },
		["0x70017C7A"] = { icon = 0x410EE412, en = "Guide to the Twenty-first Hall", de = "F\195\188hrer zur Einundzwanzigsten Halle.", fr = "Guide vers la vingt et uni\195\168me salle" },
		["0x7000A2C5"] = { icon = 0x410D45B7, en = "Guide to West Angmar", de = "F\195\188hrer in das westliche Angmar", fr = "Guide vers l'ouest d'Angmar" },
		["0x7000A2C1"] = { icon = 0x410D45B9, en = "Return to Camp", de = "Zur\195\188ck zum Lager", fr = "Retour au campement" },

		["0x7002EB8C"] = { icon = 0x411297A6, en = "Discipline: Red Dawn", de = "Disziplin: Morgenr\195\182te", fr = "Discipline\194\160: Aube rouge" },
		["0x7002EB8A"] = { icon = 0x41129793, en = "Discipline: Riddermark", de = "Disziplin: Riddermark", fr = "Discipline\194\160: Riddermark" },
		["0x7002EB96"] = { icon = 0x4112979C, en = "Discipline: Rohirrim", de = "Disziplin: Rohirrim", fr = "Discipline\194\160: Rohirrim" },
		["0x7002EB9B"] = { icon = 0x411297A1, en = "Establishing Shot", de = "Auftaktschuss", fr = "Tir d\195\169terminant" },
		["0x700349EA"] = { icon = 0x4113592A, en = "Eyes of the Hunter", de = "Die Augen des J\195\164gers", fr = "Yeux du chasseur" },
		["0x7002EB91"] = { icon = 0x41129794, en = "Flay Open", de = "H\195\164uten", fr = "Ecorchure \195\160 vif" },
		["0x7002EB8B"] = { icon = 0x411297A4, en = "Kill Shot", de = "Todesschuss", fr = "Tir fatal" },
		["0x70034973"] = { icon = 0x4113592F, en = "Lay Trap", de = "Falle legen", fr = "Lancer de pi\195\168ge" },
		["0x7002EB87"] = { icon = 0x411297A3, en = "Noble Arrow", de = "Edler Pfeil", fr = "Noble fl\195\168che" },
		["0x7002EB89"] = { icon = 0x411297A0, en = "Seeking Arrow", de = "Suchender Pfeil", fr = "Fl\195\168che chercheuse" },
		["0x7002EB8F"] = { icon = 0x4112979A, en = "Spread of Arrows", de = "Pfeilschwarm", fr = "Faisceau de fl\195\168ches" }
	},

	[Turbine.Gameplay.Class.LoreMaster] = {
		["0x70020DF7"] = { icon = 0x4114ABC4, en = "Air-lore", de = "Luftkunde", fr = "Connaissance de l'air" },
		["0x7000B627"] = { icon = 0x410D6EA0, en = "Ancient Craft", de = "Uraltes Handwerk", fr = "Artisanat ancien" },
		["0x7000BFC2"] = { icon = 0x410D7598, en = "Back from the Brink", de = "Um Haaresbreite", fr = "In extremis" },
		["0x7000B60D"] = { icon = 0x410D6DD9, en = "Bane Flare", de = "Banngl\195\188hen", fr = "Eclat fatal" },
		["0x70003152"] = { icon = 0x410056A6, en = "Blinding Flash", de = "Blendender Blitzstrahl", fr = "Lumi\195\168re aveuglante" },
		["0x70003EB4"] = { icon = 0x410087DC, en = "Burning Embers", de = "Gl\195\188hende Asche", fr = "Braises ardentes" },										-- CHECK: Level 1 - 73
		["0x70003EC1"] = { icon = 0x4100881F, en = "Call to the Valar", de = "Appell an die Valar", fr = "Appel aux Valar" },
		["0x70038253"] = { icon = 0x41139EE9, en = "Catmint", de = "Katzenminze", fr = "Herbe \195\160 chat" },
		["0x7003A394"] = { icon = 0x41142E0B, en = "Clever Escape", de = "Schlaue Befreiung", fr = "Fuite ing\195\169nieuse" },
		["0x7003B560"] = { icon = 0x411400AD, en = "Command Pet", de = "Begleiter befehligen", fr = "Ordre au compagnon" },
		["0x7002A706"] = { icon = 0x411195EA, en = "Commune with Nature", de = "Dialog mit der Natur", fr = "Communion avec la nature" },
		["0x70003143"] = { icon = 0x410056A2, en = "Cracked Earth", de = "Rissige Erde", fr = "Terre craquel\195\169e" },
		["0x7000F7FE"] = { icon = 0x410EA43E, en = "Dispel Corruption", de = "Verderbtheit neutralisieren", fr = "Dissipation de la corruption" },
		["0x70000FB2"] = { icon = 0x410031AA, en = "Eagle-friend", de = "Adlerfreund", fr = "Ami des aigles" },
		["0x70000FA7"] = { icon = 0x410031A6, en = "Ents go to War", de = "Kriegszug der Ents", fr = "Marche guerri\195\168re des Ents" },
		["0x70003EBE"] = { icon = 0x41142BEB, en = "Fire-lore", de = "Feuerkunde", fr = "Connaissance du feu" },
		["0x70003EB8"] = { icon = 0x41008813, en = "Friend of Bears", de = "Freund der B\195\164ren", fr = "Ami des ours" },
		["0x7000F530"] = { icon = 0x410E460B, en = "Friend of Feline Hunters", de = "Freund der Raubkatzen", fr = "Ami des pr\195\169dateurs f\195\169lins" },
		["0x7000F54D"] = { icon = 0x410E460E, en = "Friend of Nature", de = "Freund der Natur", fr = "Ami de la nature" },
		["0x70024BE7"] = { icon = 0x41142BEC, en = "Frost-lore", de = "Frostkunde", fr = "Connaissance du froid" },
		["0x70003EB7"] = { icon = 0x41008812, en = "Gust of Wind", de = "Windsto\195\159", fr = "Bourrasque" },
		["0x70037967"] = { icon = 0x410031A6, en = "Hasten Ents Go To War", de = "Kriegszug der Ents beschleunigen", fr = "Marche guerri\195\168re des Ents pr\195\169cipit\195\169e" },
		["0x70037966"] = { icon = 0x410F4DF2, en = "Hasten Sticky Gourd", de = "Klebrige Kalebasse beschleunigen", fr = "Gourde collante pr\195\169cipit\195\169e" },
		["0x70003EC0"] = { icon = 0x41139EF2, en = "Herb-lore", de = "Kr\195\164uterkunde", fr = "Connaissance des plantes" },
		["0x70028CA1"] = { icon = 0x411167E6, en = "Improved Burning Embers", de = "Verbesserte Gl\195\188hende Asche", fr = "Braises ardentes am\195\169lior\195\169es" },
		["0x7002E5D0"] = { icon = 0x4112F8A0, en = "Improved Power of Knowledge", de = "Verbesserte Macht des Wissens", fr = "Puissance du savoir am\195\169lior\195\169e" },
		["0x70028B80"] = { icon = 0x411167E1, en = "Improved Sign of Power: Command", de = "Verbessertes Zeichen der Macht: Befehl", fr = "Signe du pouvoir\194\160: commandement am\195\169lior\195\169" },
		["0x70028B9A"] = { icon = 0x411167E2, en = "Improved Staff-sweep", de = "Verbesserter Stabstreich", fr = "Balayage au b\195\162ton am\195\169lior\195\169" },
		["0x70003EB6"] = { icon = 0x41139EF1, en = "Inner Flame", de = "Innere Flamme", fr = "Feu int\195\169rieur" },
		["0x70003132"] = { icon = 0x410056A8, en = "Knowledge of Cures", de = "Heilkunde", fr = "Connaissance des rem\195\168des" },
		["0x7000C588"] = { icon = 0x410D7AB7, en = "Knowledge of the Lore-master", de = "Wissen des Kundigen", fr = "Connaissance du ma\195\174tre du savoir" },
		["0x70003123"] = { icon = 0x41005698, en = "Light of Hope", de = "Das Licht der Hoffnung", fr = "Lueur d'espoir" },
		["0x70003EC2"] = { icon = 0x41008820, en = "Light of the Rising Dawn", de = "Licht der aufsteigenden D\195\164mmerung", fr = "Lumi\195\168re de l'aube naissante" },
		["0x7000B726"] = { icon = 0x410D7135, en = "Lightning-storm", de = "Blitzsturm", fr = "Temp\195\170te foudroyante" },
		["0x700364D5"] = { icon = 0x410D7135, en = "Lightning Strike", de = "Blitzschlag", fr = "Coup d'\195\169clair" },
		["0x7000B8D3"] = { icon = 0x410D73FE, en = "Lynx-speech", de = "Luchssprache", fr = "Langue des lynx" },
		["0x70036715"] = { icon = 0x411400A1, en = "Nature's Fury", de = "Naturgewalten", fr = "Fureur de la nature" },
		["0x7003B610"] = { icon = 0x4114ABC3, en = "Pleasant Breeze", de = "Angenehme Brise", fr = "Brise agr\195\169able" },										-- CHECK: Yellow (21)
		["0x70003116"] = { icon = 0x41005696, en = "Power of Knowledge", de = "Macht des Wissens", fr = "Puissance du savoir" },									-- CHECK: Level 16 - 79
		["0x70003EB5"] = { icon = 0x410087DD, en = "Raven-lore", de = "Rabenkunde", fr = "Ami des corbeaux" },
		["0x70036893"] = { icon = 0x41139F07, en = "Ring of Fire", de = "Feuerring", fr = "Anneau de feu" },
		["0x7000316B"] = { icon = 0x410056AC, en = "Share the Power", de = "Teilung der Macht", fr = "Partage du pouvoir" },
		["0x7002E5F1"] = { icon = 0x4112F8A1, en = "Share the Power - Fellowship", de = "Teilung der Macht - Gef\195\164hrtengruppe", fr = "Partage du pouvoir - Communaut\195\169" },
		["0x70036751"] = { icon = 0x411400AD, en = "Sic 'em!", de = "Hetzt sie auf!", fr = "Attaquez\194\160!" },
		["0x7000F7FF"] = { icon = 0x410E4D3A, en = "Sign of Battle: Wizard's Fire", de = "Zeichen der Macht: Zauberfeuer", fr = "Signe de bataille\194\160: Feu-du-Magicien" },
		["0x70003EBB"] = { icon = 0x411167E1, en = "Sign of Power: Command", de = "Zeichen der Macht: Befehl", fr = "Signe du pouvoir\194\160:\nInjonction" },		-- CHECK: Level 6 - 65
		["0x70003EBC"] = { icon = 0x4100881A, en = "Sign of Power: Righteousness", de = "Zeichen der Macht: Rechtschaffenheit", fr = "Signe du pouvoir\194\160: Int\195\169grit\195\169" },
		["0x7000F801"] = { icon = 0x410E4D01, en = "Sign of Power: See All Ends", de = "Zeichen der Macht: Umsichtigkeit", fr = "Signe du pouvoir\194\160: voir la fin des choses" },
		["0x70003EBD"] = { icon = 0x4100881B, en = "Sign of Power: Vigilance", de = "Zeichen der Macht: Wachsamkeit", fr = "Signe du pouvoir\194\160:\nVigilance" },
		["0x7000310D"] = { icon = 0x411400C6, en = "Staff-strike", de = "Stabschlag", fr = "Coup de b\195\162ton" },
		["0x70024824"] = { icon = 0x4110C447, en = "Staff-sweep", de = "Stabstreich", fr = "Balayage au b\195\162ton" },											-- CHECK: Level 28 - 67
		["0x7000F74D"] = { icon = 0x410E490F, en = "Sticky Gourd", de = "Klebrige Kalebasse", fr = "Gourde collante" },
		["0x7000B62B"] = { icon = 0x410D6F0F, en = "Sticky Tar", de = "Klebriger Teer", fr = "Goudron collant" },
		["0x7000B63C"] = { icon = 0x41142BED, en = "Storm-lore", de = "Sturmkunde", fr = "Connaissance de l'orage" },
		["0x70003EB9"] = { icon = 0x41008817, en = "Test of Will", de = "Pr\195\188fung des Willens", fr = "Test de Volont\195\169" },
		["0x70036750"] = { icon = 0x411400BE, en = "The Ancient Master", de = "Der uralte Meister", fr = "Ma\195\174tre ancien" },
		["0x7000B625"] = { icon = 0x410D6E9D, en = "Warding Knowledge", de = "Wissen \195\188ber die Schutzkunde", fr = "Connaissance de la protection" },
		["0x7002E60F"] = { icon = 0x41130F47, en = "Water-lore", de = "Wasserkunde", fr = "Connaissance de l'eau" },
		["0x70003EBF"] = { icon = 0x4100881D, en = "Wind-lore", de = "Windkunde", fr = "Connaissance du vent" },
		["0x7000314B"] = { icon = 0x410056A4, en = "Wisdom of the Council", de = "Weisheit des Rats", fr = "Sagesse du Conseil" },

		["0x70033C94"] = { icon = 0x4113592C, en = "Bond of the Lore-master", de = "Bande des Kundigen", fr = "Lien du ma\195\174tre du savoir" },
		["0x7002F64A"] = { icon = 0x4112A94A, en = "Bond of the Rider", de = "Bande des Reiters", fr = "Lien du cavalier" },
		["0x70036238"] = { icon = 0x411015BE, en = "Command Pet", de = "Begleiter befehligen", fr = "Ordre au compagnon" },
		["0x7002F64E"] = { icon = 0x4112A944, en = "Discipline: Red Dawn", de = "Disziplin: Morgenr\195\182te", fr = "Discipline\194\160: Aube rouge" },
		["0x7002F641"] = { icon = 0x4112A93E, en = "Discipline: Riddermark", de = "Disziplin: Riddermark", fr = "Discipline\194\160: Riddermark" },
		["0x7002F648"] = { icon = 0x4112A9B0, en = "Discipline: Rohirrim", de = "Disziplin: Rohirrim", fr = "Discipline\194\160: Rohirrim" },
		["0x7002F647"] = { icon = 0x4112A941, en = "Enduring Embers", de = "Best\195\164ndige Glut", fr = "Braises persistantes" },
		["0x7002F650"] = { icon = 0x4112A947, en = "Mearas-lore", de = "Mearas-Kunde", fr = "Connaissance des Mearas" },
		["0x7002F643"] = { icon = 0x4112A93F, en = "Metal and Mettle", de = "Stahl und Mut", fr = "Nerfs d'acier" },
		["0x7002F645"] = { icon = 0x4112A940, en = "Radiant Burst", de = "Strahlender Ausbruch", fr = "Eclat radieux" },
		["0x700338CF"] = { icon = 0x4113592B, en = "Riding Companion: War Wolf", de = "Reitbegleiter: Kriegswolf", fr = "Compagnon de chevauch\195\169e\194\160: loup de guerre" },
		["0x7002F64D"] = { icon = 0x4112A946, en = "Sign of Power: Inspiration", de = "Zeichen der Macht: Inspiration", fr = "Signe du pouvoir\194\160: Inspiration" }
	},

	[Turbine.Gameplay.Class.Minstrel] = {
		["0x70003E80"] = { icon = 0x410087C6, en = "Anthem of Composure", de = "Hymne der Selbstbeherrschung", fr = "Hymne de contenance" },
		["0x70003E7F"] = { icon = 0x410087C5, en = "Anthem of Prowess", de = "Hymne der T\195\188chtigkeit", fr = "Hymne aux prouesses" },
		["0x7000317F"] = { icon = 0x410056AE, en = "Anthem of War", de = "Hymne des Krieges", fr = "Hymne de guerre" },
		["0x70003E85"] = { icon = 0x410087C9, en = "Bolster Courage", de = "Ermutigung", fr = "Encouragement" },
		["0x7000B69A"] = { icon = 0x410D7161, en = "Call of Orom\195\171", de = "Ruf von Orom\195\171", fr = "Appel d'Orom\195\171" },
		["0x7000B69B"] = { icon = 0x410D71F3, en = "Call of the Second Age", de = "Ruf des Zweiten Zeitalters", fr = "Appel du Second Age" },
		["0x7000F250"] = { icon = 0x410E3ACF, en = "Call to Fate", de = "Appell an das Schicksal", fr = "Appel du destin" },
		["0x7000B69C"] = { icon = 0x410D73F8, en = "Call to Greatness", de = "Beschw\195\182rung von Gr\195\182\195\159e", fr = "Appel \195\160 la grandeur" },
		["0x70037D62"] = { icon = 0x411401EC, en = "Call to Ioreth", de = "Appell an Ioreth", fr = "Appel d'Ioreth" },
		["0x7000BC01"] = { icon = 0x410D7569, en = "Chord of Salvation", de = "Akkord der Erl\195\182sung", fr = "Accord du salut" },
		["0x700293C5"] = { icon = 0x411195C6, en = "Coda of Melody", de = "Coda der Melodie", fr = "Coda de m\195\169lodie" },
		["0x700031B2"] = { icon = 0x410056C1, en = "Cry of the Chorus (Melody)", de = "Schrei des Chors", fr = "Cri du ch\197\147ur" },								-- CHECK: Level 26 - 53
		["0x70003184"] = { icon = 0x410056B0, en = "Cry of the Valar", de = "Schrei der Valar", fr = "Cri des Valar" },
		["0x70001270"] = { icon = 0x410035B4, en = "Cry of the Wizards", de = "Hymne der Zauberer", fr = "Cri des Magiciens" },
		["0x7000B699"] = { icon = 0x410D73F7, en = "Dissonance - Stance", de = "Dissonanz - Haltung", fr = "Dissonance - Posture" },
		["0x700031AD"] = { icon = 0x410056BF, en = "Enlivening Grace", de = "Beseelende Anmut", fr = "Gr\195\162ce vivifiante" },									-- CHECK: Level 14 - 67
		["0x70006CEB"] = { icon = 0x4100A4E2, en = "Fellowship's Heart", de = "Herz der Gef\195\164hrten", fr = "Cœur de la communaut\195\169" },
		["0x7000B69E"] = { icon = 0x410D73F9, en = "Gift of the Hammerhand", de = "Gabe der Hammerhand", fr = "Don du Poing de Marteau" },
		["0x70036AF2"] = { icon = 0x41140211, en = "Hero's Strike", de = "Schlag des Helden", fr = "Attaque du h\195\169ros" },
		["0x7000F260"] = { icon = 0x410056C1, en = "Improved Cry of the Chorus (Melody)", de = "Verbesserung: Schrei des Chors", fr = "Cri du ch\197\147ur am\195\169lior\195\169" },
		["0x70029904"] = { icon = 0x410056BF, en = "Improved Enlivening Grace", de = "Verbesserte Beseelende Anmut", fr = "Gr\195\162ce vivifiante am\195\169lior\195\169e" },
		["0x70029905"] = { icon = 0x410087D8, en = "Improved Song of Distraction", de = "Verbesserung: Lied der Ablenkung", fr = "Chant de distraction am\195\169lior\195\169" },
		["0x70003E81"] = { icon = 0x410087C7, en = "Inspire Fellows", de = "Gef\195\164hrten inspirieren", fr = "Inspiration" },
		["0x70003E82"] = { icon = 0x41000FB7, en = "Invocation of Elbereth", de = "Anrufung Elbereths", fr = "Invocation d'Elbereth" },
		["0x7000BC02"] = { icon = 0x410D756A, en = "Irresistible Melody", de = "Unwiderstehliche Melodie", fr = "M\195\169lodie irr\195\169sistible" },
		["0x70036AA5"] = { icon = 0x41140214, en = "Legend of Helm Hammerhand", de = "Legende von Helm Hammerhand", fr = "L\195\169gende de Helm Poing de Marteau" },
		["0x70003E7C"] = { icon = 0x41118B3C, en = "Major Ballad", de = "Dur-Ballade", fr = "Ballade majeure" },
		["0x700330CF"] = { icon = 0x41116CA6, en = "Melody - Stance", de = "Melodie - Haltung", fr = "M\195\169lodie - Posture" },
		["0x700031A8"] = { icon = 0x410056BD, en = "Minor Ballad", de = "Moll-Ballade", fr = "Ballade mineure" },
		["0x70003E7E"] = { icon = 0x410087C4, en = "Perfect Ballad", de = "Perfekte Ballade", fr = "Ballade parfaite" },
		["0x7003A682"] = { icon = 0x4114AE5E, en = "Perfect Ending", de = "Perfektes Ende", fr = "Conclusion parfaite" },
		["0x70003E7D"] = { icon = 0x410087C3, en = "Piercing Cry", de = "Durchdringender Schrei", fr = "Cri per\195\167ant" },
		["0x70003E7B"] = { icon = 0x410087C1, en = "Raise the Spirit", de = "Auferstehung der Seele", fr = "Augmentation du Moral" },
		["0x70001251"] = { icon = 0x410DCFE5, en = "Rally!", de = "Neue Kraft", fr = "Ralliement\194\160!" },
		["0x700293C8"] = { icon = 0x41142BF4, en = "Resonance - Stance", de = "Resonanz - Haltung", fr = "R\195\169sonance - Posture" },
		["0x700264BA"] = { icon = 0x41110A91, en = "Resonant Anthem of the Third Age", de = "Resonante Hymne des dritten Zeitalters", fr = "Hymne r\195\169sonant du Troisi\195\168me Age" },
		["0x7000BE05"] = { icon = 0x410D80DD, en = "Scribe Stance", de = "Haltung \"Schreiber\"", fr = "Posture de scribe" },
		["0x7000F1F4"] = { icon = 0x410E3A1F, en = "Soliloquy of Spirit", de = "Selbstgespr\195\164ch des Geistes", fr = "Esprit de soliloque" },
		["0x7000318C"] = { icon = 0x4113B321, en = "Song of Aid", de = "Lied der Hilfe", fr = "Chant d'assistance" },
		["0x70003E8E"] = { icon = 0x410087D8, en = "Song of Distraction", de = "Lied der Ablenkung", fr = "Chant de distraction" },									-- CHECK: Level 34 - 69
		["0x70020DF9"] = { icon = 0x4110458D, en = "Song of the Hammerhand", de = "Dichtung der Hammerhand", fr = "Chant du Poing de Marteau" },
		["0x7003A38A"] = { icon = 0x41142BE5, en = "Spirit of Freedom", de = "Geist der Freiheit", fr = "Esprit de libert\195\169" },
		["0x70003E90"] = { icon = 0x410087DA, en = "Still As Death", de = "Todesstarre", fr = "Immobilit\195\169 de cadavre" },
		["0x70003E8B"] = { icon = 0x410087D5, en = "Story of Courage", de = "Geschichte der Ermutigung", fr = "Gu\195\169rison de la peur" },
		["0x7000B697"] = { icon = 0x410D73F5, en = "The Melody of Battle", de = "Melodie des Kampfes", fr = "M\195\169lodie de bataille" },
		["0x70003E8C"] = { icon = 0x4113B318, en = "Triumphant Spirit", de = "Triumphierender Geist", fr = "Esprit triomphal" },

		["0x7000C786"] = { icon = 0x410D80E0, en = "Mentor : Bagpipes", de = "Mentor: Dudelsack", fr = "Professeur\194\160: cornemuse" },							-- CHECK: Store
		["0x7000C787"] = { icon = 0x410D80E2, en = "Mentor : Clarinet", de = "Mentor: Klarinette", fr = "Professeur\194\160: clarinette" },
		["0x7000C788"] = { icon = 0x410D80E4, en = "Mentor : Cowbell", de = "Mentor: Kuhglocke", fr = "Professeur\194\160: cloche de vache" },
		["0x7000C789"] = { icon = 0x410D80E6, en = "Mentor : Drums", de = "Mentor: Trommeln", fr = "Professeur\194\160: tambour" },
		["0x7000C78A"] = { icon = 0x410D80E8, en = "Mentor : Flute", de = "Mentor: Fl\195\182te", fr = "Professeur\194\160: fl\195\187te" },
		["0x7000C6C8"] = { icon = 0x410D80DE, en = "Mentor : Harp", de = "Mentor: Harfe", fr = "Professeur\194\160: harpe" },
		["0x7000C78B"] = { icon = 0x410D80D7, en = "Mentor : Horn", de = "Mentor: Horn", fr = "Professeur\194\160: cor" },
		["0x7000C78C"] = { icon = 0x410D80D9, en = "Mentor : Moor Cowbell", de = "Mentor: Moorkuh-Glocke", fr = "Professeur\194\160: cloche de vache des landes" },	-- CHECK: Store
		["0x7002B5AF"] = { icon = 0x4111E43B, en = "Mentor : Pibgorn", de = "Mentor: Pibgorn", fr = "Professeur\194\160: pibgorn" },
		["0x7000C78D"] = { icon = 0x410D80DB, en = "Mentor : Theorbo", de = "Mentor: Theorbe", fr = "Professeur\194\160: th\195\169orbe" },

		["0x7002F3AD"] = { icon = 0x4112A56E, en = "Anthems of the Rohirrim", de = "Hymnen der Rohirrim", fr = "Hymne des Rohirrim" },
		["0x7002F3A7"] = { icon = 0x4112A561, en = "Ballad - Chant", de = "Ballade: Gesang", fr = "Ballade\194\160- Chant" },
		["0x7002F3A0"] = { icon = 0x4112A56C, en = "Call of the Eorlingas", de = "Ruf der Eorlingas", fr = "Appel des Eorlingas" },
		["0x7002F3AA"] = { icon = 0x4112A55D, en = "Coda of the Eorlingas", de = "Coda der Eorlingas", fr = "Coda des Eorlingas" },
		["0x7002F3A4"] = { icon = 0x4112A55E, en = "Cry of the Eorlingas", de = "Schrei der Eorlingas", fr = "Cri des Eorlingas" },
		["0x7002F39B"] = { icon = 0x4112A56F, en = "Discipline: Red Dawn", de = "Disziplin: Morgenr\195\182te", fr = "Discipline\194\160: Aube rouge" },
		["0x7002F3B2"] = { icon = 0x4112A56A, en = "Discipline: Riddermark", de = "Disziplin: Riddermark", fr = "Discipline\194\160: Riddermark" },
		["0x7002F3AF"] = { icon = 0x4112A565, en = "Discipline: Rohirrim", de = "Disziplin: Rohirrim", fr = "Discipline\194\160: Rohirrim" },
		["0x7002F3AE"] = { icon = 0x4112A55C, en = "Hammer of Rohan", de = "Hammer von Rohan", fr = "Marteau du Rohan" },
		["0x70035A45"] = { icon = 0x41135B7D, en = "Song of Unity", de = "Lied der Einheit", fr = "Chant de l'unit\195\169" },
		["0x70033D19"] = { icon = 0x411359FD, en = "Tale of Eorl", de = "Geschichte des Eorl", fr = "Epop\195\169e d'Eorl" },
		["0x70033D3F"] = { icon = 0x41135B7F, en = "The Last Stand of Helm Hammerhand", de = "Helm Hammerhands letztes Gefecht", fr = "Le baroud d'honneur d'Helm Poing de Marteau" }
	},

	[Turbine.Gameplay.Class.RuneKeeper] = {
		["0x7003006F"] = { icon = 0x410EA231, en = "Armour of The Elements", de = "R\195\188stung der Elemente", fr = "Armure des \195\169l\195\169ments" },
		["0x70036B3B"] = { icon = 0x41139EF5, en = "Bombastic Inspiration", de = "Bombastische Inspiration", fr = "Inspiration grandiloquente" },
		["0x7003CC4A"] = { icon = 0x410F23E6, en = "Break The Bonds", de = "Fesseln absch\195\188tteln", fr = "Briser les cha\195\174nes" },
		["0x7000EEAC"] = { icon = 0x410E45CA, en = "Ceaseless Argument", de = "Endloses Streitgespr\195\164ch", fr = "D\195\169bat incessant" },
		["0x7000EE02"] = { icon = 0x410E44C3, en = "Chilling Rhetoric", de = "Endloses Streitgespr\195\164ch", fr = "Rh\195\169torique glaciale" },
		["0x70036B48"] = { icon = 0x41139EDD, en = "Concession and Rebuttal", de = "Zugest\195\164ndnis und Widerlegung", fr = "Concession puis r\195\169futation" },
		["0x70036B37"] = { icon = 0x41139EE2, en = "Combustion", de = "Explosion", fr = "Combustion" },
		["0x700180F5"] = { icon = 0x410F23E7, en = "Distracting Flame", de = "Verwirrende Flamme", fr = "Flammes perturbantes" },
		["0x7000F25D"] = { icon = 0x410E44DC, en = "Do Not Fall This Day", de = "Tod heute nicht unterliegen", fr = "Tu ne succomberas pas aujourd'hui" },
		["0x7000EEAF"] = { icon = 0x410E44DB, en = "Epic Conclusion", de = "Epische Schlussfolgerung", fr = "Conclusion \195\169pique" },
		["0x7000EEA6"] = { icon = 0x410E44D0, en = "Epic for the Ages", de = "Epos f\195\188r die Ewigkeit", fr = "R\195\169cit \195\169pique des \195\162ges" },
		["0x70018636"] = { icon = 0x4114005A, en = "Essay of Exaltation", de = "Abhandlung des Hochgef\195\188hls", fr = "Essai d'exaltation" },
		["0x70024D39"] = { icon = 0x41140051, en = "Essay of Fire", de = "Abhandlung des Feuers", fr = "Essai de feu" },
		["0x7000EFEF"] = { icon = 0x4114004C, en = "Essence of Flame", de = "Wesen der Flamme", fr = "Essence des flammes" },
		["0x7000EEAB"] = { icon = 0x410E44D8, en = "Essence of Storm", de = "Wesen des Sturms", fr = "Essence des temp\195\170tes" },
		["0x7000EE01"] = { icon = 0x410E44C2, en = "Essence of Winter", de = "Wesen des Winters", fr = "Essence de l'hiver" },
		["0x7000E96B"] = { icon = 0x410E10CF, en = "Fiery Ridicule", de = "Scharfer Spott", fr = "Raillerie cuisante" },
		["0x70017EEB"] = { icon = 0x410F23E3, en = "Final Word", de = "Letztes Wort", fr = "Mots abrupts" },	-- CHECK: Level 30 - 49
		["0x7000EDFF"] = { icon = 0x410E44C0, en = "Flurry of Words", de = "Wortgest\195\182ber", fr = "D\195\169luge verbal" },
		["0x70036B4D"] = { icon = 0x4114004E, en = "Fulgurite Runestone", de = "Fulgurit-Runenstein", fr = "Pierre runique de fulgurite" },
		["0x70018775"] = { icon = 0x410F23E3, en = "Improved Final Word", de = "Verbesserte Letzte Worte", fr = "Derniers mots am\195\169lior\195\169s" },
		["0x7000EEA8"] = { icon = 0x410E44D4, en = "Mending Verse", de = "Heilender Vers", fr = "Vers de r\195\169paration" },
		["0x7000EDA1"] = { icon = 0x410E44BF, en = "Nothing Truly Ends", de = "Nichts endet wirklich", fr = "Rien n'est jamais fini" },
		["0x700377AF"] = { icon = 0x41140055, en = "Our Fates Entwined", de = "Verbundenes Schicksal", fr = "Nos destins entrelac\195\169s" },
		["0x7000EEAA"] = { icon = 0x410E44D7, en = "Prelude to Hope", de = "Pr\195\164ludium der Hoffnung", fr = "Pr\195\169lude \195\160 l'espoir" },
		["0x7000EEA4"] = { icon = 0x41139F04, en = "Rousing Words", de = "Mitrei\195\159ende Worte", fr = "Mots d'encouragement" },
		["0x7000EEA5"] = { icon = 0x4114005C, en = "Rune of Restoration", de = "Rune der Wiederherstellung", fr = "Rune de restauration" },
		["0x70020DFB"] = { icon = 0x4110458F, en = "Rune-sign of Winter", de = "Runenzeichen des Winters", fr = "Signe runique de l'hiver" },
		["0x7000E969"] = { icon = 0x41139EFE, en = "Scathing Mockery", de = "Bei\195\159ende Verhöhnung", fr = "Moquerie cinglante" },
		["0x7002D0CD"] = { icon = 0x41125818, en = "Scribe a New Ending", de = "Schreibt einen neuen Ausgang", fr = "R\195\169diger une nouvelle fin" },
		["0x7000EEAD"] = { icon = 0x410E44D9, en = "Scribe's Spark", de = "Funke des Schreibers", fr = "Etincelle du scribe" },
		["0x7000E037"] = { icon = 0x410E44BD, en = "Self-motivation", de = "Eigenmotivation", fr = "Motivation personnelle" },
		["0x7000F488"] = { icon = 0x410E44D3, en = "Shocking Touch", de = "Ersch\195\188tternde Ber\195\188hrung", fr = "Contact \195\169lectrisant" },
		["0x7000EEAE"] = { icon = 0x410E44DA, en = "Shocking Words", de = "Schockierende Worte", fr = "Mots \195\169lectrisants" },
		["0x7000E96D"] = { icon = 0x410E10D1, en = "Smouldering Wrath", de = "Schwelender Zorn", fr = "Col\195\168re fumante" },
		["0x70036B49"] = { icon = 0x41139EE8, en = "Static Surge", de = "Statischer Sto\195\159", fr = "D\195\169charge statique" },
		["0x700180F2"] = { icon = 0x410F23E4, en = "Steady Hands", de = "Ruhige Hand", fr = "Mains s\195\187res" },
		["0x70024D3A"] = { icon = 0x41139F09, en = "Sustaining Bolt", de = "Anhaltender Blitz", fr = "Eclair de continuit\195\169" },
		["0x700180F9"] = { icon = 0x41154A13, en = "Vivid Imagery", de = "Anschauliche Symbolik", fr = "Images r\195\169alistes" },
		["0x700377AC"] = { icon = 0x41139EEB, en = "Volcanic Runestone", de = "Vulkanischer Runenstein", fr = "Pierre runique volcanique" },
		["0x7000EEA7"] = { icon = 0x410E44D1, en = "Word of Exaltation", de = "Wort des Hochgef\195\188hls", fr = "Mot d'exaltation" },
		["0x7000EEA9"] = { icon = 0x410E44D6, en = "Writ of Health", de = "Schriftst\195\188ck der Gesundheit", fr = "All\195\169gorie de la sant\195\169" },
		["0x7000EFF0"] = { icon = 0x410E10D0, en = "Writ of Fire", de = "Schriftst\195\188ck des Feuers", fr = "All\195\169gorie du feu" },
		["0x70037F68"] = { icon = 0x41140068, en = "Writ of Lightning", de = "Schriftst\195\188ck der Blitze", fr = "All\195\169gorie de foudre" },

		["0x70030335"] = { icon = 0x4112B678, en = "Debate", de = "Besprechen", fr = "D\195\169bat" },
		["0x7003033D"] = { icon = 0x4112B4DE, en = "Discipline: Red Dawn", de = "Disziplin: Morgenr\195\182te", fr = "Discipline\194\160: Aube rouge" },
		["0x70030343"] = { icon = 0x4112B4DD, en = "Discipline: Riddermark", de = "Disziplin: Riddermark", fr = "Discipline\194\160: Riddermark" },
		["0x7003033A"] = { icon = 0x4112B690, en = "Discipline: Rohirrim", de = "Disziplin: Rohirrim", fr = "Discipline\194\160: Rohirrim" },
		["0x7003033C"] = { icon = 0x4112B4E9, en = "Fixation", de = "Fixierung", fr = "Fixation" },
		["0x70030342"] = { icon = 0x4112B4EC, en = "Inspirational Verse", de = "Inspirierender Vers", fr = "Vers d'inspiration" },
		["0x7003033E"] = { icon = 0x4112B4E8, en = "Invoke the Elements", de = "Anrufung der Elemente", fr = "Invocation des \195\169l\195\169ments" },
		["0x70034AB2"] = { icon = 0x411359FD, en = "Knowledge of the Rune-keeper", de = "Wissen des Runenbewahrers", fr = "Connaissance du gardien des runes" },
		["0x7003033B"] = { icon = 0x4112B4EE, en = "Oration", de = "Erz\195\164hlung", fr = "Oraison" },
		["0x70030338"] = { icon = 0x4112B4F5, en = "Resolution", de = "Entschlossenheit", fr = "R\195\169solution" },
		["0x70034AAE"] = { icon = 0x411359FC, en = "Superior Evocation", de = "\195\156berragende Beschw\195\182rung", fr = "Evocation sup\195\169rieure" }
	},

	[Turbine.Gameplay.Class.Warden] = {
		["0x7000EEC4"] = { icon = 0x411401AA, en = "Ambush", de = "Hinterhalt", fr = "Embuscade" },
		["0x7003639C"] = { icon = 0x410E8784, en = "Assailment - Stance", de = "Best\195\188rmung - Haltung", fr = "Assaut - Posture" },
		["0x70028906"] = { icon = 0x41116620, en = "Battle Memory I", de = "Kampfged\195\164chtnis 1", fr = "M\195\169moire de bataille 1" },
		["0x7002BEEC"] = { icon = 0x4111E96A, en = "Battle Preparation", de = "Schlachtvorbereitung", fr = "Pr\195\169paration au combat" },
		["0x70014860"] = { icon = 0x410E87A1, en = "Careful Step", de = "Vorsichtiger Schritt", fr = "Marche prudente" },
		["0x700101D8"] = { icon = 0x410E828A, en = "Critical Strike", de = "Entscheidender Schlag", fr = "Coup critique" },
		["0x700156A1"] = { icon = 0x4114017C, en = "Defiant Challenge", de = "Trotzige Herausforderung", fr = "Ton de d\195\169fi" },
		["0x70036551"] = { icon = 0x4113A3CD, en = "Diminished Target", de = "Geschw\195\164chtes Ziel", fr = "Cible diminu\195\169e" },
		["0x70036C2A"] = { icon = 0x41139F12, en = "Dodge This!", de = "Kein Entrinnen", fr = "Esquive \195\167a !" },
		["0x70036552"] = { icon = 0x41139EF4, en = "Fire at Will", de = "Feuer frei!", fr = "Feu \195\160 volont\195\169" },
		["0x7003A654"] = { icon = 0x41142C5C, en = "First Aid", de = "Erste Hilfe", fr = "Premiers secours" },
		["0x7002850C"] = { icon = 0x41116551, en = "Fist and Fist", de = "Faust und Faust", fr = "Poing et poing" },
		["0x7001509C"] = { icon = 0x410E878B, en = "Fist and Shield", de = "Faust und Schild", fr = "Poing et bouclier" },
		["0x7001509A"] = { icon = 0x410E8788, en = "Fist and Spear", de = "Faust und Speer", fr = "Poing et lance" },
		["0x7003644B"] = { icon = 0x4114019B, en = "For the Free Peoples", de = "F\195\188r die Freien V\195\182lker!", fr = "Pour les Peuples Libres" },
		["0x700105CC"] = { icon = 0x410E87A0, en = "Forced March", de = "Gewaltmarsch", fr = "Marche forc\195\169e" },
		["0x70015F56"] = { icon = 0x410F1E69, en = "Gambit Default", de = "Standard-Gambit", fr = "Encha\195\174nement de base" },
		["0x70014833"] = { icon = 0x410E879C, en = "Hampering Javelin", de = "Hemmender Wurfspeer", fr = "Javeline paralysante" },
		["0x7003639B"] = { icon = 0x410E8781, en = "In the Fray - Stance", de = "Im Gefecht - Haltung", fr = "Dans le feu de l'action - Posture" },
		["0x700156A0"] = { icon = 0x41140188, en = "Javelin of Deadly Force", de = "Wurfspie\195\159 der t\195\182dlichen Wucht", fr = "Javeline mortelle" },
		["0x70036550"] = { icon = 0x41139EE1, en = "Marked Target", de = "Markiertes Ziel", fr = "Cible marqu\195\169e" },
		["0x7003B619"] = { icon = 0x4110BE84, en = "Never Surrender", de = "Niemals aufgeben", fr = "Reddition impossible" },
		["0x70016A09"] = { icon = 0x410E9C7B, en = "Quick Recovery", de = "Schnelle Erholung", fr = "R\195\169cup\195\169ration rapide" },
		["0x7000E867"] = { icon = 0x410E828F, en = "Quick Thrust", de = "Schneller Sto\195\159", fr = "Fente rapide" },
		["0x700363A8"] = { icon = 0x4114019A, en = "Recklessness", de = "Unvorsichtigkeit", fr = "Imprudence" },
		["0x70016A0A"] = { icon = 0x410E9C7A, en = "Recovery", de = "Erholung", fr = "R\195\169cup\195\169ration" },
		["0x7001509B"] = { icon = 0x410E877F, en = "Shield and Fist", de = "Schild und Faust", fr = "Poing et bouclier" },
		["0x7002850B"] = { icon = 0x41116552, en = "Shield and Shield", de = "Schild und Schild", fr = "Bouclier et bouclier" },
		["0x7001509D"] = { icon = 0x410E8792, en = "Shield and Spear", de = "Schild und Speer", fr = "Lance et bouclier" },
		["0x70014784"] = { icon = 0x410E8783, en = "Shield Piercer", de = "Schild-Durchbohrer", fr = "Perceur de bouclier" },
		["0x7000ED0E"] = { icon = 0x410E8293, en = "Shield-bash", de = "Heftiger Schildschlag", fr = "Violent coup de bouclier" },
		["0x7003727B"] = { icon = 0x411401AA, en = "Snap Shot - Ambush", de = "Schnappschuss – Hinterhalt", fr = "Tir claquant - Embuscade" },
		["0x7003726C"] = { icon = 0x410E879C, en = "Snap Shot - Hampering Javelin", de = "Schnappschuss – Hemmender Wurfspeer", fr = "Tir claquant - Javeline paralysante" },
		["0x70037270"] = { icon = 0x41140188, en = "Snap Shot - Javelin of Deadly Force", de = "Schnappschuss – Wurfspeer der t\195\182dlichen Wucht", fr = "Tir claquant - Javeline mortelle" },
		["0x7003726D"] = { icon = 0x410E8783, en = "Snap Shot - Shield Piercer", de = "Schnappschuss – Schild-Durch-\nbohrer", fr = "Tir claquant - Perceur de bouclier" },
		["0x70037267"] = { icon = 0x410E8787, en = "Snap Shot - Wages of Fear", de = "Schnappschuss – Lohn der Angst", fr = "Tir claquant - Gages de peur" },
		["0x70015098"] = { icon = 0x410E8786, en = "Spear and Fist", de = "Speer und Faust", fr = "Poing et lance" },
		["0x7002850A"] = { icon = 0x410E878E, en = "Spear and Shield", de = "Speer und Schild", fr = "Lance et bouclier" },
		["0x70015099"] = { icon = 0x41116550, en = "Spear and Spear", de = "Speer und Speer", fr = "Lance et lance" },
		["0x7003A395"] = { icon = 0x41142C5D, en = "Steadfast", de = "Standhaft", fr = "Ind\195\169fectible" },
		["0x70014831"] = { icon = 0x410E8787, en = "Wages of Fear", de = "Lohn der Angst", fr = "Gages de peur" },
		["0x7000EECF"] = { icon = 0x410E828D, en = "Warden's Taunt", de = "Hohn des H\195\188ters", fr = "Provocation de sentinelle" },
		["0x700331C5"] = { icon = 0x410E828E, en = "Warning Shot", de = "Warnschuss", fr = "Tir d'avertissement" },

		["0x7003DC7A"] = { icon = 0x41142BE9, en = "Muster in Aldburg", de = "Appell in Aldburg", fr = "Rassemblement \195\160 Aldburg" },
		["0x700303DF"] = { icon = 0x41128942, en = "Muster in Caras Galadhon", de = "Appell in Caras Galadhon", fr = "Rassemblement \195\160 Caras Galadhon" },
		["0x70041198"] = { icon = 0x411556DA, en = "Muster in Dol Amroth", de = "Appell in Dol Amroth", fr = "Rassemblement \195\160 Dol Amroth" },
		["0x70014798"] = { icon = 0x4100885E, en = "Muster in Esteld\195\173n", de = "Appell in Esteld\195\173n", fr = "Rassemblement \195\160 Esteldin" },
		["0x7001478E"] = { icon = 0x410D45B8, en = "Muster in Evendim", de = "Appell in Evendim", fr = "Rassemblement dans la r\195\169gion d'Evendim" },
		["0x70036B5B"] = { icon = 0x4113B6F8, en = "Muster in Forlaw", de = "Appell in Forlach", fr = "Rassemblement \195\160 Forloi" },
		["0x7002A90A"] = { icon = 0x4111B396, en = "Muster in Galtrev", de = "Appell in Galtrev", fr = "Rassemblement \195\160 Galtrev" },
		["0x700235EB"] = { icon = 0x4110AF3F, en = "Muster in Harndirion", de = "Appell in Harndirion", fr = "Rassemblement \195\160 Harndirion" },
		["0x7003DC79"] = { icon = 0x41142BE8, en = "Muster in Helm's Deep", de = "Appell in Helms Klamm", fr = "Rassemblement au Gouffre de Helm" },
		["0x7001F45C"] = { icon = 0x41102111, en = "Muster in Mirk-eaves", de = "Appell in der Dunkelsenke", fr = "Rassemblement \195\160 l'Or\195\169e noire" },
		["0x700303DD"] = { icon = 0x41128941, en = "Muster in the Misty Mountains", de = "Appell im Nebelgebirge", fr = "Rassemblement dans les Monts Brumeux" },
		["0x70014786"] = { icon = 0x410D45B5, en = "Muster in Ost Guruth", de = "Appell in der Feste Guruth", fr = "Rassemblement \195\160 Ost Guruth" },
		["0x70014791"] = { icon = 0x4100885F, en = "Muster in Rivendell", de = "Appell in Bruchtal", fr = "Rassemblement \195\160 Fondcombe" },
		["0x7003198D"] = { icon = 0x4112DE9F, en = "Muster in Snowbourn", de = "Appell in Schneegrenze", fr = "Rassemblement \195\160 Neigebronne" },
		["0x7002C646"] = { icon = 0x4111F79D, en = "Muster in Stangard", de = "Appell in Stangard", fr = "Rassemblement \195\160 Stangarde" },
		["0x700237D4"] = { icon = 0x410EE414, en = "Muster in S\195\187ri-kyl\195\164", de = "Appell in S\195\187ri-kyl\195\164", fr = "Rassemblement \195\160 S\195\187ri-kyl\195\164" },
		["0x7001819E"] = { icon = 0x410EE412, en = "Muster in the Twenty-first Hall", de = "Appell in der Einundzwanzigsten Halle", fr = "Rassemblement \195\160 la vingt et uni\195\168me salle" },

		["0x70033DC6"] = { icon = 0x4113592D, en = "A Warden's Resolve", de = "Entschlossenheit eines H\195\188ters", fr = "R\195\169solution de sentinelle" },
		["0x70030031"] = { icon = 0x4112B381, en = "Assault of the Eorlingas", de = "Angriff der Eorlingas", fr = "Assaut des Eorlingas" },
		["0x70033DE6"] = { icon = 0x4113592E, en = "Call of the Cavalry", de = "Ruf der Kavallerie", fr = "Appel de la cavalerie" },
		["0x7003004E"] = { icon = 0x4112B37F, en = "Clash of Steel and Will", de = "Konflikt von Stahl und Wille", fr = "Fracas d'acier et de volont\195\169" },
		["0x70030040"] = { icon = 0x4112B3C0, en = "Defence of the Eorlingas", de = "Verteidigung der Eorlingas", fr = "D\195\169fense des Eorlingas" },
		["0x70030046"] = { icon = 0x4112B375, en = "Discipline: Red Dawn", de = "Disziplin: Morgenr\195\182te", fr = "Discipline\194\160: Aube rouge" },
		["0x7003004C"] = { icon = 0x4112B376, en = "Discipline: Riddermark", de = "Disziplin: Riddermark", fr = "Discipline\194\160: Riddermark" },
		["0x70030038"] = { icon = 0x4112B374, en = "Discipline: Rohirrim", de = "Disziplin: Rohirrim", fr = "Discipline\194\160: Rohirrim" },
		["0x7003003C"] = { icon = 0x4112B384, en = "Roar of the Eorlingas", de = "Gebr\195\188ll der Eorlingas", fr = "Hurlement des Eorlingas" },
		["0x7003002C"] = { icon = 0x4112B3C3, en = "Skill of the Eorlingas", de = "Fertigkeit der Eorlingas", fr = "Habilit\195\169 des Eorlingas" },
		["0x7003002B"] = { icon = 0x4112B380, en = "Strike with Power", de = "Machtvoller Angriff", fr = "Frappe en puissance" }
	},

	[Turbine.Gameplay.Class.BlackArrow] = {
		["0x70015A16"] = { icon = 0x410E8B1F, en = "Centre", de = "Zentrieren", fr = "Centrer" },
		["0x700063A5"] = { icon = 0x41008F42, en = "Cut", de = "Schnitt", fr = "Coupure" },
		["0x70005F21"] = { icon = 0x410085D3, en = "Death Blossom", de = "Todesbl\195\188te", fr = "D\195\169luge de fl\195\168ches" },
		["0x7002FE58"] = { icon = 0x4112B373, en = "Explosive Arrow", de = "Explosiver Pfeil", fr = "Fl\195\168che explosive" },
		["0x70015A0C"] = { icon = 0x410E8B1D, en = "Fire Trap", de = "Feuerfalle", fr = "Pi\195\168ge de feu" },
		["0x70005F24"] = { icon = 0x410085D4, en = "Flaming Arrow", de = "Flammenpfeil", fr = "Fl\195\168che enflamm\195\169e" },
		["0x70015A19"] = { icon = 0x410E8B21, en = "Gash", de = "Klaffende Wunde", fr = "Balafre" },
		["0x70015A13"] = { icon = 0x410E8B1C, en = "Headshot", de = "Kopftreffer", fr = "Tir \195\160 la t\195\170te" },
		["0x700063A4"] = { icon = 0x41008F41, en = "Hindering Shot", de = "Behindernder Schuss", fr = "Tir retardateur" },
		["0x7000C21C"] = { icon = 0x410D8564, en = "I See You!", de = "Ich sehe Euch!", fr = "Je te vois\194\160!" },
		-- TODO: { icon = 0x41008F40, en = "Improved Punctured Target", de = "Verbesserung: Perforiertes Ziel", fr = "Cible perc\195\169e am\195\169lior\195\169e" },
		-- TODO: { icon = 0x410D856F, en = "Improved Vital Target", de = "Verbesserung: Empfindliches Ziel", fr = "Organes vitaux cibl\195\169s am\195\169lior\195\169s" },
		["0x70015A1C"] = { icon = 0x410E8B1B, en = "In Your Face", de = "Mitten ins Gesicht", fr = "A bout portant" },
		["0x70015A1B"] = { icon = 0x410E8B1E, en = "Keen Eye", de = "Scharfes Auge", fr = "\197\146il per\195\167ant" },
		["0x7002B103"] = { icon = 0x4111C680, en = "March!", de = "Marsch!", fr = "En avant\194\160!" },
		["0x700063A6"] = { icon = 0x41008F43, en = "Moving Target", de = "Bewegliches Ziel", fr = "Cible mouvante" },
		["0x7000C21D"] = { icon = 0x410D8565, en = "No You Don't", de = "Vergesst es!", fr = "Pas de \195\167a" },
		["0x700063A3"] = { icon = 0x41008F40, en = "Punctured Target", de = "Perforiertes Ziel", fr = "Cible perc\195\169e" },
		["0x70015A1A"] = { icon = 0x410E8B19, en = "Revenge", de = "Rache", fr = "Vengeance" },
		["0x700063A2"] = { icon = 0x41008F3F, en = "Screaming Shafts", de = "Schreiende Sch\195\164fte", fr = "Hampes hurlantes" },
		["0x70005F1F"] = { icon = 0x410085D2, en = "Set Trap", de = "Falle stellen", fr = "Pose de pi\195\168ge" },
		["0x70015A14"] = { icon = 0x410E8B20, en = "Skirmisher Stance", de = "Haltung des Scharm\195\188tzlers", fr = "Posture de franc-tireur" },
		["0x7002579A"] = { icon = 0x4110F718, en = "Snare", de = "Schlingfalle", fr = "Collet" },
		["0x70015A12"] = { icon = 0x410E8B22, en = "Steadfast Barrage", de = "Standhaftes Sperrfeuer", fr = "Tir de barrage incessant" },
		["0x700063A1"] = { icon = 0x41008F3E, en = "Strong Pull", de = "Starke Spannkraft", fr = "Forte tir\195\169e" },
		["0x70015A0F"] = { icon = 0x410E8B1A, en = "Tangleshot", de = "Verstrickender Schuss", fr = "Tir sur cible lente" },
		["0x7000C21B"] = { icon = 0x410D856F, en = "Vital Target", de = "Empfindliches Ziel", fr = "Organes vitaux" }
	},

	[Turbine.Gameplay.Class.Defiler] = {
		["0x7001614E"] = { icon = 0x410E9140, en = "Anointing of the Slick Flesh", de = "Salbung des glitschigen Fleischs", fr = "Onguent de chair grasse" },
		["0x7001614A"] = { icon = 0x410E9141, en = "Blessing of Darkness", de = "Segen der Dunkelheit", fr = "Faveur des t\195\169n\195\168bres" },
		["0x70016154"] = { icon = 0x410E9143, en = "Blight", de = "F\195\164ulnis", fr = "Peste" },
		["0x7002FBBB"] = { icon = 0x4112B372, en = "Constant Pain", de = "Dauerschmerz", fr = "Douleur persistante" },
		["0x7000DD48"] = { icon = 0x410DE30C, en = "Curse of Deadly Sorrows", de = "Fluch der t\195\182dlichen Leiden", fr = "Mal\195\169diction des peines" },
		["0x70016149"] = { icon = 0x410E9142, en = "Curse of Rotten Flesh", de = "Fluch des fauligen Fleisches", fr = "Mal\195\169diction de putr\195\169faction" },
		["0x7000DD49"] = { icon = 0x410DE30E, en = "Curse of Sticky Feet", de = "Fluch der klebrigen F\195\188\195\159e", fr = "Mal\195\169diction des pieds collants" },
		["0x7000DD46"] = { icon = 0x410DE309, en = "Curse of the Coward's Soul", de = "Fluch der Feiglingsseele", fr = "Mal\195\169diction des l\195\162ches" },
		["0x7000DD4B"] = { icon = 0x410DE314, en = "Curse of the Lethargic Heart", de = "Fluch des lethargischen Herzens", fr = "Mal\195\169diction du c\197\147ur l\195\169thargique" },
		["0x7001614D"] = { icon = 0x410E913D, en = "Curse of the Melancholic Heart", de = "Fluch des melancholischen Herzens", fr = "Mal\195\169diction de c\197\147ur m\195\169lancolique" },
		["0x70016155"] = { icon = 0x410E913F, en = "Efflorescence", de = "Ausbl\195\188hung", fr = "Floraison" },
		["0x70016151"] = { icon = 0x410E9146, en = "Explosive Gourd", de = "Explosive Kalebasse", fr = "Gourde explosive" },
		["0x7000DD4E"] = { icon = 0x410DE310, en = "Fell Restoration", de = "Grausame Wiederherstellung", fr = "Restauration cruelle" },
		["0x7000DD4D"] = { icon = 0x410DE30F, en = "Fell Sacrifice", de = "Grausames Opfer", fr = "Sacrifice cruel" },
		["0x7000DD4C"] = { icon = 0x410DE30A, en = "Fertile Slime", de = "Fruchtbarer Schleim", fr = "Substance fertile" },
		["0x7000DD4F"] = { icon = 0x410DE311, en = "Fire Gourd", de = "Kalebasse des Feuers", fr = "Gourde incendiaire" },
		["0x7000DD4A"] = { icon = 0x410DE312, en = "Fungal Bloom", de = "Pilzbl\195\188te", fr = "Floraison fongique" },
		["0x7000DD47"] = { icon = 0x410DE30D, en = "Fungal Spores", de = "Pilzsporen", fr = "Spores fongiques" },
		["0x70016147"] = { icon = 0x410E9145, en = "Gooey Gourd", de = "Matsch-Kalebasse", fr = "Gourde gluante" },
		["0x7000DD45"] = { icon = 0x410DE30B, en = "Headbreaker", de = "Kopfbrecher", fr = "Casse-t\195\170te" },
		["0x7002B103"] = { icon = 0x4111C680, en = "March!", de = "Marsch!", fr = "En avant\194\160!" },
		["0x7000DD50"] = { icon = 0x410DE313, en = "Plague Gourd", de = "Kalebasse der Seuche", fr = "Gourde \195\160 peste" },
		["0x70016150"] = { icon = 0x410E913E, en = "Plague of Flies", de = "Fliegenplage", fr = "Nu\195\169e de mouches" },
		["0x70016145"] = { icon = 0x410E9144, en = "Tenderize", de = "Weich schlagen", fr = "Attendrissement" }
	},

	[Turbine.Gameplay.Class.Reaver] = {
		["0x70015ACA"] = { icon = 0x410E8C96, en = "Against The Odds", de = "Allen Widrigkeiten zum Trotz", fr = "Contre toute attente" },
		["0x7002531A"] = { icon = 0x4110E077, en = "Blade Toss", de = "Schwertwurf", fr = "Lancer de lames" },
		["0x7000638E"] = { icon = 0x41008F3B, en = "Blinding Dust", de = "Blendstaub", fr = "Poussi\195\168re aveuglante" },
		["0x70015AC2"] = { icon = 0x410E8C9A, en = "Blood Lust", de = "Blutgier", fr = "Soif de sang" },
		["0x7000C218"] = { icon = 0x410D856D, en = "Charge!", de = "Angriff!", fr = "A l'attaque\194\160!" },
		["0x7000638D"] = { icon = 0x41008F3A, en = "Devastating Strike", de = "Verheerender Schlag", fr = "Coup d\195\169vastateur" },
		["0x70005F10"] = { icon = 0x410085B2, en = "Disarm", de = "Entwaffnen", fr = "D\195\169sarmement" },
		["0x7000638F"] = { icon = 0x41008F3C, en = "Glory in Victory", de = "Ruhm durch Sieg", fr = "Victoire glorieuse" },
		-- TODO: { icon = 0x410D856E, en = "Gut Punch", de = "Magenhieb", fr = "Coup de poing dans l'estomac" },
		["0x70005F12"] = { icon = 0x410085B3, en = "Hamstring", de = "Achillessehne", fr = "Coup aux jarrets" },
		["0x700304C5"] = { icon = 0x4112BD74, en = "Impale", de = "Aufspie\195\159en", fr = "Empalement" },
		-- TODO: { icon = 0x41115D55, en = "Improved Gut Punch", de = "Verbesserung: Magenhieb", fr = "Coup de poing dans l'estomac am\195\169lior\195\169" },
		-- TODO: { icon = 0x41008F38, en = "Improved Sudden Strikes", de = "Verbesserung: J\195\164he Schl\195\164ge", fr = "Attaques rapides am\195\169lior\195\169es" },
		["0x7000638B"] = { icon = 0x4100860B, en = "Jagged Cut", de = "Zerfurchter Schnitt", fr = "Plaie b\195\169ante" },
		["0x70015ACD"] = { icon = 0x410E8C91, en = "Lacerate", de = "Aufschlitzen", fr = "Lac\195\169ration" },
		["0x7002B103"] = { icon = 0x4111C680, en = "March!", de = "Marsch!", fr = "En avant\194\160!" },
		["0x70015AC1"] = { icon = 0x410E8C94, en = "Mutilation", de = "Verst\195\188mmelung", fr = "Mutilation" },
		["0x70015AC4"] = { icon = 0x410E8C99, en = "Ravage", de = "Verheerung", fr = "Ravage" },
		["0x70005F0D"] = { icon = 0x410085B1, en = "Resilience", de = "Unverw\195\188stlichkeit", fr = "Solidit\195\169" },
		["0x70015AC8"] = { icon = 0x410E8C98, en = "Serration", de = "Kerbung", fr = "Dents de scie" },
		["0x70015ACB"] = { icon = 0x410E8C95, en = "Severing Strike", de = "Abtrennender Schlag", fr = "Frappe violente" },
		["0x7000638A"] = { icon = 0x41008F38, en = "Sudden Strikes", de = "J\195\164he Schl\195\164ge", fr = "Attaques rapides" },
		["0x7000638C"] = { icon = 0x41008F39, en = "Sundering Blow", de = "Spaltender Schlag", fr = "Coup destructeur" },
		["0x70015AC9"] = { icon = 0x410E8C93, en = "Thrash", de = "Pr\195\188geln", fr = "Passage \195\160 tabac" },
		["0x70015AC5"] = { icon = 0x410E8C9B, en = "Time-Out", de = "Pause", fr = "Repos m\195\169rit\195\169" },
		["0x70015AC3"] = { icon = 0x410E8C92, en = "Upper Hand", de = "Oberhand", fr = "Avantage" },
		["0x70015ABF"] = { icon = 0x410E8C97, en = "Wrath", de = "Zorn", fr = "Col\195\168re" }
	},

	[Turbine.Gameplay.Class.Stalker] = {
		["0x700063D6"] = { icon = 0x41008F52, en = "Claws", de = "Klauen", fr = "Griffes" },
		["0x700063D9"] = { icon = 0x41008F55, en = "Crippling Bite", de = "L\195\164hmender Biss", fr = "Morsure invalidante" },
		["0x700162EA"] = { icon = 0x410E930D, en = "Dire Howl", de = "Unheilvolles Heulen", fr = "Hurlement sinistre" },
		["0x70005F33"] = { icon = 0x410085F3, en = "Disappear", de = "Verschwinden", fr = "Disparition" },
		["0x7000C217"] = { icon = 0x410D9AF7, en = "Eye Rake", de = "Augen auskratzen", fr = "Attaque aux yeux" },
		["0x700162DF"] = { icon = 0x410E930E, en = "Flayer", de = "Gei\195\159ler", fr = "Ecorcheur" },
		["0x700162E8"] = { icon = 0x410E9305, en = "Flea Bitten", de = "Flohbisse", fr = "Morsure de puces" },
		["0x700162DE"] = { icon = 0x410E9306, en = "Frenzy", de = "Raserei", fr = "Fr\195\169n\195\169sie" },
		["0x7002B103"] = { icon = 0x4111C680, en = "March!", de = "Marsch!", fr = "En avant\194\160!" },
		["0x700162E3"] = { icon = 0x410E9304, en = "Maul", de = "Streithammer", fr = "Mutilation" },
		["0x7002FBB0"] = { icon = 0x4112B371, en = "Piercing Claws", de = "Durchbohrende Klauen", fr = "Griffes ac\195\169r\195\169es" },
		["0x700063D7"] = { icon = 0x41008F54, en = "Pounce", de = "Losst\195\188rzen", fr = "Attaque subite" },
		["0x700162E7"] = { icon = 0x410E930F, en = "Rabid Bite", de = "Tollw\195\188tiger Biss", fr = "Morsure enrag\195\169e" },
		["0x70005F2D"] = { icon = 0x410085F1, en = "Rallying Howl", de = "Schlachtgeheul", fr = "Hurlement de ralliement" },
		["0x700162E0"] = { icon = 0x410E930C, en = "Rend Flesh", de = "Zerfleischen", fr = "Lac\195\169ration de la chair" },
		["0x700063D8"] = { icon = 0x41008F57, en = "Savage Fangs", de = "Scharfe Rei\195\159z\195\164hne", fr = "Crocs sauvages" },
		["0x700162ED"] = { icon = 0x410E930A, en = "Scratch and Snip", de = "Kratz und Rei\195\159", fr = "Double coup de patte" },
		["0x700162DB"] = { icon = 0x410E9309, en = "Sense Prey", de = "Beute aufsp\195\188ren", fr = "D\195\169tection de proie" },
		["0x7002C72C"] = { icon = 0x41124E77, en = "Shadow ", de = "Schatten ", fr = "Ombre " },
		["0x700162E9"] = { icon = 0x410E930B, en = "Snap", de = "Zuschnappen", fr = "Claquement de m\195\162choires" },
		["0x700063DB"] = { icon = 0x41008F59, en = "Sprint", de = "Sprint", fr = "Sprint" },
		["0x70005F35"] = { icon = 0x41091CC4, en = "Stealth", de = "Schleichen", fr = "Discr\195\169tion" },
		["0x700162EB"] = { icon = 0x410E9308, en = "Swipe", de = "Streich", fr = "Balayage" },
		["0x7000C216"] = { icon = 0x410D856C, en = "Tendon Shred", de = "Sehnenfetzen", fr = "Tendon d\195\169chir\195\169" },
		["0x700063DA"] = { icon = 0x41008F58, en = "Throat Rip", de = "Kehlenbiss", fr = "Arrachage de gorge" }
	},

	[Turbine.Gameplay.Class.WarLeader] = {
		["0x700063B3"] = { icon = 0x41008F49, en = "Aura of Command", de = "Aura des Machtworts", fr = "Aura de commandement" },
		["0x700157CD"] = { icon = 0x410E8A30, en = "Aura of Protection", de = "Aura des Schutzes", fr = "Aura de protection" },
		["0x700157F5"] = { icon = 0x410E8A2D, en = "Banner of Horror", de = "Banner des Grauens", fr = "Banni\195\168re de l'horreur" },
		["0x7000C21F"] = { icon = 0x410D8566, en = "Banner of Terror", de = "Banner des Schreckens", fr = "Banni\195\168re de terreur" },
		["0x7000C220"] = { icon = 0x410D8567, en = "Black Speech", de = "Schwarze Sprache", fr = "Noir Parler" },
		["0x700157CE"] = { icon = 0x410E8A34, en = "Brawler's Stance", de = "Haltung \"Schl\195\164ger\"", fr = "Posture du lutteur" },
		["0x700157D5"] = { icon = 0x410E8A32, en = "Call the Shadow", de = "Den Schatten beschw\195\182ren", fr = "Invocation de l'Ombre" },
		["0x700063AF"] = { icon = 0x41008F45, en = "Cleave", de = "Spalten", fr = "Tranchoir" },
		["0x7000C221"] = { icon = 0x410D8568, en = "Command Post", de = "Befehlsposten", fr = "Oriflamme de commandement" },
		["0x700157D1"] = { icon = 0x410E8A2F, en = "Commander's Stance", de = "Haltung \"Kommandeur\"", fr = "Posture du commandant" },
		["0x700063B0"] = { icon = 0x41008F46, en = "Crack The Whip", de = "Peitschenknall", fr = "C'est de la com\195\169die\194\160!" },
		["0x700063B2"] = { icon = 0x41008F48, en = "Field Promotion", de = "Bef\195\182rderung auf dem Feld", fr = "Promotion de terrain" },
		["0x700157CC"] = { icon = 0x410E8A35, en = "Fracture", de = "Zerbrechen", fr = "Fracture" },
		["0x700063AE"] = { icon = 0x41008F44, en = "Intimidating Shout", de = "Abschreckender Schrei", fr = "Cri d'intimidation" },
		["0x7002B103"] = { icon = 0x4111C680, en = "March!", de = "Marsch!", fr = "En avant\194\160!" },
		["0x700157F2"] = { icon = 0x410E8A33, en = "Menacing Roar", de = "Bedrohliches Br\195\188llen", fr = "Rugissement mena\195\167ant" },
		["0x70005F26"] = { icon = 0x410085E3, en = "Mobilise", de = "Mobilisieren", fr = "Mobilit\195\169" },
		["0x700063B1"] = { icon = 0x41008F47, en = "On Your Feet!", de = "Auf die Beine!", fr = "Debout\194\160!" },
		["0x700157FB"] = { icon = 0x410E8A31, en = "Point-defence", de = "Verteidigungspunkt", fr = "Point de d\195\169fense" },
		["0x700159E0"] = { icon = 0x410F2299, en = "Purge", de = "L\195\164utern", fr = "Purge" },
		["0x70005F2A"] = { icon = 0x410085E4, en = "Quit Whining and Fight!", de = "H\195\182rt auf zu winseln und k\195\164mpft!", fr = "Arr\195\170tez de vous plaindre et battez-vous\194\160!" },
		["0x700157F8"] = { icon = 0x410E8A2E, en = "Quitters Never Win", de = "Versager gewinnen nie", fr = "Mort aux l\195\162ches\194\160!" },
		["0x7002FBB1"] = { icon = 0x4112B370, en = "Shield Bash", de = "Heftiger Schildschlag", fr = "Violent coup de bouclier" },
		["0x70005F25"] = { icon = 0x410085E2, en = "Snap Out of It!", de = "Rei\195\159t Euch zusammen!", fr = "On se r\195\169veille\194\160!" }
	},

	[Turbine.Gameplay.Class.Weaver] = {
		["0x70016598"] = { icon = 0x410E94B6, en = "Catch Prey", de = "Beute fangen", fr = "Capture de proie" },
		["0x70005F15"] = { icon = 0x410085C2, en = "Clinging Webs", de = "Klebrige Netze", fr = "Toiles d'araign\195\169e collantes" },
		["0x7002C0A6"] = { icon = 0x4111F2CC, en = "Drink Deep", de = "Gro\195\159er Schluck", fr = "Boire \195\160 longs traits" },
		["0x700063CD"] = { icon = 0x41008F4F, en = "Entangling Web", de = "Hemmendes Netz", fr = "Toile d'emm\195\170lement" },
		["0x7002C332"] = { icon = 0x4111F2CE, en = "Envenom", de = "Vergiften", fr = "Empoisonnement" },
		["0x700165A0"] = { icon = 0x410E94B8, en = "Feast", de = "Schlemmen", fr = "Vampirisme" },
		["0x700165A3"] = { icon = 0x410E94B2, en = "Grasping Web", de = "Greifende Spinnwebe", fr = "Toile paralysante" },
		["0x7000C228"] = { icon = 0x410D856B, en = "Hatchlings", de = "Brutlinge", fr = "Couv\195\169e" },
		["0x700063CB"] = { icon = 0x41008F4D, en = "Latent Poison", de = "Latentes Gift", fr = "Poison latent" },
		["0x70016599"] = { icon = 0x410E94B0, en = "Lethal Kiss", de = "T\195\182dlicher Kuss", fr = "Baiser mortel" },
		["0x70005F18"] = { icon = 0x410085C3, en = "Lie In Wait", de = "Belauern", fr = "A l'aff\195\187t" },
		["0x7002B103"] = { icon = 0x4111C680, en = "March!", de = "Marsch!", fr = "En avant\194\160!" },
		["0x70016597"] = { icon = 0x410E94AF, en = "Mephitic Kiss", de = "Pestkuss", fr = "Baiser toxique" },
		["0x700165A2"] = { icon = 0x410E94B5, en = "Necrosis", de = "Nekrose", fr = "N\195\169crose" },
		["0x7001659C"] = { icon = 0x410E94B7, en = "Paralytic Venom", de = "L\195\164hmendes Gift", fr = "Venin paralysant" },
		["0x700063C9"] = { icon = 0x41008F4B, en = "Piercing Attack", de = "Durchbohrender Angriff", fr = "Attaque per\195\167ante" },
		["0x700063CE"] = { icon = 0x41008F50, en = "Poison Spray", de = "Giftregen", fr = "Crachat de poison" },
		["0x700165A5"] = { icon = 0x410E94B3, en = "Shadow's Bite", de = "Schattenbiss", fr = "Morsure des t\195\169n\195\168bres" },
		["0x7000C227"] = { icon = 0x410D856A, en = "Smothering Web", de = "Erstickendes Netz", fr = "Toiles \195\169touffantes" },
		["0x700063CC"] = { icon = 0x41008F4E, en = "Snaring Web", de = "Fesselndes Netz", fr = "Toile d'immobilisation" },
		["0x700063CA"] = { icon = 0x41008F4C, en = "Tainted Kiss", de = "Unreiner Kuss", fr = "Baiser contaminant" },
		["0x70030238"] = { icon = 0x4112B6B2, en = "Toxic Carapace", de = "Giftpanzer", fr = "Carapace toxique" },
		["0x70016596"] = { icon = 0x410E94B4, en = "Toxin", de = "Toxin", fr = "Toxine" },
		["0x700063CF"] = { icon = 0x410085C4, en = "Trapdoor Sanctuary", de = "Zufluchtsort mit Fallt\195\188r", fr = "Sanctuaire souterrain" },
		["0x70018C21"] = { icon = 0x410F71FC, en = "Venomous Haze", de = "Giftiger Nebel", fr = "Brume venimeuse" },
		["0x7002C0C4"] = { icon = 0x4111F2CD, en = "Virulent Poison", de = "Heftiges Gift", fr = "Poison virulent" },
		["0x7000C226"] = { icon = 0x410D8569, en = "Web the Earth", de = "Bodennetz", fr = "Terre gluante" }
	}
};

-- race specific shortcuts
raceShortcut = {
	[Turbine.Gameplay.Race.Beorning] = {
		["0x700419A8"] = { icon = 0x4115989F, en = "Bake a Honey-cake", de = "Backt einen Honigkuchen", fr = "Pr\195\169parer un g\195\162teau au miel" },
		["0x70041A33"] = { icon = 0x411599B8, en = "Bracing Roar", de = "St\195\164rkendes Br\195\188llen", fr = "Rugissement fortifiant" },
		["0x70041A2F"] = { icon = 0x411599B7, en = "Feral Presence", de = "Wilde Anziehungskraft", fr = "Pr\195\169sence sauvage" },
		["0x70041A22"] = { icon = 0x4115999D, en = "Return Home", de = "Zum 1. Heim zur\195\188ckkehren", fr = "Retour \195\160 la maison" }
	},

	[Turbine.Gameplay.Race.Dwarf] = {
		["0x7000634E"] = { icon = 0x410088B1, en = "Dwarf-endurance", de = "Zwergenausdauer", fr = "Endurance de Nain" },
		["0x7000634A"] = { icon = 0x410088AF, en = "Endurance of Stone", de = "Steinerne Ausdauer", fr = "Endurance de la pierre" },
		["0x7000633C"] = { icon = 0x410088A8, en = "Head-butt", de = "Kopfsto\195\159", fr = "Coup de boule" },
		["0x70006346"] = { icon = 0x410088AD, en = "Return to Thorin's Gate", de = "R\195\188ckkehr zu Thorins Tor", fr = "Retour\194\160: Porte de Thorin" }
	},

	[Turbine.Gameplay.Race.Elf] = {
		["0x70006323"] = { icon = 0x410035B0, en = "Eldar's Grace", de = "Anmut der Eldar", fr = "Gr\195\162ce des Eldar" },
		["0x70006329"] = { icon = 0x4100888D, en = "Power of the Eldar", de = "Kraft der Eldar", fr = "Puissance des Eldar" },
		["0x7000631F"] = { icon = 0x4100889D, en = "Return to Rivendell", de = "R\195\188ckkehr nach Bruchtal", fr = "Retour \195\160 Fondcombe" },
		["0x70006317"] = { icon = 0x41008898, en = "Silvan Shadows", de = "Silvanische Schatten", fr = "Ombres sylvaines" }
	},

	[Turbine.Gameplay.Race.Hobbit] = {
		["0x700062CE"] = { icon = 0x41008875, en = "Hobbit-resilience", de = "Robustheit des Hobbits", fr = "Duret\195\169 de Hobbit" },
		["0x700062D7"] = { icon = 0x41008879, en = "Hobbit-silence", de = "Hobbit-Stille", fr = "Silence de hobbit" },
		["0x700062D3"] = { icon = 0x41008877, en = "Hobbit-stealth", de = "Hobbit-Schleichen", fr = "Discr\195\169tion de hobbit" },
		["0x700062C8"] = { icon = 0x41008873, en = "Return to the Shire", de = "R\195\188ckkehr ins Auenland", fr = "Retournez dans la Comt\195\169" },
		["0x700062BE"] = { icon = 0x4100886E, en = "Throw Stone", de = "Stein werfen", fr = "Jet de pierre" }
	},

	[Turbine.Gameplay.Race.Man] = {
		["0x700062FA"] = { icon = 0x4100888C, en = "Duty-bound", de = "Verpflichtet", fr = "Appel du devoir" },
		["0x700062F6"] = { icon = 0x4100888A, en = "Return to Bree", de = "R\195\188ckkehr nach Bree", fr = "Retour \195\160 Bree" },
		["0x70006301"] = { icon = 0x41008890, en = "Strength of Morale", de = "St\195\164rke der Moral", fr = "Force du Moral" },
		["0x700062EC"] = { icon = 0x41008885, en = "Upper-cut", de = "Aufw\195\164rtshaken", fr = "Uppercut" }
	}
};

-- Maps an icon to a set of shortcuts that use that icon and the descriptions that distinguish between the skills
local iconDescription = {
	-- Unbreakable's icon
	[0x41139F05] = {
		-- Cooldown: 120
		["0x7003771A"] = { en = "The Champion empowers themselves by releasing a mighty cry. Each time they are hit, they grow tougher until eventually letting out a mighty roar, damaging all those around them.",
		                   de = "Der Waffenmeister st\195\164rkt sich selbst, indem er einen m\195\164chtigen Schrei ausst\195\182\195\159t. Jedes Mal, wenn er getroffen wird, wird er st\195\164rker, bis er ein m\195\164chtiges Gebr\195\188ll erschallen l\195\164sst, das allen in seiner N\195\164he Schaden zuf\195\188gt.",
		                   fr = "Le champion augmente sa puissance en poussant un hurlement. Chaque fois qu'il est touch\195\169, il devient plus puissant jusqu'\195\160 finalement pousser un \195\169norme rugissement qui inflige des d\195\169g\195\162ts \195\160 tous ceux qui l'entourent." },

		-- Cooldown: 30
		["0x70036777"] = { en = "A mighty roar that damages surrounding opponents.",
		                   de = "Ein m\195\164chtiges Gebr\195\188ll, das Gegnern im Umkreis Schaden zuf\195\188gt.",
		                   fr = "Puissant rugissement infligeant des d\195\169g\195\162ts aux adversaires \195\160 proximit\195\169." }
	}
};

local locale = "en";
local l = Turbine.Engine.GetLanguage()
if l == Turbine.Language.English or l == Turbine.Language.EnglishGB then
	locale = "en";
elseif l == Turbine.Language.German then
	locale = "de";
elseif l == Turbine.Language.French then
	locale = "fr";
end

for icon, shortcuts in pairs(iconDescription) do
	for sc, strings in pairs(shortcuts) do
		shortcuts[sc] = strings[locale];
	end
end

local player = Turbine.Gameplay.LocalPlayer:GetInstance();

-- Generate the shortcut -> name table (shortcut)
-- Generate the icon+name -> shortcut table (iconNames)
-- Order is: player's class, player's race, general shortcuts, other classes, other races
-- Entries are first come, first served.
--   This will allow class specific skills to override the general shortcuts
--   (for example, some of the Beorning mounted skills have different shortcuts because they use Wrath instead of Power)
shortcut = { };
local iconNames = { };
for sc, skill in pairs(classShortcut[player:GetClass()] or { }) do
	if skill[locale] ~= nil then
		local iconName = string.format("%8X:%s", skill.icon, skill[locale]);
		if iconNames[iconName] == nil then
			iconNames[iconName] = sc;
		end

		if shortcut[sc] == nil then
			shortcut[sc] = skill[locale];
		end
	end
end

for sc, skill in pairs(raceShortcut[player:GetRace()] or { }) do
	if skill[locale] ~= nil then
		local iconName = string.format("%8X:%s", skill.icon, skill[locale]);
		if iconNames[iconName] == nil then
			iconNames[iconName] = sc;
		end

		if shortcut[sc] == nil then
			shortcut[sc] = skill[locale];
		end
	end
end

for sc, skill in pairs(generalShortcut) do
	if skill[locale] ~= nil then
		local iconName = string.format("%8X:%s", skill.icon, skill[locale]);
		if iconNames[iconName] == nil then
			iconNames[iconName] = sc;
		end

		if shortcut[sc] == nil then
			shortcut[sc] = skill[locale];
		end
	end
end

for class, shortcuts in pairs(classShortcut) do
	if class ~= player:GetClass() then
		for sc, skill in pairs(shortcuts) do
			if skill[locale] ~= nil then
				shortcut[sc] = skill[locale];
			end
		end
	end
end

for race, shortcuts in pairs(raceShortcut) do
	if race ~= player:GetRace() then
		for sc, skill in pairs(shortcuts) do
			if skill[locale] ~= nil then
				shortcut[sc] = skill[locale];
			end
		end
	end
end

-- Look up the shortcut of a skill based on its SkillInfo
Turbine.Gameplay.SkillInfo.GetShortcutData = function(self)
	local name = self:GetName();
	local icon = self:GetIconImageID();

	-- Unbreakable
	if iconDescription[icon] ~= nil then
		local description = self:GetDescription();
		for sc, dscr in pairs(iconDescription[icon]) do
			if description == dscr then
				return sc;
			end
		end
		return nil;
	-- Sting
	elseif icon == 0x41005668 then
		local uskill = player:GetUntrainedSkills();

		-- See if there's still another Sting to learn
		for i = 1, uskill:GetCount(), 1 do
			if uskill:GetItem(i):GetSkillInfo():GetIconImageID() == 0x41005668 then
				return "0x70003058";
			end
		end
		return "0x7000F1E1";
	end

	local iconName = string.format("%8X:%s", icon, name);
	return iconNames[iconName];
end