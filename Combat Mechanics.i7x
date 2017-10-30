Combat Mechanics by Lamdil begins here.

Chapter 1 - Player

A person has a number called maximum hit points. A person has a number called current hit points. 
A person can be hostile or docile. A person is usually docile. The player is docile. 
Definition: a person is dead if their current hit points are less than 1.
Definition: a person is docile if a person is dead.
A gotHit is a kind of value. The gotHits are hit, notHit. The player has a gotHit. The player is notHit.
The current hit points of the player is 20. The maximum hit points of the player is 20.
		
Chapter 2 - Dodging

The player has a number called dodgeTrue. The dodgeTrue of the player is 0.
The player has a number called minDodge. The minDodge of the player is 9.
Understand "dodge" and "evade" and "do" as dodging. Dodging is an action applying to nothing.
Check dodging:
	if the player is not hostile:
		say "You are not engaged in combat.";
		stop the action.
Carry out dodging:
	let x be a random number between 1 and 20;
	if x <= 20 and x >= minDodge of the player:
		if the player is hit:
			say "You swiftly evade the attack.";
			now dodgeTrue of the player is 1;
		otherwise:
			say "You dodged too early.";
			now the dodgeTrue of the player is 0;
	otherwise:
		if the player is hit:
			say "You are too slow to avoid the hit.";
			now the dodgeTrue of the player is 0;
		otherwise:
			say "You dodged too early.";
			now the dodgeTrue of the player is 0.
			
Chapter 3 - Blocking

The player has a number called blockTrue. The blockTrue of the player is 0.
The player has a number called maxBlock. The maxBlock of the player is 0.
Understand "block" and "guard" and "b" as blocking. Blocking is an action applying to nothing.
Check blocking:
	if the player is not hostile:
		say "You are not engaged in combat.";
		stop the action;
	otherwise if the player is not wearing a shield:
		say "You can't block with your current equipment.";
		stop the action.
Carry out blocking:
	if maxBlock of the player > 0:
		if the player is hit:
			say "You block the attack, preventing [damagePrevented of the player] point[s] of damage!";
			now the blockTrue of the player is 1;
			decrease maxBlock of the player by 1;
		otherwise:
			say "You blocked too early.";
			now the blockTrue of the player is 0;
	otherwise:
		say "Your shield has broken from taking too many hits.";
		now the blockTrue of the player is 0.

Chapter 4 - Parrying

The player has a number called parryTrue. The parryTrue of the player is 0.
The player has a number called minParry. The minParry of the player is 11.
The player has a number called riposteDamage. The riposteDamage of the player is 5.
Understand "parry" and "counter" and "riposte" and "p" as parrying. Parrying is an action applying to nothing.
Check parrying:
	if the player is not hostile:
		say "You are not engaged in combat.";
		stop the action.
Carry out parrying:
	let x be a random number between 1 and 20;
	if x <= 20 and x >= minParry of the player:
		if the player is hit:
			say "You fend off the attack.";
			now the parryTrue of the player is 1;
		otherwise:
			say "You parried too early.";
			now the parryTrue of the player is 0;
	otherwise:
		if the player is hit:
			say "You greatly mistime the counter.";
			now the parryTrue of the player is 0;
		otherwise:
			say "You parried too early.";
			now the parryTrue of the player is 0.
			
Chapter 5 - Weapons

A weapon is a kind of thing. A weapon is always wearable. A weapon has a number called current turns. A weapon has a number called multihits.
Check the player wearing something (this is the standard already wearing weapon rule):
	if the noun is weapon:
		if the player is wearing weapon:
			say "You already have a weapon equipped.";
			stop the action.
Report the player wearing weapon (this is the report player wearing weapon rule):
	instead say "You equip [noun] on your main-hand.".
Report the player taking off weapon (this is the report player taking off weapon rule):
	instead say "You unequip [noun] from your main-hand.".
	
Understand the commands "attack" and "punch" and "kill" and "murder" and "hit" and "torture" and "stab" and "thump" and "fight" and "a"as something new. 
Hitting is an action applying to one visible thing. Understand "hit [someone]" as hitting.
Understand the commands "punch" and "kill" and "murder" and "attack" and "torture" and "stab" and "thump" and "fight" and "a" as "hit". 
The hitting action has a number called the damage inflicted. 
Check the player hitting something: 
	if the noun is not a person:
		say "You can't attack that." instead;
		stop the action;
	otherwise if the noun is the player:
		say "Suicide is not an option." instead;
		stop the action.
		
Setting action variables for an actor hitting:
	if the actor is the player:
		if the player is not wearing a weapon:
			now the damage inflicted is 1;
			if the noun is not the player:
				now the noun is hostile.
Report the player hitting something:
	if the player is not wearing a weapon:
		say "You punch [the noun], dealing [damage inflicted] point[s] of damage!" instead. 
Carry out the player hitting something:
	if the player is not wearing a weapon:
		decrease the current hit points of the noun by the damage inflicted;
		if the noun is dead:
			if the noun is not the player:
				now the noun is docile;
				now the noun is nowhere.
		
Section 1 - Light Weapons

Warden’s Chain is a weapon. The multihits of the Warden’s Chain is 1.
Setting action variables an actor hitting:
	if the actor is the player:
		if the player is wearing Warden's Chain: 
			now the damage inflicted is a random number between 2 and 8. 	
Report the player hitting something:
	if the player is wearing Warden's Chain: 
		if the multihits of the Warden’s Chain is 1:
			say "Then you slam the Warden's Chain onto [the noun], dealing [damage inflicted] more point[s] of damage!" instead.	
