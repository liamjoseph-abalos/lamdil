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
The player has a number called minParry. The minParry of the player is 13.
The player has a number called riposteDamage. The riposteDamage of the player is 1.
Understand "parry" and "counter" and "riposte" and "p" as parrying. Parrying is an action applying to nothing.
Check parrying:
	if the player is not hostile:
		say "You are not engaged in combat.";
		stop the action;
	otherwise if the player is not wearing a weapon:
		say "You do not have a weapon to parry with.";
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

A weapon is a kind of thing. A weapon is always wearable. A weapon has a number called current turns. A weapon has a number called multihits. A weapon has a number called wepParry. A weapon has a number called wepRiposte. A weapon has a number called wepDodge. A weapon has a number called wepReduction.
Check the player wearing something (this is the standard already wearing weapon rule):
	if the noun is Wyvir's Judgement or the noun is Underworld Claws or the noun is Syth's Covenant:
		if the player is wearing weapon:
			say "You already have a weapon equipped.";
			stop the action;
		otherwise if the player is wearing shield:
			say "This weapon requires both hands be free to equip it.";
			stop the action;
	otherwise if the noun is weapon:
		if the player is wearing weapon:
			say "You already have a weapon equipped.";
			stop the action.
Report the player wearing weapon (this is the report player wearing weapon rule):
	if the noun is Wyvir's Judgement or the noun is Underworld Claws or the noun is Syth's Covenant:
		instead say "You equip [noun] on both hands.";
	otherwise:
		instead say "You equip [noun] on your main-hand.".
Report the player taking off weapon (this is the report player taking off weapon rule):
	if the noun is Wyvir's Judgement or the noun is Underworld Claws or the noun is Syth's Covenant:
		instead say "You unequip [noun] from both hands.";
	otherwise:
		instead say "You unequip [noun] from your main-hand.".
Carry out the player wearing weapon (this is the carry out player wearing weapon rule):
	let x be the minParry of the player;
	now the minParry of the player is x minus wepParry of the noun;
	let w be the riposteDamage of the player;
	now the riposteDamage of the player is w plus wepRiposte of the noun;
	let y be the minDodge of the player;
	now the minDodge of the player is y minus wepDodge of the noun;
	let z be the damageReduction of the player;
	now the damageReduction of the player is z plus wepReduction of the noun.
Carry out the player taking off weapon (this is the carry out player removing weapon rule):
	let x be the minParry of the player;
	now the minParry of the player is x plus wepParry of the noun;
	let w be the riposteDamage of the player;
	now the riposteDamage of the player is w minus wepRiposte of the noun;
	let y be the minDodge of the player;
	now the minDodge of the player is y plus wepDodge of the noun;
	let z be the damageReduction of the player;
	now the damageReduction of the player is z minus wepReduction of the noun.
	
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

Warden’s Chain is a weapon. The multihits of the Warden’s Chain is 1. The wepParry of Warden's Chain is -3. The wepRiposte of the Warden's Chain is 8. The wepDodge of the Warden's Chain is 1.
Setting action variables an actor hitting:
	if the actor is the player:
		if the player is wearing Warden's Chain: 
			now the damage inflicted is a random number between 2 and 8. [avg dmg 5; deviation 3]	
Report the player hitting something:
	if the player is wearing Warden's Chain: 
		if the multihits of the Warden’s Chain is 1:
			say "You slam the Warden's Chain onto [the noun], dealing [damage inflicted] more point[s] of damage!" instead.	
Carry out the player hitting something:
	if the player is wearing Warden's Chain: 
		if the multihits of the Warden’s Chain is 1:
			decrease the current hit points of the noun by the damage inflicted; 
			say "You swipe up with the Warden's Chain, dealing [damage inflicted] point[s] of damage![line break]";
			now the multihits of the Warden’s Chain is 0;
			if the noun is not the player:
				now the noun is hostile;
		if the multihits of the Warden’s Chain is 0:
			now the damage inflicted is a random number between 2 and 8; [avg dmg 5; deviation 3]	
			decrease the current hit points of the noun by the damage inflicted; 
			if the noun is dead: 
				if the noun is not the player:
					now the noun is nowhere;
					now the noun is docile;
			now the multihits of the Warden’s Chain is 1;
			stop the action.
			
