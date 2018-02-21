Shadow Enemies by Lamdil begins here.

The Ghostly Apparition 1 is a man. The Ghostly Apparition 1 is in S6.
The current hit points of the Ghostly Apparition 1 is 10. The maximum hit points of the Ghostly Apparition 1 is 10.
The Ghostly Apparition 1 is hostile. 
The Ghostly Apparition 1 carries a weapon called Animate Claws. The current turns of the Animate Claws is 1.
Setting action variables for an actor hitting:
	if the actor is Ghostly Apparition 1:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the Void: 
	if the Ghostly Apparition 1 is hostile, try Ghostly Apparition 1 hitting the player. 
Report Ghostly Apparition 1 hitting the player:
	if the current turns of the Animate Claws is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. The ground around you seems restless." instead;
	if the current turns of the Animate Claws is 1:
		if the dodgeTrue of the player is 1:
			say "Noticing a rupture in the ground beneath you, you are able to quickly dodge out of the grasp of the Apparition's claws!";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You land a clean blow into one of the Apparition's spectral claws severing it completely. The Apparition screams in pain. [line break][line break]";
			if the Ghostly Apparition 1 is dead:
				say "Taking advantage of this opening you swing at the Ghostly Apparition, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Ghostly Apparition fades into the floor as its voice echoes through the room.";
				now the Ghostly Apparition 1 is nowhere;
				now the Ghostly Apparition 1 is docile;
			otherwise:
				say "Taking advantage of this opening you swing at the Ghostly Apparition, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Ghostly Apparition's spectral claws grab hold of your shield and lash out towards you, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition's spectral claws burst through the floor below you and claw at your flesh, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Ghostly Apparition is unable to penetrate your armour.".	
Report hitting a dead Ghostly Apparition 1:
		say "The Ghostly Apparition fades into the floor as its voice echoes through the room. " instead.

Report Ghostly Apparition 1 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Ghostly Apparition's spectral claws grabs hold of you and tears your arm from your body."; 
	end the story saying "More claws sprout from the ground clasping every limb in your body as they snap your neck. The claws pull you under the floor never to be seen again."; 
	stop the action.
Carry out Ghostly Apparition 1 hitting the player:
	if the current turns of the Animate Claws is 1:
		now the player is hit;
		now the current turns of the Animate Claws is 0;
		stop the action;
	if the current turns of the Animate Claws is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Ghostly Apparition 1 by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Animate Claws is 1;
		stop the action.
	
[	
The current hit points of the Abomination is 4. The maximum hit points of the Abomination is 4.
The Abomination is hostile. 
The Abomination carries a weapon called Limb. The current turns of the Limb is 1.
Setting action variables for an actor hitting:
	if the actor is Abomination:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the Endless Void: 
	if the Abomination is hostile, try Abomination hitting the player. 
Report Abomination hitting the player:
	if the current turns of the Limb is 0:
		say "The Deranged Prisoner gets ready to charge." instead;
	if the current turns of the Limb is 1:
		if the dodgeTrue of the player is 1:
			say "The Deranged Prisoner charges past you and misses.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "The Deranged Prisoner is knocked off guard.[line break][line break]";
			if the Abomination is dead:
				say "You riposte the Deranged Prisoner, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Deranged Prisoner writhes in pain before going limp.";
				now the Abomination is nowhere;
				now the Abomination is docile;
			otherwise:
				say "You riposte the Deranged Prisoner, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Deranged Prisoner strikes your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Deranged Prisoner is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Deranged Prisoner charges and slashes you with broken glass, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Deranged Prisoner is unable to penetrate your armour.".	
Report hitting a dead Abomination:
		say "The Deranged Prisoner writhes in pain before going limp." instead.

Report Abomination hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Deranged Prisoner quickly stabs your throat."; 
	end the story saying "The blood drains out your neck and you fall to the ground"; 
	stop the action.
Carry out Abomination hitting the player:
	if the current turns of the Limb is 1:
		now the player is hit;
		now the current turns of the Limb is 0;
		stop the action;
	if the current turns of the Limb is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Abomination by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Limb is 1;
		stop the action.	
]

Shadow Enemies ends here.
