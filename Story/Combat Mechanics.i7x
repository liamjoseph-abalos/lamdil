Combat Mechanics by Lamdil begins here.

Chapter 1 - Player

A person has a number called maximum hit points. A person has a number called current hit points. 
A person can be hostile or docile. A person is usually docile. The player is docile. 
Definition: a person is dead if their current hit points are less than 1.
Definition: a person is docile if a person is dead.
A gotHit is a kind of value. The gotHits are hit, notHit. The player has a gotHit. The player is notHit.

The current hit points of the player is 20. The maximum hit points of the player is 20.
Carry out the player attacking player with something (this is the standard attacking player with a weapon rule): 
	decrease the current hit points of the player by the damage inflicted; 
	if the player is dead:
		now the current hit points of the player is 0;
		end the story saying "You accidentally commit suicide".
		
Chapter 2 - Dodging

The player has a number called dodgeTrue. The dodgeTrue of the player is 0.
The player has a number called minDodge. The minDodge of the player is 16.
Understand "dodge" and "evade" as dodging. Dodging is an action applying to nothing.
Check dodging:
	if the player is not hostile:
		say "You are not engaged in combat.";
		stop the action.
Carry out dodging:
	let x be a random number between minDodge of the player and 20;
	if x is 20:
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

Chapter 4 - Parrying

The player has a number called parryTrue. The parryTrue of the player is 0.
The player has a number called minParry. The minParry of the player is 11.
The player has a number called riposteDamage. The riposteDamage of the player is 5.
Understand "parry" and "counter" and "riposte" as parrying. Parrying is an action applying to nothing.
Check parrying:
	if the player is not hostile:
		say "You are not engaged in combat.";
		stop the action.
Carry out parrying:
	let x be a random number between minParry of the player and 20;
	if x is 20:
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

Chapter 5 - Staggering

Chapter 6 - Weapons

[REVAMP COMBAT]

A weapon is a kind of thing. A weapon is always wearable. A weapon has a number called the maximum damage. A weapon has a number called current turns. A weapon has a number called multihits.
Understand the commands "fight" and "attack" and "punch" and "kill" and "murder" and "hit" and "thump" and "torture" and "stab" as something new. 
Attacking it with is an action applying to one visible thing and one carried thing. Understand "attack [someone] with [something preferably held]" as attacking it with. 
Understand the commands "fight" and "punch" and "kill" and "murder" and "hit" and "thump" and "torture" and "stab" as "attack". 
The attacking it with action has a number called the damage inflicted.

Check an actor attacking something with something (this is the can't attack with something that isn't a weapon rule): 
	if the second noun is not a weapon: 
		if the actor is the player, say "[The second noun] does not qualify as a weapon."; 
		stop the action. 