Sacrificial Kris is a weapon. The multihits of the Sacrificial Kris is 1. The wepParry of the Sacrificial Kris is -1. The wepRiposte of the Sacrificial Kris is 16. The wepDodge of the Sacrificial Kris is 1.
Setting action variables an actor hitting:
	if the actor is the player:
		if the player is wearing Sacrificial Kris: 
			now the damage inflicted is a random number between 2 and 14. [avg dmg 8; deviation 6] 	
Report the player hitting something:
	if the player is wearing Sacrificial Kris: 
		if the multihits of the Sacrificial Kris is 1:
			say "You uppercut [the noun], dealing [damage inflicted] more point[s] of damage!" instead.	
Carry out the player hitting something:
	if the player is wearing Sacrificial Kris: 
		if the multihits of the Sacrificial Kris is 1:
			decrease the current hit points of the noun by the damage inflicted; 
			say "You stab [the noun] with the sacrificial kris, dealing [damage inflicted] point[s] of damage![line break]";
			now the multihits of the Sacrificial Kris is 0;
			if the noun is not the player:
				now the noun is hostile;
		if the multihits of the Sacrificial Kris is 0:
			now the damage inflicted is a random number between 2 and 14; [avg dmg 8; deviation 6]
			decrease the current hit points of the noun by the damage inflicted; 
			if the noun is dead: 
				if the noun is not the player:
					now the noun is nowhere;
					now the noun is docile;
			now the multihits of the Sacrificial Kris is 1;
			stop the action.

Thief's Baselard is a weapon. The multihits of the Thief's Baselard is 1. The wepParry of the Thief's Baselard is -1. The wepRiposte of the Thief's Baselard is 25. The wepDodge of the Thief's Baselard is 2.
Setting action variables an actor hitting:
	if the actor is the player:
		if the player is wearing Thief's Baselard: 
			now the damage inflicted is a random number between 4 and 22. [avg dmg 13; deviation 9] 	
Report the player hitting something:
	if the player is wearing Thief's Baselard: 
		if the multihits of the Thief's Baselard is 1:
			say "You backstab [the noun], dealing [damage inflicted] more point[s] of damage!" instead.	
Carry out the player hitting something:
	if the player is wearing Thief's Baselard: 
		if the multihits of the Thief's Baselard is 1:
			decrease the current hit points of the noun by the damage inflicted; 
			say "You gash [the noun] with the thief's baselard, dealing [damage inflicted] point[s] of damage![line break]";
			now the multihits of the Thief's Baselard is 0;
			if the noun is not the player:
				now the noun is hostile;
		if the multihits of the Thief's Baselard is 0:
			now the damage inflicted is a random number between 4 and 22; [avg dmg 13; deviation 9]
			decrease the current hit points of the noun by the damage inflicted; 
			if the noun is dead: 
				if the noun is not the player:
					now the noun is nowhere;
					now the noun is docile;
			now the multihits of the Thief's Baselard is 1;
			stop the action.

Underworld Claws is a weapon. The multihits of the Underworld Claws is 1. The wepParry of the Underworld Claws is -2. The wepRiposte of the Underworld Claws is 35. The wepDodge of the Underworld Claws is 2.
Setting action variables an actor hitting:
	if the actor is the player:
		if the player is wearing Underworld Claws: 
			now the damage inflicted is a random number between 6 and 30. [avg dmg 18; deviation 12] 	
Report the player hitting something:
	if the player is wearing Underworld Claws: 
		if the multihits of the Underworld Claws is 1:
			say "You sink the claws into [the noun], dealing [damage inflicted] more point[s] of damage!" instead.	
Carry out the player hitting something:
	if the player is wearing Underworld Claws: 
		if the multihits of the Underworld Claws is 1:
			decrease the current hit points of the noun by the damage inflicted; 
			say "You lunge at [the noun] with the underworld claws, dealing [damage inflicted] point[s] of damage![line break]";
			now the multihits of the Underworld Claws is 0;
			if the noun is not the player:
				now the noun is hostile;
		if the multihits of the Underworld Claws is 0:
			now the damage inflicted is a random number between 6 and 30; [avg dmg 18; deviation 12] 
			decrease the current hit points of the noun by the damage inflicted; 
			if the noun is dead: 
				if the noun is not the player:
					now the noun is nowhere;
					now the noun is docile;
			now the multihits of the Underworld Claws is 1;
			stop the action.

