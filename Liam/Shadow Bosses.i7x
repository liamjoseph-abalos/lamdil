Shadow Bosses by Lamdil begins here.

The current hit points of the Cannibal is 4. The maximum hit points of the Cannibal is 4.
The Cannibal is hostile. 
The Cannibal carries a weapon called Vicious Claws. The current turns of the Vicious Claws is 4.
Setting action variables for an actor hitting:
	if the actor is Cannibal:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the Temple: 
	if the Cannibal is hostile, try Cannibal hitting the player. 
Report Cannibal hitting the player:
	if the current turns of the Vicious Claws is 3:
		say "The Cannibal rapidly sniffs the air, and it catches your scent." instead;
	if the current turns of the Vicious Claws is 2:
		if the dodgeTrue of the player is 1:
			say "The Cannibal leaps at you, but you just barely sidestep the attack.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You slash the creature mid-air, causing it to stumble to the side.[line break][line break]";
			if the Cannibal is dead:
				say "Using your opening, you quickly jab the Cannibal, dealing [riposteDamage of the player] damage![line break][line break]";
				say "With the last stroke of your blade, the Cannibal yelps in pain and crumples to the floor and begins shrinking in size. As he shrinks he softly mutters something under his breath, you briefly catch the word, 'Ethiram'. At the sound of the mysterious being, you rush to the Cannibal's dying side and want to talk to him.";
				now the Cannibal is nowhere;
				now the Cannibal is docile;
			otherwise:
				say "Using your opening, you quickly jab the Cannibal, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Cannibal lunges and collides into your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Cannibal is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The creature lunges towards you and claws at your face, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Cannibal is unable to penetrate your armour.";	
	if the current turns of the Vicious Claws is 1:
		if the dodgeTrue of the player is 1:
			say "You evade the Cannibal's vicious uppercut.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You catch the Cannibal off-guard, leaving it open for attack.[line break][line break]";
			if the Cannibal is dead:
				say "You swing at the Cannibal's head, dealing [riposteDamage of the player] damage![line break][line break]";
				say "With the last stroke of your blade, the Cannibal yelps in pain and crumples to the floor and begins shrinking in size. As he shrinks he softly mutters something under his breath, you briefly catch the word, 'Ethiram'. At the sound of the mysterious being, you rush to the Cannibal's dying side and want to talk to him.";
				now the Cannibal is nowhere;
				now the Cannibal is docile;
			otherwise:
				say "You swing at the Cannibal's head, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Cannibal's claws slash your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Cannibal is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The creature lands a devastating uppercut with its claws, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Cannibal is unable to penetrate your armour.";
	if the current turns of the Vicious Claws is 0:
		if the dodgeTrue of the player is 1:
			say "The Cannibal tries to grab you, but you break free of his grasp.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You push the creature back as it attempts to grab you.[line break][line break]";
			if the Cannibal is dead:
				say "You slam your weapon down onto the Cannibal, dealing [riposteDamage of the player] damage![line break][line break]";
				say "With the last stroke of your blade, the Cannibal yelps in pain and crumples to the floor and begins shrinking in size. As he shrinks he softly mutters something under his breath, you briefly catch the word, 'Ethiram'. At the sound of the mysterious being, you rush to the Cannibal's dying side and want to talk to him.";
				now the Cannibal is nowhere;
				now the Cannibal is docile;
			otherwise:
				say "You slam your weapon down onto the Cannibal, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Cannibal's claws knock your shield back, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Cannibal is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Cannibal manages to grab you and sinks his long teeth into your flesh, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Cannibal is unable to penetrate your armour.";
	if the current turns of the Vicious Claws is 4:
		say "The Cannibal breathes heavily to catch its breath." instead.
Report hitting a dead Cannibal:
		say "With the last stroke of your blade, the Cannibal yelps in pain and crumples to the floor and begins shrinking in size. As he shrinks he softly mutters something under his breath, you briefly catch the word, 'Ethiram'. At the sound of the mysterious being, you rush to the Cannibal's dying side and want to talk to him." instead.

Report Cannibal hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Cannibal slashes your eyes, permanently blinding you, and knocks you onto the ground."; 
	end the story saying "The creature pins you with its inhuman strength and begins eating away at your stomach"; 
	stop the action.
Carry out Cannibal hitting the player:
	if the current turns of the Vicious Claws is 4:
		now the player is hit;
		now the current turns of the Vicious Claws is 3;
		stop the action;
	if the current turns of the Vicious Claws is 3:
		now the player is hit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Cannibal by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Vicious Claws is 2;
		stop the action;
	if the current turns of the Vicious Claws is 2:
		now the player is hit;
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 6 and 8 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 6 and 8 minus x;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Cannibal by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Vicious Claws is 1;
		stop the action;
	if the current turns of the Vicious Claws is 1:
		now the player is notHit;
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 9 and 11 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 9 and 11 minus x;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Cannibal by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Vicious Claws is 0;
		stop the action;
	if the current turns of the Vicious Claws is 0:
		now the player is notHit;
		now the current turns of the Vicious Claws is 4;
		stop the action.

Shadow Bosses ends here.
