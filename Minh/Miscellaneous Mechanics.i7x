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
Understand the commands "break" and "destroy" and "smash" and "wreck" and "demolish" and "crack"  and "b" as something new. 
Breaking is an action applying to one visible thing. Understand "break [breakable wall]" as breaking. 
Understand the commands "destroy" and "smash" and "wreck" and "demolish" and "crack" and "b" as "break".
Breaking action has a number called the break damage.
Check an actor breaking (this is the can't break without holding a wall breaker rule): 
	if the player is not carrying a wall breaker: 
		if the actor is the player, say "You don't have anything to break walls with."; 
		stop the action. 	
Check an actor breaking (this is the can't break a non-breakable wall rule): 
	if the noun is not a breakable wall: 
		if the actor is the player, say "You can't break that."; 
		stop the action. 

Section - Wall Breakers

Rock Hammer is a wall breaker. The maximum break damage of the Rock Hammer is 1.
Setting action variables for breaking: 
	if the player is carrying Rock Hammer: 
		let the maximum breakage be the maximum break damage of the Rock Hammer; 
		now the break damage is a random number between 1 and the maximum breakage. 
	
Section - Types of Walls

The Tunnel Wall is a breakable wall. The maximum break points of the Tunnel Wall is 1. The current break points of the Tunnel Wall is 1.
Report breaking (this is the normal breaking Tunnel Wall report rule):
	if the noun is Tunnel Wall: 
		say "You slam the wall with great force." instead. 
Carry out an actor breaking (this is the standard breaking Tunnel Wall with a wall breaker rule):
	if the noun is Tunnel Wall:
		decrease the current break points of the noun by the break damage; 
		if the noun is broken:
			now the noun is nowhere;
			move Diamond Pickaxe to Tunnel Extension.
		
The Prison Wall is a breakable wall. The maximum break points of the Prison Wall is 1. The current break points of the Prison Wall is 1.
Report breaking (this is the normal breaking Prison Wall report rule):
	if the noun is Prison Wall:
		say "You strike the cracked wall." instead. 
Carry out an actor breaking (this is the standard breaking Prison Wall with a wall breaker rule):
	if the noun is Prison Wall:
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

Miscellaneous Mechanics ends here.