Syth's Covenant is a weapon. The multihits of the Syth's Covenant is 2. The wepParry of the Syth's Covenant is -3. The wepRiposte of the Syth's Covenant is 46. The wepDodge of the Syth's Covenant is 3.
Setting action variables an actor hitting:
	if the actor is the player:
		if the player is wearing Syth's Covenant: 
			now the damage inflicted is a random number between 10 and 40. [avg dmg 25; deviation 15] 	
Report the player hitting something:
	if the player is wearing Syth's Covenant: 
		if the multihits of the Syth's Covenant is 2:
			say "Your katars drain the soul of [the noun], healing you for [damage inflicted] point[s]!" instead.	
Carry out the player hitting something:
	if the player is wearing Syth's Covenant: 
		if the multihits of the Syth's Covenant is 2:
			decrease the current hit points of the noun by the damage inflicted; 
			say "You drive the katars into [the noun], dealing [damage inflicted] point[s] of damage![line break][line break]";
			now the multihits of the Syth's Covenant is 1;
			if the noun is not the player:
				now the noun is hostile;
		if the multihits of the Syth's Covenant is 1:
			now the damage inflicted is a random number between 10 and 40; [avg dmg 25; deviation 15] 
			decrease the current hit points of the noun by the damage inflicted; 
			say "You retract the daggers and repeatedly gash [the noun], dealing [damage inflicted] more point[s] of damage!";
			if the noun is dead: 
				if the noun is not the player:
					now the noun is nowhere;
					now the noun is docile;
			now the multihits of the Syth's Covenant is 0;
		if the multihits of the Syth's Covenant is 0:
			now the damage inflicted is a random number between 1 and 3;
			increase the current hit points of the player by the damage inflicted;
			if the current hit points of the player is greater than the maximum hit points of the player:
				now the current hit points of the player is the maximum hit points of the player;
			now the multihits of the Syth's Covenant is 2;
			stop the action. 
		
Section  2 - Medium Weapons
		
Rusty Knife is a weapon. The wepParry of the Rusty Knife is -1. The wepRiposte of the Rusty Knife is 4. The wepDodge of the Rusty Knife is 1. [This is a starting weapon, do not use for damage scaling]
Setting action variables for an actor hitting:
	if the actor is the player:
		if the player is wearing Rusty Knife: 
			now the damage inflicted is a random number between 3 and 5; [avg dmg 4; deviation 1]
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
			
Broken Sword is a weapon. The wepParry of the Broken Sword is 1. The wepRiposte of the Broken Sword is 12. The wepDodge of the Broken Sword is 1.
Setting action variables for an actor hitting:
	if the actor is the player:
		if the player is wearing Broken Sword: 
			now the damage inflicted is a random number between 6 and 12; [avg dmg 9; deviation 3]
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
			
Steel Sword is a weapon. The wepParry of the Steel Sword is 2. The wepRiposte of the Steel Sword is 24. The wepDodge of the Steel Sword is -2. 
Setting action variables for an actor hitting:
	if the actor is the player:
		if the player is wearing Steel Sword: 
			now the damage inflicted is a random number between 10 and 22; [avg dmg 16; deviation 6]
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
				
Runic Claymore is a weapon. The wepParry of the Runic Claymore is 3. The wepRiposte of the Runic Claymore is 37. The wepDodge of the Runic Claymore is -3.
Setting action variables for an actor hitting:
	if the actor is the player:
		if the player is wearing Runic Claymore: 
			now the damage inflicted is a random number between 16 and 34; [avg dmg 25; deviation 9]
			if the noun is not the player:
				now the noun is hostile.
Report the player hitting something:
	if the player is wearing Runic Claymore:
		say "You thrust the runic claymore at [the noun], dealing [damage inflicted] point[s] of damage!" instead. 
Carry out the player hitting something:
	if the player is wearing Runic Claymore:
		decrease the current hit points of the noun by the damage inflicted; 
		if the noun is dead: 
			if the noun is not the player:
				now the noun is docile;
				now the noun is nowhere. 
				
