Miscellaneous Mechanics by Lamdil begins here.

Chapter - Map

Include Modified Automap by Mark Tilford.
Use automap hide paths through closed doors.
When play begins:
	now current zoom is map zoomed in;
	now current displayness is map display ascii.
Check the player zooming out:
	say "That's not a verb I recognize.";
	stop the action.
Check map displaying fancy:
	say "That's not a verb I recognize.";
	stop the action.
Check map displaying unicode:
	say "That's not a verb I recognize.";
	stop the action.
Check map viewing:
	say "That's not a verb I recognize.";
	stop the action.
Check map dumping:
	say "That's not a verb I recognize.";
	stop the action.
Check map link dumping:
	say "That's not a verb I recognize.";
	stop the action.
	
Chapter - Food

A food is a kind of thing. A food has a number called health restored.
Stale Bread is a food. The health restored of Stale Bread is 10.  
Dried Fish is a food. The health restored of Dried Fish is 15.
Tough Bread is a food. The health restored of tough bread is 20.

Instead of eating a food (called the consumable):
	if the current hit points of the player is less than the maximum hit points of the player:
		say "You quickly wolf down the [noun]. [health restored] health has been restored.";
		increase the current hit points of the player by health restored;
		remove the consumable from play;
		if the current hit points of the player is greater than the maximum hit points of the player:
			now the current hit points of the player is the maximum hit points of the player;
	otherwise:
		say "You aren't nearly hungry enough to eat that right now. Save it for another time.".
		
Chapter - Walls

Section - Breaking Walls

A breakable wall is a kind of thing. A breakable wall has a number called maximum break points. A breakable wall has a number called current break points. 
Definition: a breakable wall is broken if its current break points is less than 1. 
A wall breaker is a kind of thing. A wall breaker has a number called the maximum break damage.
Understand the commands "break" and "destroy" and "smash" and "wreck" and "demolish" as something new. 
Breaking it with is an action applying to one visible thing and one carried thing. Understand "break [breakable wall] with [something preferably held]" as breaking it with. 
Understand the commands "destroy" and "smash" and "wreck" and "demolish" as "break".
Breaking it with action has a number called the break damage.
Check an actor breaking something with something (this is the can't break with something that isn't a wall breaker rule): 
	if the second noun is not a wall breaker: 
		if the actor is the player, say "You can't break walls with [the second noun]."; 
		stop the action. 	
Check an actor breaking something with something (this is the can't break a non-breakable wall rule): 
	if the noun is not a breakable wall: 
		if the actor is the player, say "You can't break that."; 
		stop the action. 

Section - Wall Breakers

Rock Hammer is a wall breaker. The maximum break damage of the Rock Hammer is 1.
Setting action variables for breaking something with something: 
	if the second noun is a Rock Hammer: 
		let the maximum breakage be the maximum break damage of the second noun; 
		now the break damage is a random number between 1 and the maximum breakage. 
	
Section - Types of Walls

The Tunnel Wall is a breakable wall. The maximum break points of the Tunnel Wall is 1. The current break points of the Tunnel Wall is 1.
Report breaking Tunnel Wall with something (this is the normal breaking Tunnel Wall report rule): 
	say "You slam the wall with great force." instead. 
Carry out an actor breaking Tunnel Wall with something (this is the standard breaking Tunnel Wall with a wall breaker rule): 
	decrease the current break points of the noun by the break damage; 
	if the noun is broken:
		now the noun is nowhere;
		move Diamond Pickaxe to Tunnel Extension.
		
The Prison Wall is a breakable wall. The maximum break points of the Prison Wall is 1. The current break points of the Prison Wall is 1.
Report breaking Prison Wall with something (this is the normal breaking Prison Wall report rule): 
	say "You strike the cracked wall." instead. 
Carry out an actor breaking Prison Wall with something (this is the standard breaking Prison Wall with a wall breaker rule): 
	decrease the current break points of the noun by the break damage; 
	if the noun is broken:
		now the noun is nowhere.
		
Section - Inventory

The carrying capacity of the player is 5.

Instead of taking Guard's Satchel: 
	let inventory space be carrying capacity of the player;
	now the carrying capacity of the player is inventory space plus 5;
	say "You can now hold 5 more items.";
	remove the noun from play.
	
Instead of taking Leather Pouch: 
	let inventory space be carrying capacity of the player;
	now the carrying capacity of the player is inventory space plus 5;
	say "You can now hold 5 more items.";
	remove the noun from play.
	
Section - Talking
		
Instead of asking Ethiram to try doing something:
	repeat through Table of Ethiram's Commentary:
		if player's command includes topic entry:
			say "[commentary entry][paragraph break]";
			rule succeeds;
	say "'Hmmf,' says Ethiram."
	
Instead of speech when the noun is Ethiram:
	repeat through Table of Ethiram's commentary:
		if the topic understood includes topic entry:
			say "[commentary entry][paragraph break]";
			rule succeeds;
	say "'Hmmf,' says Ethiram."

Asking someone about something is speech.
Telling someone about something is speech.
Answering someone that something is speech.
Asking someone for something is speech.

Table of Ethiram's Commentary
topic	commentary
"island"	"'Now is a good time to explain how I got in my current predicament. Long story short, I was able to sacrifice the bodies of seven ... prison guards ... to revive myself and'"

Section - God Commands

Understand the command "smite" as something new.
Smiting is an action applying to one visible thing. Understand "smite [someone]" as smiting.
The smiting action has a number called Godly Powers.
Carry out an actor smiting someone (this is the standard smiting someone rule): 
	decrease the current hit points of the noun by the maximum hit points of the noun; 
	if the noun is dead: 
		now the noun is nowhere.
Report smiting a dead person (this is the death-report priority rule): 
	say "With your godly powers, a thunderous boom fills the world and a flash of light blinds all who witness the unworthy facing you and in the next moment is nothing but atoms." instead.

Godly Robes is body equipment. The bodyPoints of the Godly Robes is 980. The bodyDamageReduction of the Godly Robes is 1000. The player carries Godly Robes.

Carry out the player wearing body equipment (this is the Godly Robes rule):
	let x be the maximum hit points of the player;
	now the maximum hit points of the player is x plus bodyPoints of the noun;
	let y be the damageReduction of the player;
	now the damageReduction of the player is y plus bodyDamageReduction of the noun;
	now the current hit points of the Player is the maximum hit points of the player.

Understand "t [something]" as taking.

Section - Secret Door

Miscellaneous Mechanics ends here.
