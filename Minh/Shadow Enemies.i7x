Shadow Enemies by Lamdil begins here.

Part 1 - Ghostly Apparitions

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
			say "You land a clean blow into one of the Apparition's specteral claws severing it completely. The Apparition screams in pain. [line break][line break]";
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
				say "The Ghostly Apparition's specteral claws grab hold of your shield and lash out towards you, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition's specteral claws burst through the floor below you and claw at your flesh, dealing [damage inflicted] point[s] of damage!";
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

Part 2 - Boss Enemies

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
				say "The Cannibal screams in agony as the soul of a prisoner escapes its body.[line break][line break]As the spirit fades away, it whispers to you, 'I have been set free...'";
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
				say "The Cannibal screams in agony as the soul of a prisoner escapes its body.[line break][line break]As the spirit fades away, it whispers to you, 'I have been set free...'";
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
				say "The Cannibal screams in agony as the soul of a prisoner escapes its body.[line break][line break]As the spirit fades away, it whispers to you, 'I have been set free...'";
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
		say "The Cannibal screams in agony as the soul of a prisoner escapes its body.[line break][line break]As the spirit fades away, it whispers to you, 'I have been set free...'" instead.

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
	

The player has a number called curse. The curse of the player is 0.
The player has a number called dread. The dread of the player is 0.
The current hit points of the Heretic is 4. The maximum hit points of the Heretic is 4.
The Heretic is hostile. 
The Heretic carries a weapon called Profaned Book. The current turns of the Profaned Book is 5.
Setting action variables for an actor hitting:
	if the actor is Heretic:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the Heretic's Arena: 
	if the Heretic is hostile, try Heretic hitting the player. 
Report Heretic hitting the player:
	if the current turns of the Profaned Book is 4:
		say "The Heretic opens her book and begins muttering a curse." instead;
	if the current turns of the Profaned Book is 3:
		if the dodgeTrue of the player is 1:
			say "The Heretic launches a hex towards you but misses by a hair.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "Before the Heretic can finish preparing her curse, you strike the tome out of her hands, interrupting the chant.[line break][line break]";
			if the Heretic is dead:
				say "As the Heretic scrambles to find her book, you go in for a lethal blow, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Heretic's skin begins to disintegrate as the tome consumes her flesh.[line break][line break]You see a spirit escape from the body and fade into the darkness.";
				now the Heretic is nowhere;
				now the Heretic is docile;
			otherwise:
				say "As the Heretic scrambles to find her book, you go in for a lethal blow, dealing [riposteDamage of the player] damage![line break][line break]";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Heretic hurls a hex right into your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Heretic is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "A hex bursts from the Heretic's hand and strikes your chest, dealing [damage inflicted] point[s] of damage!";
			now the curse of the player is 3;
		otherwise:
			say "The Heretic is unable to penetrate your armour.";
	if the current turns of the Profaned Book is 2:
		say "The Heretic grows tired from expending her energy." instead;
	if the current turns of the Profaned Book is 1:
		say "The Heretic regains her strength and beings absorbing corrupted energy into her body." instead;
	if the current turns of the Profaned Book is 0:
		if the dodgeTrue of the player is 1:
			say "An aura of dread expands from the Heretic but you step back enough to avoid the hit.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You knock the Heretic off balance, interrupting her focus.[line break][line break]";
			if the Heretic is dead:
				say "The energy around the Heretic becomes less menacing; you go in for a devastating strike, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Heretic's skin begins to disintegrate as the tome consumes her flesh.[line break][line break]You see a spirit escape from the body and fade into the darkness.";
				now the Heretic is nowhere;
				now the Heretic is docile;
			otherwise:
				say "The energy around the Heretic becomes less menacing; you go in for a devastating strike, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "An aura of dread surrounds the Heretic and strikes your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Heretic is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Heretic casts a pulsing aura of dread, dealing [damage inflicted] point[s] of damage!";
			now the dread of the player is 2;
		otherwise:
			say "The Heretic is unable to penetrate your armour.";
	if the current turns of the Profaned Book is 5:
		say "The Heretic abruptly closes her book." instead.
Report hitting a dead Heretic:
		now the curse of the player is 0;
		say "The Heretic's skin begins to disintegrate as the tome consumes her flesh.[line break][line break]You see a spirit escape from the body and fade into the darkness." instead.

Report Heretic hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Heretic conjures a curse, binding you in place."; 
	end the story saying "The Heretic opens her tome and begins draining your soul"; 
	stop the action.
Carry out Heretic hitting the player:
	if the current turns of the Profaned Book is 5:
		now the player is hit;
		now the current turns of the Profaned Book is 4;
		stop the action;
	if the current turns of the Profaned Book is 4:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Heretic by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Profaned Book is 3;
		stop the action;
	if the current turns of the Profaned Book is 3:
		now the player is notHit;
		now the current turns of the Profaned Book is 2;
		stop the action;
	if the current turns of the Profaned Book is 2:
		now the player is hit;
		now the current turns of the Profaned Book is 1;
		stop the action;
	if the current turns of the Profaned Book is 1:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Heretic by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
			now the dread of the player is 1;
		now the current turns of the Profaned Book is 0;
		stop the action;
	if the current turns of the Profaned Book is 0:
		now the player is notHit;
		now the current turns of the Profaned Book is 5;
		stop the action.	
Every turn when the curse of the player is greater than 0:
	let x be a random number between 1 and 2;
	decrease the current hit points of the player by x;
	say "The curse withers away your soul, dealing [x] point[s] of damage!";
	decrease the curse of the player by 1;
	if the player is dead:
		end the story saying "Your body succumbs to the curse as you wither away".
Every turn when the dread of the player is greater than 0:
	if the dread of the player is 2:
		decrease the dread of the player by 1;
	otherwise:
		let x be a random number between 3 and 5;
		decrease the current hit points of the player by x;
		say "The aura around the Heretic erupts in a blast of corrupted energy, dealing [x] point[s] of damage!";
		decrease the dread of the player by 1;
	if the player is dead:
		end the story saying "As you lie dying on the ground, you can feel the demons feeding at your soul".

Shadow Enemies ends here.
