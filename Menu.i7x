Menu by Lamdil begins here.

Chapter 1 - Help

Include Menus by Emily Short.

Table of Basic Help Options
title	subtable (a table name)	description	toggle (a rule)
"Instructions for Play"	Table of Instruction Options	--

Table of Instruction Options
title	subtable	description	
"What to do with '[command prompt]'"	--	"The [command prompt] sign is where the game says, 'Okay, what do you want to do now?'  You may respond by typing an instruction -- usually an imperative verb, possibly followed by prepositions and objects.  So, for instance, LOOK, TAKE KEY, UNLOCK DOOR."	
"How to move"	--	"Communicate using compass directions: (GO NORTH). You omit the word GO and abbreviate the compass directions as (N = North, S = South, E = East, W = West) In some locations, IN and OUT as well as UP and DOWN will also be useful."	
"Objects"	--	"Throughout the game there will be assorted objects that you can do things with. Most importantly, you may TAKE or GET items, and (when you are tired of them) DROP them again. INVENTORY (abbreviated I) will list the items you are currently holding. [paragraph break]There are usually assorted things you may do with these objects. OPEN, CLOSE, WEAR, EAT, LOCK, and UNLOCK are especially common.[paragraph break]Occasionally, you will find that the game does not recognize the name of an object even though it has been described as being in the room with you. If this is the case, the object is just there for scenery, and you may assume that you do not need to interact with it."	

Understand "help" or "hint" or "hints" or "about" or "info" as asking for help.
Asking for help is an action out of world.
Carry out asking for help (this is the help request rule):
   now the current menu is the Table of Basic Help Options;
   carry out the displaying activity;
   clear the screen;
   try looking.

Chapter 2 - Compass

Include Basic Screen Effects by Emily Short.

When play begins:
	 center "[story title]";
	 center "[story headline]";
	 center "by [story author]";
	 leave space;
	 center "Press SPACE to begin.";
	 wait for the SPACE key;
	 clear the screen;
	 leave space.
	
To turn screen black:
	 say white letters;
	 turn the background black;
	 clear the screen;
	 leave space;

To turn screen white:
	 turn the background white;
	 say black letters;
	 clear the screen;
	 leave space.

To leave space:
	 say paragraph break;
	 say paragraph break;
	 say paragraph break;
	 say paragraph break.

Table of Fancy Status
left	central	right 
"[if in darkness]Darkness[otherwise][location][end if]"	""	"[top rose]" 
"[left hand status line]"	"You [status of the player] (Health: [current hit points of player])[line break]"	"[middle rose]" 
"[right hand status line]"	""	"[bottom rose]" 


To say red reverse:
	 turn the background red.

To say black reverse:
	 turn the background black.

To say white reverse:
	 turn the background white.
	
To say rose (way - a direction):
	 let place be the room way from the location;
	 if the place is a room, say "[if the place is unvisited][red reverse][end if][way abbreviation][default letters]"; otherwise say "[way spacing]";
	
To say (way - a direction) abbreviation:
	 choose row with a chosen way of way in the Table of Various Directions;
	 say abbrev entry.

To say (way - a direction) spacing:
	 choose row with a chosen way of way in the Table of Various Directions;
	 say spacing entry.

Table of Various Directions
chosen way	abbrev	spacing 
up	"U "	" " 
northwest	"NW"	" " 
north	" N "	" " 
northeast	"NE"	" " 
east	" E"	" " 
west	"W "	" " 
southeast	"SE"	" " 
south	" S "	" " 
southwest	"SW"	" " 
down	"D "	" " 

To say top rose:
	 say "[rose up][rose northwest][rose north][rose northeast]".

To say middle rose:
	 say " [rose west] . [rose east]";

To say bottom rose:
	 say "[rose down][rose southwest][rose south][rose southeast]".

Rule for constructing the status line:
	 fill status bar with Table of Fancy Status;
	 say default letters;
	 rule succeeds.

Menu ends here.