Check an actor attacking something with something (this is the can't attack a non-person rule): 
	if the noun is not a person: 
		if the actor is the player, say "[The noun] has no life to lose."; 
		stop the action. 

Section 1 - Light Weapons

Warden’s Chain is a weapon. The maximum damage of the Warden’s Chain is 8. The multihits of the Warden’s Chain is 1.
Setting action variables for attacking something with something: 
	if the second noun is a Warden’s Chain: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 2 and the maximum attack. 	
Report attacking someone with something (this is the normal attacking with Warden’s Chain report rule):
	if second noun is a Warden’s Chain:
		if the multihits of the Warden’s Chain is 1:
			say "Then you slam the Warden's Chain onto [the noun], dealing [damage inflicted] more point[s] of damage!" instead.	
Carry out an actor attacking something with Warden’s Chain (this is the standard attacking it with a Warden’s Chain rule):
	if the noun is dead: 
		if the noun is not the player:
			now the noun is nowhere;
			now the noun is docile;
	if the multihits of the Warden’s Chain is 1:
		decrease the current hit points of the noun by the damage inflicted; 
		say "You swipe up with the Warden's Chain, dealing [damage inflicted] point[s] of damage!";
		now the multihits of the Warden’s Chain is 0;
		if the noun is not the player:
			now the noun is hostile;
	if the multihits of the Warden’s Chain is 0:
		decrease the current hit points of the noun by the damage inflicted; 
		now the multihits of the Warden’s Chain is 1;
		stop the action.
		
Section  2 - Medium Weapons

The player carries a weapon called Shank. The maximum damage of the Shank is 2.
Setting action variables for attacking something with something: 
	if the second noun is a Shank: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 1 and the maximum attack;
		if the noun is not the player:
			now the noun is hostile;
Report attacking someone with something (this is the normal attacking with Shank report rule):
	if second noun is a Shank:
		say "You stab [the noun] with the shank, dealing [damage inflicted] point[s] of damage!" instead. 
Carry out an actor attacking something with Shank (this is the standard attacking it with a Shank rule): 
	decrease the current hit points of the noun by the damage inflicted; 
	if the noun is dead: 
		if the noun is not the player:
			now the noun is docile;
			now the noun is nowhere. 
			
Rusty Knife is a weapon. The maximum damage of the Rusty Knife is 3. 
Setting action variables for attacking something with something: 
	if the second noun is a Rusty Knife: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 3 and the maximum attack;
		if the noun is not the player:
			now the noun is hostile;
Report attacking someone with something (this is the normal attacking with Rusty Knife report rule):
	if second noun is a Rusty Knife:
		say "You stab [the noun] with the rusty knife, dealing [damage inflicted] point[s] of damage!" instead. 
Carry out an actor attacking something with Rusty Knife (this is the standard attacking it with a Rusty Knife rule): 
	decrease the current hit points of the noun by the damage inflicted; 
	if the noun is dead: 
		if the noun is not the player:
			now the noun is docile;
			now the noun is nowhere. 
			
Broken Sword is a weapon. The maximum damage of the Broken Sword is 10.
Setting action variables for attacking something with something: 
	if the second noun is a Broken Sword: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 6 and the maximum attack;
		if the noun is not the player:
			now the noun is hostile;
Report attacking someone with something (this is the normal attacking with Broken Sword report rule):
	if second noun is a Broken Sword:
		say "You slash at [the noun] with the broken sword, dealing [damage inflicted] point[s] of damage!" instead. 
Carry out an actor attacking something with Broken Sword (this is the standard attacking it with a Broken Sword rule): 
	decrease the current hit points of the noun by the damage inflicted; 
	if the noun is dead: 
		if the noun is not the player:
			now the noun is docile;
			now the noun is nowhere. 
			
Steel Sword is a weapon. The maximum damage of the Steel Sword is 12.
Setting action variables for attacking something with something: 
	if the second noun is a Steel Sword: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 9 and the maximum attack;
		if the noun is not the player:
			now the noun is hostile;
Report attacking someone with something (this is the normal attacking with Steel Sword report rule):
	if second noun is a Steel Sword:
		say "You swing at [the noun] with the steel sword, dealing [damage inflicted] point[s] of damage!" instead. 
Carry out an actor attacking something with Steel Sword(this is the standard attacking it with a Steel Sword rule): 
	decrease the current hit points of the noun by the damage inflicted; 
	if the noun is dead: 
		if the noun is not the player:
			now the noun is docile;
			now the noun is nowhere. 
			
Section 3 - Heavy Weapons

Diamond Pickaxe is a weapon. The maximum damage of the Diamond Pickaxe is 20. The current turns of the Diamond Pickaxe is 1. 
Setting action variables for attacking something with something: 
	if the second noun is a Diamond Pickaxe:
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 18 and the maximum attack. 	
Report attacking someone with something (this is the normal attacking with Diamond Pickaxe report rule):
	if the second noun is a Diamond Pickaxe:
		if the current turns of the Diamond Pickaxe is 0:
			say "You swing the diamond pickaxe over your shoulder." instead;
		if the current turns of the Diamond Pickaxe is 1:
			say "You slam the diamond pickaxe onto [the noun], finding [damage inflicted] diamond[s]!" instead.
Carry out an actor attacking something with Diamond Pickaxe (this is the standard attacking it with a Diamond Pickaxe rule):
	if the noun is dead: 
		if the noun is not the player:
			now the noun is docile;
			now the noun is nowhere;
	if the current turns of the Diamond Pickaxe is 1:
		now the current turns of the Diamond Pickaxe is 0;
		stop the action;
	if the current turns of the Diamond Pickaxe is 0:
		let x be a random number between 1 and 2;
		decrease the current hit points of the noun by the damage inflicted;
		if the noun is not the player:
			now the noun is hostile; 
		now the current turns of the Diamond Pickaxe is 1;
		stop the action.


Overseer's Flail is a weapon. The maximum damage of the Overseer's Flail is 26. The current turns of the Overseer's Flail is 1.
Setting action variables for attacking something with something: 
	if the second noun is a Overseer's Flail: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 22 and the maximum attack. 	
Report attacking someone with something (this is the normal attacking with Overseer's Flail report rule):
	if the second noun is a Overseer's Flail:
		if the current turns of the Overseer's Flail is 0:
			say "You brandish the Overseer's flail." instead;
		if the current turns of the Overseer's Flail is 1:
			say "You swing the Overseer's flail into [the noun], dealing [damage inflicted] point[s] of damage!" instead.
Carry out an actor attacking something with Overseer's Flail (this is the standard attacking it with a Overseer's Flail rule):
	if the noun is dead: 
		if the noun is not the player:
			now the noun is docile;
			now the noun is nowhere;
	if the current turns of the Overseer's Flail is 1:
		now the current turns of the Overseer's Flail is 0;
		stop the action;
	if the current turns of the Overseer's Flail is 0:
		decrease the current hit points of the noun by the damage inflicted; 
		if the noun is not the player:
			now the noun is hostile;
		now the current turns of the Overseer's Flail is 1;
		stop the action.
	

Combat Mechanics ends here.
