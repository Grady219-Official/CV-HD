
function scr_item_LUT()
{
	{	//create templates to make id arrays
		item_id = array_create(100) // creating the table
		item_info = array_create(4) //default item info size
	}
	{  //add item info to all item id's
		for(i=0;i<(array_length(item_id));i++)
		{
			item_id[i] = item_info
		}
	}
	{	//add info to each array.  Use #region to designate blocks.  This is where most of the item information is stored.  Refer to item id reference text file to locate items in list
		#region // item id 0
		item_id[0][0] = ""
		item_id[0][1] = ""  //item descriptions
		#endregion
		#region // item id 1
		item_id[1][0] = "Bare Knuckle"
		item_id[1][1] = ""
		#endregion
		#region // item id 2
		item_id[2][0] = "Axe"
		item_id[2][1] = "Heavy single-edged axe"
		#endregion
		#region // item id 3
		item_id[3][0] = "Alucart Sword"
		item_id[3][1] = "Resembles a certain family heirloom..."
		#endregion
		#region // item id 4
		item_id[4][0] = "Vampire Killer"
		item_id[4][1] = "Legendary whip and the bane of all vampires."
		#endregion
		#region // item id 5
		item_id[5][0] = "Confodere"
		item_id[5][1] = "Rapier glyph"
		#endregion
		#region // item id 6
		item_id[6][0] = "Book of Binding"
		item_id[6][1] = "Book that gains strenth as it captures new spells."
		#endregion
		#region // item id 7
		item_id[7][0] = "Belnades Staff"
		item_id[7][1] = "A Belnades clan treasure."
		#endregion
		#region // item id 8
		item_id[8][0] = "Doves"
		item_id[8][1] = "Lovely white birds that answer their master's call"
		#endregion
		#region // item id 9
		item_id[9][0] = "Vampire Killer (Simon)"
		item_id[9][1] = "Legendary whip and the bane of all vampires."
		#endregion
		#region // item id 10
		item_id[10][0] = "Pulse Blade"
		item_id[10][1] = "A prized sword passed down through the Getsu clan"
		#endregion
		#region // item id 11
		item_id[11][0] = "Mist Form"
		item_id[11][1] = ""
		#endregion
		#region // item id 12
		item_id[12][0] = "Stonewall"
		item_id[12][1] = ""
		#endregion
		#region // item id 13
		item_id[13][0] = "Swing Whip"
		item_id[13][1] = ""
		#endregion
		#region // item id 14
		item_id[14][0] = "Spin Kick"
		item_id[14][1] = ""
		#endregion
		#region // item id 15
		item_id[15][0] = "Magnes"
		item_id[15][1] = ""
		#endregion
		#region // item id 16
		item_id[16][0] = "Spellbind"
		item_id[16][1] = ""
		#endregion
		#region // item id 17
		item_id[17][0] = "Xuan Wu"
		item_id[17][1] = ""
		#endregion
		#region // item id 18
		item_id[18][0] = "Agni's Flame"
		item_id[18][1] = "Flaming blade of the fire god Agni"
		#endregion
		#region // item id 19
		item_id[19][0] = "Alucard Shield"
		item_id[19][1] = "Strong against all attacks"
		#endregion
		#region // item id 20
		item_id[20][0] = "Alucard Sword"
		item_id[20][1] = "Alucard's favorite sword"
		#endregion
		#region // item id 21
		item_id[21][0] = "Alucard Sword +1"
		item_id[21][1] = "Alucard's favorite sword"
		#endregion
		#region // item id 22
		item_id[22][0] = "Alucart Shield"
		item_id[22][1] = "Resembles a certain family shield..."
		#endregion
		#region // item id 23
		item_id[23][0] = "Ascalon"
		item_id[23][1] = "Dragon-slaying sword"
		#endregion
		#region // item id 24
		item_id[24][0] = "Axe Knight Shield"
		item_id[24][1] = "Favorite shield of axe-wielding terrors"
		#endregion
		#region // item id 25
		item_id[25][0] = "Badelaire"
		item_id[25][1] = "Sword whose power increases based on your total play time."
		#endregion
		#region // item id 26
		item_id[26][0] = "Balmung"
		item_id[26][1] = "Demonic dragon-slaying sword"
		#endregion
		#region // item id 27
		item_id[27][0] = "Baselard"
		item_id[27][1] = "Dagger with an l-shaped shaft."
		#endregion
		#region // item id 28
		item_id[28][0] = "Bastard Sword"
		item_id[28][1] = "A standard blade."
		#endregion
		#region // item id 29
		item_id[29][0] = "Battle Axe"
		item_id[29][1] = "Double-edged axe designed for combat"
		#endregion
		#region // item id 30
		item_id[30][0] = "Bekatowa"
		item_id[30][1] = "Plain, east-to-wield war sword"
		#endregion
		#region // item id 31
		item_id[31][0] = "Bhuj"
		item_id[31][1] = "Heavy war axe."
		#endregion
		#region // item id 32
		item_id[32][0] = "Blue Knuckles"
		item_id[32][1] = "Specially designed for devastating uppercuts."
		#endregion
		#region // item id 33
		item_id[33][0] = "Blunt Sword"
		item_id[33][1] = "Sword with a dull cutting edge."
		#endregion
		#region // item id 34
		item_id[34][0] = "Brass Knuckles"
		item_id[34][1] = "Metal weapon that adds sting to your punches."
		#endregion
		#region // item id 35
		item_id[35][0] = "Brionac"
		item_id[35][1] = "Demonic five-pronged spear."
		#endregion
		#region // item id 36
		item_id[36][0] = "Broadsword"
		item_id[36][1] = "A simple sword, often used by mercenaries."
		#endregion
		#region // item id 37
		item_id[37][0] = "Burtgang"
		item_id[37][1] = "Sword blessed by divinity, designed primarily for defense."
		#endregion
		#region // item id 38
		item_id[38][0] = "Cestus"
		item_id[38][1] = "Hard knuckle guards worn by ancient boxers."
		#endregion
		#region // item id 39
		item_id[39][0] = "Chakram"
		item_id[39][1] = "Throwing weapon with a sharp, circular blade."
		#endregion
		#region // item id 40
		item_id[40][0] = "Cinquedea"
		item_id[40][1] = "Elaborate dagger encrusted with jewels."
		#endregion
		#region // item id 41
		item_id[41][0] = "Claimh Solais"
		item_id[41][1] = "An indefatigable sword.  its blade glitters with light."
		#endregion
		#region // item id 42
		item_id[42][0] = "Claimh Solais +1"
		item_id[42][1] = "An indefatigable sword.  Its blade glitters with light."
		#endregion
		#region // item id 43
		item_id[43][0] = "Claymore"
		item_id[43][1] = "Large Scottish blade."
		#endregion
		#region // item id 44
		item_id[44][0] = "Combat Knife"
		item_id[44][1] = "Flat combat dagger."
		#endregion
		#region // item id 45
		item_id[45][0] = "Cutall"
		item_id[45][1] = "Short sword of East Inian origins"
		#endregion
		#region // item id 46
		item_id[46][0] = "Cutlass"
		item_id[46][1] = "Standard cavalry sword."
		#endregion
		#region // item id 47
		item_id[47][0] = "Dainslef"
		item_id[47][1] = "Demonic sword of finality."
		#endregion
		#region // item id 48
		item_id[48][0] = "Damascus Sword"
		item_id[48][1] = "Superior sword that never loses its razor-sharp edge."
		#endregion
		#region // item id 49
		item_id[49][0] = "Dark Shield"
		item_id[49][1] = "Unholy dark shield."
		#endregion
		#region // item id 50
		item_id[50][0] = "Daybreak"
		item_id[50][1] = "Enchanted sword with the power to summon an undead army."
		#endregion
		#region // item id 51
		item_id[51][0] = "Death Scythe"
		item_id[51][1] = "Scythe used by Death to gather souls."
		#endregion
		#region // item id 52
		item_id[52][0] = "Durandal"
		item_id[52][1] = "Sword of giants that was tempered by fairies."
		#endregion
		#region // item id 53
		item_id[53][0] = "Estoc"
		item_id[53][1] = "Blade primarily designed as a stabbing weapon."
		#endregion
		#region // item id 54
		item_id[54][0] = "Falchion"
		item_id[54][1] = "Norman sword with a wide, crescent-shaped blade."
		#endregion
		#region // item id 55
		item_id[55][0] = "Final Sword"
		item_id[55][1] = "Blade favoured by the Final Guards."
		#endregion
		#region // item id 56
		item_id[56][0] = "Fire Shield"
		item_id[56][1] = "Flame-imbued shield."
		#endregion
		#region // item id 57
		item_id[57][0] = "Fist of Tulkas"
		item_id[57][1] = "Blessed by Tulkas the Valar."
		#endregion
		#region // item id 58
		item_id[58][0] = "Flamberge"
		item_id[58][1] = "Flame-edged sword."
		#endregion
		#region // item id 59
		item_id[59][0] = "Fleuret"
		item_id[59][1] = "Light and easy-to-handle sword."
		#endregion
		#region // item id 60
		item_id[60][0] = "Fragarach"
		item_id[60][1] = "Demonic sword in the shape of a cross."
		#endregion
		#region // item id 61
		item_id[61][0] = "Garian Sword"
		item_id[61][1] = "Flexible, articulated sword made for executions."
		#endregion
		#region // item id 62
		item_id[62][0] = "Geiborg"
		item_id[62][1] = "Spear tempered by witches."
		#endregion
		#region // item id 63
		item_id[63][0] = "Gladius"
		item_id[63][1] = "Sword used in ancient Rome."
		#endregion
		#region // item id 64
		item_id[64][0] = "Goddess Shield"
		item_id[64][1] = "Engraved with a divine image."
		#endregion
		#region // item id 65
		item_id[65][0] = "Golden Axe"
		item_id[65][1] = "Axe, crafted from gold, with astounding destructive power."
		#endregion
		#region // item id 66
		item_id[66][0] = "Gram"
		item_id[66][1] = "A deadly aura surrounds this infamous blade."
		#endregion
		#region // item id 67
		item_id[67][0] = "Great Axe"
		item_id[67][1] = "Huge war axe,  It is exceptionally heavy."
		#endregion
		#region // item id 68
		item_id[68][0] = "Great Sword"
		item_id[68][1] = "Massive sword designed to smash through its targets."
		#endregion
		#region // item id 69
		item_id[69][0] = "Gungner"
		item_id[69][1] = "Divine thunderbolt that pierces everything it touches."
		#endregion
		#region // item id 70
		item_id[70][0] = "Halberd"
		item_id[70][1] = "Polearm ending in a wide axe blade."
		#endregion
		#region // item id 71
		item_id[71][0] = "Handgun"
		item_id[71][1] = "Fires 9mm round."
		#endregion
		#region // item id 72
		item_id[72][0] = "Harper"
		item_id[72][1] = "Weapon legends say was used to kill Medusa."
		#endregion
		#region // item id 73
		item_id[73][0] = "Heaven's Sword"
		item_id[73][1] = "A demon-slaying sword once wielded by an Angel."
		#endregion
		#region // item id 74
		item_id[74][0] = "Herald Shield"
		item_id[74][1] = "Shield with a heart crest."
		#endregion
		#region // item id 75
		item_id[75][0] = "Holbein Dagger"
		item_id[75][1] = "Enables a swift slashing attack."
		#endregion
		#region // item id 76
		item_id[76][0] = "Holy Rod"
		item_id[76][1] = "Scepter annointed with divine power."
		#endregion
		#region // item id 77
		item_id[77][0] = "Holy Sword"
		item_id[77][1] = "Blessed cross hilt, strong against undead creatures."
		#endregion
		#region // item id 78
		item_id[78][0] = "Hrunting"
		item_id[78][1] = "Frightening sword that contains venom in its blade."
		#endregion
		#region // item id 79
		item_id[79][0] = "Ice Brand"
		item_id[79][1] = "Demonic sword that freezes all that it touches."
		#endregion
		#region // item id 80
		item_id[80][0] = "Indra's Light"
		item_id[80][1] = "Lightning sword of the storm god Indra."
		#endregion
		#region // item id 81
		item_id[81][0] = "Iron Shield"
		item_id[81][1] = "Shield made of hard metal."
		#endregion
		#region // item id 82
		item_id[82][0] = "Jagdplaute"
		item_id[82][1] = "Elegant but deadly sword."
		#endregion
		#region // item id 83
		item_id[83][0] = "Jewel Knuckles"
		item_id[83][1] = "Jewel reinforced knuckles."
		#endregion
		#region // item id 84
		item_id[84][0] = "Joyeuse"
		item_id[84][1] = "Extravagantly beautiful sword.  Quite valuable."
		#endregion
		#region // item id 85
		item_id[85][0] = "Kaiser Knuckles"
		item_id[85][1] = "Imbues knuckles with divine rage."
		#endregion
		#region // item id 86
		item_id[86][0] = "Kaiser Knuckles +1"
		item_id[86][1] = "Imbues knuckles with divine rage."
		#endregion
		#region // item id 87
		item_id[87][0] = "Kaladbolg"
		item_id[87][1] = "Demonic sword tempered by faeries."
		#endregion
		#region // item id 88
		item_id[88][0] = "Katana"
		item_id[88][1] = "Traditional sword used by samurai."
		#endregion
		#region // item id 89
		item_id[89][0] = "Knife"
		item_id[89][1] = "Cheap pocket knife."
		#endregion
		#region // item id 90
		item_id[90][0] = "Knight Shield"
		item_id[90][1] = "Armored knight's shield."
		#endregion
		#region // item id 91
		item_id[91][0] = "Knuckle Dusters"
		item_id[91][1] = "Iron-studded brass knuckles."
		#endregion
		#region // item id 92
		item_id[92][0] = "Kotetsu"
		item_id[92][1] = "Sword named legendary swordsmith, Nagasone Kotetsu."
		#endregion
		#region // item id 93
		item_id[93][0] = "Kris Naga"
		item_id[93][1] = "Beautifilly adorned stiletto knife."
		#endregion
		#region // item id 94
		item_id[94][0] = "Kunitsuna"
		item_id[94][1] = "Onimaru Kunitsuna, a sword said to have slain Oni demons."
		#endregion
		#region // item id 95
		item_id[95][0] = "Laevatain"
		item_id[95][1] = "Intensely hot sword that scorches everything it touches."
		#endregion
		#region // item id 96
		item_id[96][0] = "Lance"
		item_id[96][1] = "Spear used by cavalry knights."
		#endregion
		#region // item id 97
		item_id[97][0] = "Leather Shield"
		item_id[97][1] = "Leather shield with low DEF."
		#endregion
		#region // item id 98
		item_id[98][0] = "Long Sword"
		item_id[98][1] = "A common type of sword."
		#endregion
		#region // item id 99
		item_id[99][0] = "Longinus"
		item_id[99][1] = "Spear of divinity."
		#endregion
		#region // item id 100
		item_id[100][0] = "Mace"
		item_id[100][1] = "A large club."
		#endregion
		#region // item id 101
		item_id[101][0] = "Mach Punch"
		item_id[101][1] = "Enables punches to be thrown at the speed of sound."
		#endregion
		#region // item id 102
		item_id[102][0] = "Main Gauche"
		item_id[102][1] = "Sword designed for superior defense."
		#endregion
		#region // item id 103
		item_id[103][0] = "Masamune"
		item_id[103][1] = "Famed Japanese samurai sword."
		#endregion
		#region // item id 104
		item_id[104][0] = "Medusa Shield"
		item_id[104][1] = "Gorgon-headed shield."
		#endregion
		#region // item id 105
		item_id[105][0] = "Milican's Sword"
		item_id[105][1] = "Sword that sometimes turns those it strikes into stone."
		#endregion
		#region // item id 106
		item_id[106][0] = "Mjollnjr"
		item_id[106][1] = "Mighty hammer of the thunder god."
		#endregion
		#region // item id 107
		item_id[107][0] = "Moon Rod"
		item_id[107][1] = "Scepter adorned with lunar markings."
		#endregion
		#region // item id 108
		item_id[108][0] = "Mormegil"
		item_id[108][1] = "Dark blade, strong against holy foes."
		#endregion
		#region // item id 109
		item_id[109][0] = "Morning Star"
		item_id[109][1] = "Club with a visious, spike-studded head."
		#endregion
		#region // item id 110
		item_id[110][0] = "Muramasa"
		item_id[110][1] = "Sword with a macabre reputation."
		#endregion
		#region // item id 111
		item_id[111][0] = "Muramasa +1"
		item_id[111][1] = "Sword with a macabre reputation."
		#endregion
		#region // item id 112
		item_id[112][0] = "Mystletain"
		item_id[112][1] = "Sword hewn from the wood of a divine tree."
		
		#endregion
		#region // item id 113
		item_id[113][0] = "Nebula"
		item_id[114][1] = "A chain that binds and destroys evil."
		#endregion
		#region // item id 114
		item_id[114][0] = "Nunchakus"
		item_id[114][1] = "Only  a true master can wield a weapon this deadly."
		#endregion
		#region // item id 115
		item_id[115][0] = "Obsidian Sword"
		item_id[115][1] = "Two-handed blade, forged of volcanic glass."
		#endregion
		#region // item id 116
		item_id[116][0] = "Osafune"
		item_id[116][1] = "Japanese sword with the full name of Bizen Osafune Nagamitsu."
		#endregion
		#region // item id 117
		item_id[117][0] = "Partisan"
		item_id[117][1] = "A polearm fitted with a broad blade."
		#endregion
		#region // item id 118
		item_id[118][0] = "Rahab's Frost"
		item_id[118][1] = "Icy blade made from the fang of the water-dragon Rahab."
		#endregion
		#region // item id 119
		item_id[119][0] = "Rapier"
		item_id[119][1] = "Thrusting sword with a tapered blade."
		#endregion
		#region // item id 120
		item_id[120][0] = "RPG"
		item_id[120][1] = "Rocket-propelled grenade."
		#endregion
		#region // item id 121
		item_id[121][0] = "Saber"
		item_id[121][1] = "Light sword used by cavalry riders."
		
		#endregion
		#region // item id 122
		item_id[122][0] = "Scimitar"
		item_id[122][1] = "Curved, single-edged sword."
		#endregion
		#region // item id 123
		item_id[123][0] = "Shaman Shield"
		item_id[123][1] = "Shield used in magic rituals."
		#endregion
		#region // item id 124
		item_id[124][0] = "Short Sword"
		item_id[124][1] = "Standard sword with a short blade."
		#endregion
		#region // item id 125
		item_id[125][0] = "Shotel"
		item_id[125][1] = "Abyssinian curved sword."
		#endregion
		#region // item id 126
		item_id[126][0] = "Silver Gun"
		item_id[126][1] = "Shoots silver bullets that have been ritually blessed."
		#endregion
		#region // item id 127
		item_id[127][0] = "Skull Shield"
		item_id[127][1] = "Shield adorned with a skull and crossbones."
		#endregion
		#region // item id 128
		item_id[128][0] = "Small Sword"
		item_id[128][1] = "Light and easy-to-handle sword."
		#endregion
		#region // item id 129
		item_id[129][0] = "Spear"
		item_id[129][1] = "A standard spear."
		#endregion
		#region // item id 130
		item_id[130][0] = "Star Flail"
		item_id[130][1] = "Flail topped with spiked balls."
		#endregion
		#region // item id 131
		item_id[131][0] = "Sword of Hador"
		item_id[131][1] = "Sword with a hilt crafted to resemble a red serpent."
		#endregion
		#region // item id 132
		item_id[132][0] = "Takemitsu"
		item_id[132][1] = "Bamboo sword."
		#endregion
		#region // item id 133
		item_id[133][0] = "Talwar"
		item_id[133][1] = "Curved Indian sword."
		#endregion
		#region // item id 134
		item_id[134][0] = "Terror Bear"
		item_id[134][1] = "Insidious stuffed toy filled with iron and sand."
		#endregion
		#region // item id 135
		item_id[135][0] = "Throwing Sickle"
		item_id[135][1] = "Small throwing sickle used by ninjas."
		#endregion
		#region // item id 136
		item_id[136][0] = "Tomahawk"
		item_id[136][1] = "Battle axe designed for throwing."
		#endregion
		#region // item id 137
		item_id[137][0] = "Tonfa"
		item_id[137][1] = "Strike your enemies twice."
		#endregion
		#region // item id 138
		item_id[138][0] = "Trident"
		item_id[138][1] = "Three-pronged spear."
		#endregion
		#region // item id 139
		item_id[139][0] = "Tyrfing"
		item_id[139][1] = "Dark, cursed sword."
		#endregion
		#region // item id 140
		item_id[140][0] = "Valmanway"
		item_id[140][1] = "Sword whose name means Blessed Wind."
		#endregion
		#region // item id 141
		item_id[141][0] = "Valmanway +1"
		item_id[141][1] = "Sword whose name means Blessed Wind."
		#endregion
		#region // item id 142
		item_id[142][0] = "Vorpal Blade"
		item_id[142][1] = "Slices cleanly through enemies."
		#endregion
		#region // item id 143
		item_id[143][0] = "Were Bane"
		item_id[143][1] = "Strong against werebeasts."
		#endregion
		#region // item id 144
		item_id[144][0] = "Whip Knuckle"
		item_id[144][1] = "Enables quick, whip-like punches."
		#endregion
		#region // item id 145
		item_id[145][0] = "Whip Sword"
		item_id[145][1] = "Weapon with a whip-like blade."
		#endregion
		#region // item id 146
		item_id[146][0] = "Yasutsuna"
		item_id[146][1] = "Doujikiri Yasuksuna, a sword said to have cut off a demon's arm."
		#endregion
		#region // item id 147
		item_id[147][0] = "Yasutsuna +1"
		item_id[147][1] = "Doujikiri Yasuksuna, a sword said to have cut off a demon's arm."
		#endregion
		#region // item id 148
		item_id[148][0] = "Zweihander"
		item_id[148][1] = "German two-handed sword."
		#endregion
		#region // item id 149
		item_id[149][0] = "Pneuma"
		item_id[149][1] = "Create squalls to sweep enemies away."
		#endregion
		#region // item id 150
		item_id[150][0] = "Lapiste"
		item_id[150][1] = "Pulverize enemies with giant fists of stone."
		#endregion
		#region // item id 151
		item_id[151][0] = "Dextro Custos"
		item_id[151][1] = "Attack with the right head of Cerberus, guardian of Hell."
		#endregion
		#region // item id 152
		item_id[152][0] = "Sinestro Custos"
		item_id[152][1] = "Attack with the left head of Cerberus, guardian of Hell."
		#endregion
	}
}