Carry out the player hitting something:
	if the player is wearing Warden's Chain: 
		if the multihits of the Warden’s Chain is 1:
			decrease the current hit points of the noun by the damage inflicted; 
			say "You swipe up with the Warden's Chain, dealing [damage inflicted] point[s] of damage!";
			now the multihits of the Warden’s Chain is 0;
			if the noun is not the player:
				now the noun is hostile;
		if the multihits of the Warden’s Chain is 0:
			decrease the current hit points of the noun by the damage inflicted; 
			if the noun is dead: 
				if the noun is not the player:
					now the noun is nowhere;
					now the noun is docile;
			now the multihits of the Warden’s Chain is 1;
			stop the action.
		
Section  2 - Medium Weapons

The player wears a weapon called Shank. 
Setting action variables for an actor hitting:
	if the actor is the player:
		if the player is wearing Shank: 
			now the damage inflicted is a random number between 1 and 2;
			if the noun is not the player:
				now the noun is hostile.
Report the player hitting something:
	if the player is wearing Shank:
		say "You stab [the noun] with the shank, dealing [damage inflicted] point[s] of damage!" instead. 
Carry out the player hitting something:
	if the player is wearing Shank: 
		decrease the current hit points of the noun by the damage inflicted; 
		if the noun is dead: 
			if the noun is not the player:
				now the noun is docile;
				now the noun is nowhere. 
			
Rusty Knife is a weapon. 
Setting action variables for an actor hitting:
	if the actor is the player:
		if the player is wearing Rusty Knife: 
			now the damage inflicted is a random number between 3 and 3;
			if the noun is not the player:
				now the noun is hostile.
Report the player hitting something:
	if the player is wearing Rusty Knife:
		say "You stab [the noun] with the rusty knife, dealing [damage inflicted] point[s] of damage!" instead. 
Carry out the player hitting something:
	if the player is wearing Rusty Knife: 
		decrease the current hit points of the noun by the damage inflicted; 
		if the noun is dead: 
			if the noun is not the player:
				now the noun is docile;
				now the noun is nowhere. 
			
Broken Sword is a weapon. 
Setting action variables for an actor hitting:
	if the actor is the player:
		if the player is wearing Broken Sword: 
			now the damage inflicted is a random number between 6 and 10;
			if the noun is not the player:
				now the noun is hostile.
Report the player hitting something:
	if the player is wearing Broken Sword:
		say "You slash at [the noun] with the broken sword, dealing [damage inflicted] point[s] of damage!" instead. 
Carry out the player hitting something:
	if the player is wearing Broken Sword:
		decrease the current hit points of the noun by the damage inflicted; 
		if the noun is dead: 
			if the noun is not the player:
				now the noun is docile;
				now the noun is nowhere. 
			
Steel Sword is a weapon.
Setting action variables for an actor hitting:
	if the actor is the player:
		if the player is wearing Steel Sword: 
			now the damage inflicted is a random number between 9 and 12;
			if the noun is not the player:
				now the noun is hostile.
Report the player hitting something:
	if the player is wearing Steel Sword:
		say "You swing at [the noun] with the steel sword, dealing [damage inflicted] point[s] of damage!" instead. 
Carry out the player hitting something:
	if the player is wearing Steel Sword:
		decrease the current hit points of the noun by the damage inflicted; 
		if the noun is dead: 
			if the noun is not the player:
				now the noun is docile;
				now the noun is nowhere. 
			
Section 3 - Heavy Weapons

Diamond Pickaxe is a weapon. The current turns of the Diamond Pickaxe is 1. 
Setting action variables for an actor hitting:
	if the actor is the player: 
		if the player is wearing Diamond Pickaxe:
			now the damage inflicted is a random number between 18 and 20. 	
Report the player hitting something:
	if the player is wearing Diamond Pickaxe:
		if the current turns of the Diamond Pickaxe is 0:
			say "You swing the diamond pickaxe over your shoulder." instead;
		if the current turns of the Diamond Pickaxe is 1:
			say "You slam the diamond pickaxe onto [the noun], finding [damage inflicted] diamond[s]!" instead.
Carry out the player hitting something:
	if the player is wearing Diamond Pickaxe:
		if the current turns of the Diamond Pickaxe is 1:
			now the current turns of the Diamond Pickaxe is 0;
			stop the action;
		if the current turns of the Diamond Pickaxe is 0:
			let x be a random number between 1 and 2;
			decrease the current hit points of the noun by the damage inflicted;
			if the noun is not the player:
				now the noun is hostile; 
			if the noun is dead: 
				if the noun is not the player:
					now the noun is docile;
					now the noun is nowhere;
			now the current turns of the Diamond Pickaxe is 1;
			stop the action.

Overseer's Flail is a weapon. The current turns of the Overseer's Flail is 1.
Setting action variables for an actor hitting:
	if the actor is the player: 
		if the player is wearing Overseer's Flail: 
			now the damage inflicted is a random number between 22 and 24. 	
Report the player hitting something:
	if the player is wearing Overseer's Flail:
		if the current turns of the Overseer's Flail is 0:
			say "You brandish the Overseer's flail." instead;
		if the current turns of the Overseer's Flail is 1:
			say "You swing the Overseer's flail into [the noun], dealing [damage inflicted] point[s] of damage!" instead.
Carry out the player hitting something:
	if the player is wearing Overseer's Flail:
		if the current turns of the Overseer's Flail is 1:
			now the current turns of the Overseer's Flail is 0;
			stop the action;
		if the current turns of the Overseer's Flail is 0:
			decrease the current hit points of the noun by the damage inflicted; 
			if the noun is not the player:
				now the noun is hostile;
			if the noun is dead: 
				if the noun is not the player:
					now the noun is docile;
					now the noun is nowhere;
			now the current turns of the Overseer's Flail is 1;
			stop the action.

Combat Mechanics ends here.