Treacherous Zweihander is a weapon. The wepParry of the Treacherous Zweihander is 4. The wepRiposte of the Treacherous Zweihander is 53. The wepDodge of the Treacherous Zweihander is -4.
Setting action variables for an actor hitting:
	if the actor is the player:
		if the player is wearing Treacherous Zweihander: 
			now the damage inflicted is a random number between 24 and 48; [avg dmg 36; deviation 12]
			if the noun is not the player:
				now the noun is hostile.
Report the player hitting something:
	if the player is wearing Treacherous Zweihander:
		say "You lacerate [the noun] with the treacherous zweihander, dealing [damage inflicted] point[s] of damage!" instead. 
Carry out the player hitting something:
	if the player is wearing Treacherous Zweihander:
		decrease the current hit points of the noun by the damage inflicted; 
		if the noun is dead: 
			if the noun is not the player:
				now the noun is docile;
				now the noun is nowhere. 
				
Zoric's Damnation is a weapon. The multihits of Zoric's Damnation is 1. The wepParry of the Zoric's Damnation is 4. The wepRiposte of the Zoric's Damnation is 70. The wepDodge of the Zoric's Damnation is -5.
Setting action variables an actor hitting:
	if the actor is the player:
		if the player is wearing Zoric's Damnation: 
			now the damage inflicted is a random number between 34 and 64. [avg dmg 49; deviation 15]
Report the player hitting something:
	if the player is wearing Zoric's Damnation: 
		if the multihits of the Zoric's Damnation is 1:
			say "Zoric's spirit emerges from the blade and crashes into [the noun], dealing [damage inflicted] more point[s] of damage!" instead.	
Carry out the player hitting something:
	if the player is wearing Zoric's Damnation: 
		if the multihits of the Zoric's Damnation is 1:
			decrease the current hit points of the noun by the damage inflicted; 
			say "Energy rushes through the blade as you pierce the [the noun], dealing [damage inflicted] point[s] of damage![line break]";
			now the multihits of the Zoric's Damnation is 0;
			if the noun is not the player:
				now the noun is hostile;
		if the multihits of the Zoric's Damnation is 0:
			now the damage inflicted is a random number between 4 and 10; [avg dmg 7; deviation 3]
			decrease the current hit points of the noun by damage inflicted; 
			if the noun is dead: 
				if the noun is not the player:
					now the noun is nowhere;
					now the noun is docile;
			now the multihits of the Zoric's Damnation is 1;
			stop the action.
			
Section 3 - Heavy Weapons

Diamond Pickaxe is a weapon. The current turns of the Diamond Pickaxe is 1. The wepParry of the Diamond Pickaxe is -1. The wepRiposte of the Diamond Pickaxe is 20. The wepReduction of the Diamond Pickaxe is 2.
Setting action variables for an actor hitting:
	if the actor is the player: 
		if the player is wearing Diamond Pickaxe:
			now the damage inflicted is a random number between 16 and 20. [avg dmg 18; deviation 2]
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

Overseer's Flail is a weapon. The current turns of the Overseer's Flail is 1. The wepParry of the Overseer's Flail is -2. The wepRiposte of the Overseer's Flail is 37. The wepDodge of the Overseer's Flail is -1. The wepReduction of the Overseer's Flail is 4.
Setting action variables for an actor hitting:
	if the actor is the player: 
		if the player is wearing Overseer's Flail: 
			now the damage inflicted is a random number between 28 and 36. [avg dmg 32; deviation 4]
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
			
Chaos Maul is a weapon. The current turns of the Chaos Maul is 1. The wepParry of the Chaos Maul is -2. The wepRiposte of the Chaos Maul is 58. The wepDodge of the Chaos Maul is -2. The wepReduction of the Chaos Maul is 7.
Setting action variables for an actor hitting:
	if the actor is the player: 
		if the player is wearing Chaos Maul: 
			now the damage inflicted is a random number between 44 and 56. [avg dmg 50; deviation 6]
