Miscellaneous Mechanics by Lamdil begins here.

Chapter - Map

Include Modified Automap by Mark Tilford.
Use automap hide paths through closed doors.
When play begins:
	now current zoom is map zoomed in;
	now current displayness is map display ascii.
	
Chapter - Food

A food is a kind of thing. A food has a number called health restored.
Stale Bread is a food. The health restored of Stale Bread is 10.  
Dried Fish is a food. The health restored of Dried Fish is 18.
Tough Bread is a food. The health restored of Tough Bread is 27.
Old Cheese is a food. The health restored of Old Cheese is 44.
Salted Beef is a food. The health restored of Salted Beef is 78.
Cold Bacon is a food. The health restored of Cold Bacon is 146.

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

Understand "t [something]" as taking.

Section - Ethiram

The maximum hit points of Ethiram is 5000. The current hit points of Ethiram is 5000.
Ethiram wears Ethiram Robes.
Report Player hitting Ethiram:
	say "'You think you can fight me?!' Ethiram rises above you and a beam of pure energy strikes your chest and pummels your body into the Earth.";
	end the story saying "Now is not the time to fight this being. Learn from your mistakes when you try to fight a Mysterious Entity."; 
	stop the action.
	
Section - Player Numbers

[Forcefied]
The player has a number called Unlock. The unlock of the player is 0.
[Catch These Hands]
The player has a number called Body Parts. The Body Parts of the player is 0.

Section - Godly Robes

Godly Robes is body equipment. The bodyPoints of the Godly Robes is 980. The bodyDamageReduction of the Godly Robes is 1000. The player carries Godly Robes.
	
The player carries Treacherous Zweihander.

Understand "Full Heal Meh" as casting Full Heal Meh.
Casting Full Heal Meh is an action applying to nothing. 
Carry out casting Full Heal Meh:
	now the current hit points of the player is the maximum hit points of the player.
	
Section -Weapon Unlocks

The player has a number called fpoints. The fpoints of the player is 0. 
The player has a number called specPoints. The specPoints of the player is 0. 
The player has a number called bloodPoints. The bloodPoints of the player is 0. 

Treacherous Unlock is a scene. 
Treacherous Unlock begins when the player is in Edge of Shadows. 
Every turn during the Treacherous Unlock: 
	if the fpoints of the player is 5:
		say "All five fiery marks on your arm begin to grow brighter, and brighter, as it shoots a powerful pillar of fire straight into the sky.";		
		wait for any key;
		say "In that instant a weapon forged through the fire of your victories descends through the flames and hoovers just above the ground.";
		wait for any key;
		say "You extend your arm out to grab the Treacherous Zweihander and feel the intense power of the weapon burn straight through your soul.";
		wait for any key;
		decrease the fpoints of the player by 10;
		say "[description of the Treacherous Zweihander]";
		now the Treacherous Zweihander is carried by the player.

Treacherous Unlock ends when the player is in F106. 

Underworld Unlock is a scene. 
Underworld Unlock begins when the player is in Edge of Shadows.
Every turn during the Underworld Unlock:
	if the specPoints of the player is 5:
		say "All five spectral marks on your arm begin to grow brighter, and brighter, as it shoots a powerful pillar of otherworldy energy straight into the sky.";
		wait for any key;
		say "In that instant a weapon forged through the ghostly energy you've absorbed descends and hoovers inches above the ground.";
		wait for any key;
		say "You extend your arm out to grab the Underworld Claws, a set of deadly sais unlike anything you've ever seen before, and put them into your inventory.";
		wait for any key;
		decrease the specPoints of the player by 10;
		say "[description of the Underworld Claws]";
		now the Underworld Claws is carried by the player. 
		
Underworld Unlock ends when the player is in F106.

Chaos Unlock is a scene.
Chaos Unlock begins when the player is in Edge of Shadows.
Every turn during the Chaos Unlock:
	if the bloodPoints of the player is 5:
		say "All five bloody marks on your arm begin to grow darker, and darker shades of red, as it shoots a powerful bloody pillar of energy straight into the sky.";
		wait for any key;
		say "In that instant a weapon created through the blood of the enemies you've slain, descends and hoovers inches above the ground.";
		wait for any key;
		say "You extend your arm out to grab the Chaos Maul, an axe sharp enough to easily cut through nearly anything, and put it into your inventory.";
		wait for any key;
		decrease the bloodPoints of the player by 10;
		say "[description of the Chaos Maul]";
		now the Chaos Maul is carried by the player. 
		
Chaos Unlock ends when the player is in F106. 

Miscellaneous Mechanics ends here.