Report the player hitting something:
	if the player is wearing Chaos Maul:
		if the current turns of the Chaos Maul is 0:
			say "You raise the chaos maul over your head." instead;
		if the current turns of the Chaos Maul is 1:
			say "You crash the chaos maul down upon [the noun], dealing [damage inflicted] point[s] of damage!" instead.
Carry out the player hitting something:
	if the player is wearing Chaos Maul:
		if the current turns of the Chaos Maul is 1:
			now the current turns of the Chaos Maul is 0;
			stop the action;
		if the current turns of the Chaos Maul is 0:
			decrease the current hit points of the noun by the damage inflicted; 
			if the noun is not the player:
				now the noun is hostile;
			if the noun is dead: 
				if the noun is not the player:
					now the noun is docile;
					now the noun is nowhere;
			now the current turns of the Chaos Maul is 1;
			stop the action.

Spiked Mace is a weapon. The current turns of the Spiked Mace is 1. The wepParry of the Spiked Mace is -3. The wepRiposte of the Spiked Mace is 83. The wepDodge of the Spiked Mace is -3. The wepReduction of the Spiked Mace is 9.
Setting action variables for an actor hitting:
	if the actor is the player: 
		if the player is wearing Spiked Mace: 
			now the damage inflicted is a random number between 64 and 80. [avg dmg 72; deviation 8]
Report the player hitting something:
	if the player is wearing Spiked Mace:
		if the current turns of the Spiked Mace is 0:
			say "You swing the spiked mace behind you." instead;
		if the current turns of the Spiked Mace is 1:
			say "You brutalize [the noun] with the spiked mace, dealing [damage inflicted] point[s] of damage!" instead.
Carry out the player hitting something:
	if the player is wearing Spiked Mace:
		if the current turns of the Spiked Mace is 1:
			now the current turns of the Spiked Mace is 0;
			stop the action;
		if the current turns of the Spiked Mace is 0:
			decrease the current hit points of the noun by the damage inflicted; 
			if the noun is not the player:
				now the noun is hostile;
			if the noun is dead: 
				if the noun is not the player:
					now the noun is docile;
					now the noun is nowhere;
			now the current turns of the Spiked Mace is 1;
			stop the action.
			
Wyvir's Judgement is a weapon. The current turns of the Wyvir's Judgement is 2. The wepParry of the Wyvir's Judgement is -2. The wepRiposte of the Wyvir's Judgement is 113. The wepDodge of the Wyvir's Judgement is -3. The wepReduction of the Wyvir's Judgement is 12. 
Setting action variables for an actor hitting:
	if the actor is the player: 
		if the player is wearing Wyvir's Judgement: 
			now the damage inflicted is a random number between 88 and 108. [avg dmg 98; deviation 10]
Report the player hitting something:
	if the player is wearing Wyvir's Judgement:
		if the current turns of the Wyvir's Judgement is 1:
			say "The labrys becomes imbued with flame." instead;
		if the current turns of the Wyvir's Judgement is 0:
			say "You cleave [the noun] as fire is discharged throughout their body, dealing [damage inflicted] point[s] of damage!" instead;
		if the current turns of the Wyvir's Judgement is 2:
			say "[The noun]'s body erupts in a blazing inferno, dealing [damage inflicted] point[s] of damage![line break]" instead.
Carry out the player hitting something:
	if the player is wearing Wyvir's Judgement:
		if the current turns of the Wyvir's Judgement is 2:
			now the current turns of the Wyvir's Judgement is 1;
			stop the action;
		if the current turns of the Wyvir's Judgement is 1:
			decrease the current hit points of the noun by the damage inflicted; 
			if the noun is not the player:
				now the noun is hostile;
			if the noun is dead: 
				if the noun is not the player:
					now the noun is docile;
					now the noun is nowhere;
			now the current turns of the Wyvir's Judgement is 0;
			stop the action;
		if the current turns of the Wyvir's Judgement is 0:
			now the damage inflicted is a random number between 62 and 82; [avg dmg 72; deviation 10]
			decrease the current hit points of the noun by the damage inflicted; 
			if the noun is dead: 
				if the noun is not the player:
					now the noun is docile;
					now the noun is nowhere;
			now the current turns of the Wyvir's Judgement is 2;
			stop the action.

Combat Mechanics ends here.