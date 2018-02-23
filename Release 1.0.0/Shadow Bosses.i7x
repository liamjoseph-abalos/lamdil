Shadow Bosses by Lamdil begins here.

Understand "Devourer of Flesh" and "Devourer" as Cannibal.
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
	
Understand "Blasphemer of Gods" and "Blasphemer" as Heretic.
The player has a number called curse. The curse of the player is 0.
The player has a number called dread. The dread of the player is 0.
The current hit points of the Heretic is 4. The maximum hit points of the Heretic is 4.
The Heretic is docile. 
The Heretic carries a weapon called Profaned Book. The current turns of the Profaned Book is 5.
Setting action variables for an actor hitting:
	if the actor is Heretic:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the Desecrated Chapel: 
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
		end the story saying "As you lie dying on the ground, you can feel you soul being dragged to Hell".
		
Understand "Omen of Flame" and "Omen" as Arsonist.
The player has a number called ignite. The ignite of the player is 0.
The current hit points of the Arsonist is 4. The maximum hit points of the Arsonist is 4.
The Arsonist is docile. 
The Arsonist carries a weapon called Flaming Orb. The current turns of the Flaming Orb is 6.
Setting action variables for an actor hitting:
	if the actor is Arsonist:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the Scorched Wasteland: 
	if the Arsonist is hostile, try Arsonist hitting the player. 
Report Arsonist hitting the player:
	if the current turns of the Flaming Orb is 5:
		say "A small flame sprouts from the hand of the Arsonist." instead;
	if the current turns of the Flaming Orb is 4:
		if the dodgeTrue of the player is 1:
			say "Your face grows hot as the fiery orb passes you.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "The Arsonist stumbles back as you thrust your weapon towards his chest.[line break][line break]";
			if the Arsonist is dead:
				say "Taking advantage of the Arsonist's weakened state, you riposte him, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The flame extinguishes from the Arsonist's eyes as he falls to the ground.[line break][line break]You watch as a spectre quickly escapes from the Arsonist's body.";
				now the Arsonist is nowhere;
				now the Arsonist is docile;
			otherwise:
				say "Taking advantage of the Arsonist's weakened state, you riposte him, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "An orb of fire crashes against your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Arsonist is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Arsonist hurls a glowing orb of fire towards you, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Arsonist is unable to penetrate your armour.";
	if the current turns of the Flaming Orb is 3:
		say "The Arsonist slams the ground, sending rippling waves of fire towards you." instead;
	if the current turns of the Flaming Orb is 2:
		if the dodgeTrue of the player is 1:
			say "You leap over the waves of fire, barely escaping them.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You sidestep the flames and knock the Arsonist across the side of his head.[line break][line break]";
			if the Arsonist is dead:
				say "You follow up with a lethal swing, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The flame extinguishes from the Arsonist's eyes as he falls to the ground.[line break][line break]You watch as a spectre quickly escapes from the Arsonist's body.";
				now the Arsonist is nowhere;
				now the Arsonist is docile;
			otherwise:
				say "You follow up with a lethal swing, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The flames ignite your shield as they pass over you, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Arsonist is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The waves scorch your flesh as they crash down onto you, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Arsonist is unable to penetrate your armour.";
	if the current turns of the Flaming Orb is 1:
		say "The Arsonist becomes engulfed in fire as he concentrates his strength." instead;
	if the current turns of the Flaming Orb is 0:
		say "The air becomes unbearably hot as the Arsonist generates more flame." instead;
	if the current turns of the Flaming Orb is 6:
		if the dodgeTrue of the player is 1:
			say "Luckily, you roll to the side as a large pillar of flame erupts from your previous spot.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You weave through the pillars of flame erupting from the ground.[line break][line break]";
			if the Arsonist is dead:
				say "You get close enough to the Arsonist to strike him across the chest, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The flame extinguishes from the Arsonist's eyes as he falls to the ground.[line break][line break]You watch as a spectre quickly escapes from the Arsonist's body.";
				now the Arsonist is nowhere;
				now the Arsonist is docile;
			otherwise:
				say "You get close enough to the Arsonist to strike him across the chest, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Arsonist releases his energy and your shield absorbs part of the heat from the scorching pillars, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Arsonist is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Arsonist releases his energy, causing pillars of flame to erupt from the ground and severely burning you, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Arsonist is unable to penetrate your armour.".
Report hitting a dead Arsonist:
		say "The flame extinguishes from the Arsonist's eyes as he falls to the ground.[line break][line break]You watch as a spectre quickly escapes from the Arsonist's body." instead.

Report Arsonist hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Deranged Prisoner quickly stabs your throat."; 
	end the story saying "The blood drains out your neck and you fall to the ground"; 
	stop the action.
Carry out Arsonist hitting the player:
	if the current turns of the Flaming Orb is 6:
		now the player is hit;
		now the current turns of the Flaming Orb is 5;
		stop the action;
	if the current turns of the Flaming Orb is 5:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Arsonist by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
			increase the ignite of the player by 1;
		now the current turns of the Flaming Orb is 4;
		stop the action;
	if the current turns of the Flaming Orb is 4:
		now the player is hit;
		now the current turns of the Flaming Orb is 3;
		stop the action;
	if the current turns of the Flaming Orb is 3:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Arsonist by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
			increase the ignite of the player by 1;
		now the current turns of the Flaming Orb is 2;
		stop the action;
	if the current turns of the Flaming Orb is 2:
		now the player is notHit;
		now the current turns of the Flaming Orb is 1;
		stop the action;
	if the current turns of the Flaming Orb is 1:
		now the player is hit;
		now the current turns of the Flaming Orb is 0;
		stop the action;
	if the current turns of the Flaming Orb is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Arsonist by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
			increase the ignite of the player by 2;
		now the current turns of the Flaming Orb is 6;
		stop the action.
Every turn when the ignite of the player is greater than 0:
	if the ignite of the player is 1:
		let x be a random number between 1 and 2;
		decrease the current hit points of the player by x;
		say "The cinders burn your flesh, dealing [x] point[s] of damage.";
		if the player is dead:
			end the story saying "Your body becomes engulfed in blazes, reducing you to ashes";
	otherwise if the ignite of the player is 2:
		let x be a random number between 3 and 4;
		decrease the current hit points of the player by x;
		say "Embers sear your skin, dealing [x] point[s] of damage.";
		if the player is dead:
			end the story saying "Your body becomes engulfed in blazes, reducing you to ashes";
	otherwise if the ignite of the player is 3:
		let x be a random number between 5 and 6;
		decrease the current hit points of the player by x;
		say "Pieces of your armour become ignited, dealing [x] point[s] of damage.";
		if the player is dead:
			end the story saying "Your body becomes engulfed in blazes, reducing you to ashes";
	otherwise if the ignite of the player is greater than 3:
		let x be a random number between 7 and 8;
		decrease the current hit points of the player by x;
		say "Flames dance across your body, dealing [x] point[s] of damage.";
		if the player is dead:
			end the story saying "Your body becomes engulfed in blazes, reducing you to ashes".
		
Understand "Disciple of Death" and "Disciple" as Cutthroat.	
The current hit points of the Cutthroat is 4. The maximum hit points of the Cutthroat is 4.
The Cutthroat is hostile. 
The Cutthroat carries a weapon called Steel Knives. The current turns of the Steel Knives is 8.
Setting action variables for an actor hitting:
	if the actor is Cutthroat:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the Dilapidated Chamber:
	if the Cutthroat is hostile, try Cutthroat hitting the player. 
Report Cutthroat hitting the player:
	if the current turns of the Steel Knives is 7:
		say "The Cutthroat pulls out ten knives from his pockets." instead;
	if the current turns of the Steel Knives is 6:
		say "The Cutthroat throws five of his knives into the air." instead;
	if the current turns of the Steel Knives is 5:
		if the dodgeTrue of the player is 1:
			say "You lean backwards as the knives fly across your face.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You deflect the knives flying towards you.[line break][line break]";
			if the Cutthroat is dead:
				say "You dash towards the Cutthroat, landing a blow to his chest, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Cutthroat falls to his knees and takes in one more breath as his body falls to the ground.[line break][line break]A soul silently emerges from the Cutthroat's body and walks into the darkness.";
				now the Cutthroat is nowhere;
				now the Cutthroat is docile;
			otherwise:
				say "You dash towards the Cutthroat, landing a blow to his chest, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Cutthroat throws five knives which pierce your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Cutthroat is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Cutthroat flings five more knives towards your chest, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Cutthroat is unable to penetrate your armour.";
	if the current turns of the Steel Knives is 4:
		if the dodgeTrue of the player is 1:
			say "You leap away from the rain of knives.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You catch one of the falling knives.[line break][line break]";
			if the Cutthroat is dead:
				say "With deadly accuracy, you throw the knife into the Cutthroat's leg, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Cutthroat falls to his knees and takes in one more breath as his body falls to the ground.[line break][line break]A soul silently emerges from the Cutthroat's body and walks into the darkness.";
				now the Cutthroat is nowhere;
				now the Cutthroat is docile;
			otherwise:
				say "With deadly accuracy, you throw the knife into the Cutthroat's leg, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "You raise your shield as you brace the impact of the falling knives, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Cutthroat is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "Five knives fall down from above and pierce your skin, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Cutthroat is unable to penetrate your armour.";
	if the current turns of the Steel Knives is 3:
		say "The Cutthroat reaches into his sleeve for another knife." instead;
	if the current turns of the Steel Knives is 2:
		if the dodgeTrue of the player is 1:
			say "The Cutthroat throws his knife but you sidestep the projectile.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "The Cutthroat hurls his knife towards you but you strike the knife midair.[line break][line break]";
			if the Cutthroat is dead:
				say "You swing upwards with your weapon, hitting the Cutthroat in the chin, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Cutthroat falls to his knees and takes in one more breath as his body falls to the ground.[line break][line break]A soul silently emerges from the Cutthroat's body and walks into the darkness.";
				now the Cutthroat is nowhere;
				now the Cutthroat is docile;
			otherwise:
				say "You swing upwards with your weapon, hitting the Cutthroat in the chin, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "A long, silver knife flies straight into your shield, stabbing through the shield and into your arm, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Cutthroat is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "A long, silver knife flies rapidly into your shoulder, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Cutthroat is unable to penetrate your armour.";
	if the current turns of the Steel Knives is 1:
		say "The Cutthroat pulls out ten more knives from his belt." instead;
	if the current turns of the Steel Knives is 0:
		say "The Cutthroat crouches down low, preparing to strike." instead;
	if the current turns of the Steel Knives is 8:
		if the dodgeTrue of the player is 1:
			say "You roll away from the falling barrage of knives.";
		otherwise if the parryTrue of the player is 1:
			say "The Cutthroat leaps into the air but you catch him on the way up.[line break][line break]";
			if the Cutthroat is dead:
				say "You pull the Cutthroat down onto the ground and gash him with your weapon, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Cutthroat falls to his knees and takes in one more breath as his body falls to the ground.[line break][line break]A soul silently emerges from the Cutthroat's body and walks into the darkness.";
				now the Cutthroat is nowhere;
				now the Cutthroat is docile;
			otherwise:
				say "You pull the Cutthroat down onto the ground and gash him with your weapon, dealing [riposteDamage of the player] damage!";
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Cutthroat leaps into the air and launches a barrage of knives into your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Cutthroat is unable to penetrate your shield.";
		otherwise if damage inflicted > 0:
			say "The Cutthroat leaps into the air and launches a barrage of knives at you, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Cutthroat is unable to penetrate your armour.".
Report hitting a dead Cutthroat:
		say "The Cutthroat falls to his knees and takes in one more breath as his body falls to the ground.[line break][line break]A soul silently emerges from the Cutthroat's body and walks into the darkness." instead.

Report Cutthroat hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Cutthroat pulls out two knives and hurls them into your feet, pinning you to the ground."; 
	end the story saying "The Cutthroat unleashes a flurry blades towards you, tearing all the flesh from your bones"; 
	stop the action.
Carry out Cutthroat hitting the player:
	if the current turns of the Steel Knives is 8:
		now the player is notHit;
		now the current turns of the Steel Knives is 7;
		stop the action;
	if the current turns of the Steel Knives is 7:
		now the player is hit;
		now the current turns of the Steel Knives is 6;
		stop the action;
	if the current turns of the Steel Knives is 6: 
		now the player is hit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Cutthroat by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Steel Knives is 5;
		stop the action;	
	if the current turns of the Steel Knives is 5: 
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Cutthroat by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Steel Knives is 4;
		stop the action;	
	if the current turns of the Steel Knives is 4: 
		now the player is hit;
		now the current turns of the Steel Knives is 3;
		stop the action;
	if the current turns of the Steel Knives is 3: 
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Cutthroat by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Steel Knives is 2;
		stop the action;	
	if the current turns of the Steel Knives is 2: 
		now the player is notHit;
		now the current turns of the Steel Knives is 1;
		stop the action;
	if the current turns of the Steel Knives is 1: 
		now the player is hit;
		now the current turns of the Steel Knives is 0;
		stop the action;
	if the current turns of the Steel Knives is 0: 
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Cutthroat by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Steel Knives is 8;
		stop the action.
	
Understand "Herald of Agony" and "Herald" as Mercenary.
The current hit points of the Mercenary is 4. The maximum hit points of the Mercenary is 4.
The Mercenary is hostile. 
The Mercenary carries a weapon called Jagged Blade. The current turns of the Jagged Blade is 8.
Setting action variables for an actor hitting:
	if the actor is Mercenary:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the Dilapidated Chamber:
	if the Mercenary is hostile, try Mercenary hitting the player. 
Report Mercenary hitting the player:
	if the current turns of the Jagged Blade is 7:
		say "The Mercenary senses you through his blindfold." instead;
	if the current turns of the Jagged Blade is 6:
		say "The Mercenary sharpens his blade against his dagger." instead;
	if the current turns of the Jagged Blade is 5:
		say "The Mercenary grips his sword tightly." instead;
	if the current turns of the Jagged Blade is 4:
		say "The Mercenary bounds in your direction with terrifying speed." instead;
	if the current turns of the Jagged Blade is 3:
		if the dodgeTrue of the player is 1:
			say "You dodge the Mercenary's uppercut as his sword goes past your ear.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You parry the Mercenary's swift uppercut.[line break][line break]";
			if the Mercenary is dead:
				say "You drive your weapon into the Mercenary's stomach, dealing [riposteDamage of the player] damage![line break][line break]";
				say "Blood gushes out the mouth of the Mercenary as he collapses to the floor.[line break][line break]A spirit breaks free from the body of the Mercenary and disappears.";
				now the Mercenary is nowhere;
				now the Mercenary is docile;
			otherwise:
				say "You drive your weapon into the Mercenary's stomach, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "Anticipating the attack, you raise your shield to block his strike, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Mercenary is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Mercenary dashes up to you and lands a painful uppercut with his blade, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Mercenary is unable to penetrate your armour.";
	if the current turns of the Jagged Blade is 2:
		say "The Mercenary leaps backwards and prepares for another assault." instead;
	if the current turns of the Jagged Blade is 1:
		if the dodgeTrue of the player is 1:
			say "You roll out of the way as the Mercenary blinks behind you.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You quickly turn around and parry the Mercenary as he goes in for a backstab.[line break][line break]";
			if the Mercenary is dead:
				say "While the Mercenary's guard is down, you quickly jab his chest, dealing [riposteDamage of the player] damage![line break][line break]";
				say "Blood gushes out the mouth of the Mercenary as he collapses to the floor.[line break][line break]A spirit breaks free from the body of the Mercenary and disappears.";
				now the Mercenary is nowhere;
				now the Mercenary is docile;
			otherwise:
				say "While the Mercenary's guard is down, you quickly jab his chest, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Mercenary blinks behind you and stabs your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Mercenary is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Mercenary blinks behind you and stabs you in the back, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Mercenary is unable to penetrate your armour.";
	if the current turns of the Jagged Blade is 0:
		if the dodgeTrue of the player is 1:
			say "The Mercenary blinks away and dashes towards you but you avoid his attack.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You strike the Mercenary as he tries to blink away.[line break][line break]";
			if the Mercenary is dead:
				say "You land a crushing blow to his skull, dealing [riposteDamage of the player] damage![line break][line break]";
				say "Blood gushes out the mouth of the Mercenary as he collapses to the floor.[line break][line break]A spirit breaks free from the body of the Mercenary and disappears.";
				now the Mercenary is nowhere;
				now the Mercenary is docile;
			otherwise:
				say "You land a crushing blow to his skull, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Mercenary blinks away and dashes into your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Mercenary is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Mercenary blinks away and dashes across you, slicing your stomach, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Mercenary is unable to penetrate your armour.";
	if the current turns of the Jagged Blade is 8:
		if the dodgeTrue of the player is 1:
			say "The Mercenary blinks away and dashes towards you but you avoid his attack.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You counter the Mercenary's swing, knocking him off balance.[line break][line break]";
			if the Mercenary is dead:
				say "You swing your weapon across the Mercenary's face, dealing [riposteDamage of the player] damage![line break][line break]";
				say "Blood gushes out the mouth of the Mercenary as he collapses to the floor.[line break][line break]A spirit breaks free from the body of the Mercenary and disappears.";
				now the Mercenary is nowhere;
				now the Mercenary is docile;
			otherwise:
				say "You swing your weapon across the Mercenary's face, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Mercenary blinks above you and crashes his sword onto your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Mercenary is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Mercenary strikes you into the air and blinks above you, slamming you back onto the ground, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Mercenary is unable to penetrate your armour.".
Report hitting a dead Mercenary:
		say "Blood gushes out the mouth of the Mercenary as he collapses to the floor.[line break][line break]A spirit breaks free from the body of the Mercenary and disappears." instead.

Report Mercenary hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Mercenary blinks behind you and slices off one of your arms."; 
	end the story saying "The Mercenary dashes through you, ripping your body in half"; 
	stop the action.
Carry out Mercenary hitting the player:
	if the current turns of the Jagged Blade is 8: 
		now the player is notHit;
		now the current turns of the Jagged Blade is 7;
		stop the action;
	if the current turns of the Jagged Blade is 7: 
		now the player is notHit;
		now the current turns of the Jagged Blade is 6;
		stop the action;
	if the current turns of the Jagged Blade is 6: 
		now the player is notHit;
		now the current turns of the Jagged Blade is 5;
		stop the action;
	if the current turns of the Jagged Blade is 5: 
		now the player is hit;
		now the current turns of the Jagged Blade is 4;
		stop the action;
	if the current turns of the Jagged Blade is 4: 
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Mercenary by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Jagged Blade is 3;
		stop the action;	
	if the current turns of the Jagged Blade is 3: 
		now the player is hit;
		now the current turns of the Jagged Blade is 2;
		stop the action;
	if the current turns of the Jagged Blade is 2: 
		now the player is hit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Mercenary by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Jagged Blade is 1;
		stop the action;	
	if the current turns of the Jagged Blade is 1: 
		now the player is hit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Mercenary by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Jagged Blade is 0;
		stop the action;	
	if the current turns of the Jagged Blade is 0: 
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Mercenary by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Jagged Blade is 8;
		stop the action.

Understand "Ethiram" and "Undying" as Undying Ethiram.
The player has a number called decay. The decay of the player is 0.
The player has a number called drain. The drain of the player is 0.
The current hit points of the Undying Ethiram is 4. The maximum hit points of the Undying Ethiram is 4.
The Undying Ethiram is hostile. 
The Undying Ethiram carries a weapon called Abyssal Aura. The current turns of the Abyssal Aura is 11.
Setting action variables for an actor hitting:
	if the actor is Undying Ethiram:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the Endless Void: 
	if the Undying Ethiram is hostile, try Undying Ethiram hitting the player. 
Report Undying Ethiram hitting the player:
	if the current turns of the Abyssal Aura is 10:
		say "With a wave of his hand, Ethiram scatters the void with decaying corpses." instead;
	if the current turns of the Abyssal Aura is 9:
		say "Ethiram resurrects two nearby corpses." instead;
	if the current turns of the Abyssal Aura is 8:
		if the dodgeTrue of the player is 1:
			say "The corpses frantically run towards you but you roll out of the way as their bodies explode in a blast of limbs.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You kill the reanimated corpses as they run towards you.[line break][line break]";
			if the Undying Ethiram is dead:
				say "You charge towards Ethiram and strike him, dealing [riposteDamage of the player] damage![line break][line break]";
				say "Ethiram falls to his knees, gasping for air.[line break][line break]'Why... are you being so difficult... I gave you freedom... I gave you power...'";
				now the Undying Ethiram is nowhere;
				now the Undying Ethiram is docile;
			otherwise:
				say "You charge towards Ethiram and strike him, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The corpses run towards you and your shield absorbs part of the blast as the corpses combust, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "Ethiram is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The corpses frantically run at you and explode in a gory blast of limbs, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Ethiram is unable to penetrate your armour.";
	if the current turns of the Abyssal Aura is 7:
		if the dodgeTrue of the player is 1:
			say "You dodge the body that Ethiram hurls at you.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "Ethiram hurls a corpse at you but you hit it out of the way.[line break][line break]";
			if the Undying Ethiram is dead:
				say "You leap towards Ethiram and slam your weapon down on him, dealing [riposteDamage of the player] damage![line break][line break]";
				say "Ethiram falls to his knees, gasping for air.[line break][line break]'Why... are you being so difficult... I gave you freedom... I gave you power...'";
				now the Undying Ethiram is nowhere;
				now the Undying Ethiram is docile;
			otherwise:
				say "You leap towards Ethiram and slam your weapon down on him, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "Ethiram hurls the body of a prisoner at your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "Ethiram is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "Ethiram hurls a body of a prisoner at you, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Ethiram is unable to penetrate your armour.";
	if the current turns of the Abyssal Aura is 6:
		say "Ethiram consumes the soul of a corpse, temporarily giving him more power." instead;
	if the current turns of the Abyssal Aura is 5:
		say "Ethiram surrounds the void in an aura of decay." instead;
	if the current turns of the Abyssal Aura is 4:
		if the dodgeTrue of the player is 1:
			say "Ethiram releases a current of energy from his hands, but you sidestep it in time.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "Before Ethiram can attack, you temporarily incapacitate him.[line break][line break]";
			if the Undying Ethiram is dead:
				say "While Ethiram is weak, you brutally strike him, dealing [riposteDamage of the player] damage![line break][line break]";
				say "Ethiram falls to his knees, gasping for air.[line break][line break]'Why... are you being so difficult... I gave you freedom... I gave you power...'";
				now the Undying Ethiram is nowhere;
				now the Undying Ethiram is docile;
			otherwise:
				say "While Ethiram is weak, you brutally strike him, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "Ethiram blasts you with a gust of energy, but your shield prevents you from flying backwards, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "Ethiram is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "Ethiram blasts you with a gust of energy, temporarily knocking the breath out of you, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Ethiram is unable to penetrate your armour.";
	if the current turns of the Abyssal Aura is 3:
		if the dodgeTrue of the player is 1:
			say "Ethiram temporarily raises the corpse of the Warden with his life force; the Warden misses as he tries to slash you across the chest. The Warden's body expires as Ethiram stops channeling energy into the corpse.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "Ethiram raises the corpse of the Warden with his life force; the Warden tries to lacerate you with his sword but you parry the attack.[line break][line break]";
			if the Undying Ethiram is dead:
				say "You stab the Warden straight through the heart, killing him, and damaging Ethiram's life force, dealing [riposteDamage of the player] damage![line break][line break]";
				say "Ethiram falls to his knees, gasping for air.[line break][line break]'Why... are you being so difficult... I gave you freedom... I gave you power...'";
				now the Undying Ethiram is nowhere;
				now the Undying Ethiram is docile;
			otherwise:
				say "You stab the Warden straight through the heart, killing him, and damaging Ethiram's life force, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "Ethiram temporarily raises the corpse of the Warden with his life force; the Warden whips his chain at your shield before expiring, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "Ethiram is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "Ethiram temporarily raises the corpse of the Warden with his life force; the Warden lashes you with his chain before expiring, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Ethiram is unable to penetrate your armour.";
	if the current turns of the Abyssal Aura is 2:
		say "Ethiram starts draining energy from the dead corpses on the floor; his arms begin to glow ominously red." instead;
	if the current turns of the Abyssal Aura is 1:
		if the dodgeTrue of the player is 1:
			say "Ethiram opens his palm and shoots a stream of corrupted energy at you but barely misses your head.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "Ethiram opens his palm and a stream of corrupted energy shoots out but you deflect the attack.[line break][line break]";
			if the Undying Ethiram is dead:
				say "You dash towards Ethiram and swing your weapon into his side, dealing [riposteDamage of the player] damage![line break][line break]";
				say "Ethiram falls to his knees, gasping for air.[line break][line break]'Why... are you being so difficult... I gave you freedom... I gave you power...'";
				now the Undying Ethiram is nowhere;
				now the Undying Ethiram is docile;
			otherwise:
				say "You dash towards Ethiram and swing your weapon into his side, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "Ethiram opens his palm and a stream of corrupted energy shoots out at your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "Ethiram is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "Ethiram opens his palm and a stream of corrupted energy shoots out at you, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Ethiram is unable to penetrate your armour.";
	if the current turns of the Abyssal Aura is 0:
		if the dodgeTrue of the player is 1:
			say "Ethiram sends a ball of corrupting energy towards you but your reflexes allow you to avoid the attack.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "Ethiram raises his hand for another attack, but you stun him with a quick blow.[line break][line break]";
			if the Undying Ethiram is dead:
				say "As Ethiram struggles to regain his footing, you swiftly strike his jaw, dealing [riposteDamage of the player] damage![line break][line break]";
				say "Ethiram falls to his knees, gasping for air.[line break][line break]'Why... are you being so difficult... I gave you freedom... I gave you power...'";
				now the Undying Ethiram is nowhere;
				now the Undying Ethiram is docile;
			otherwise:
				say "As Ethiram struggles to regain his footing, you swiftly strike his jaw, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "Ethiram sends an orb of corrupted energy into your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "Ethiram is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "Ethiram sends an orb of corrupted energy into your chest, planting a parasite inside you, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Ethiram is unable to penetrate your armour.";
	if the current turns of the Abyssal Aura is 11:
		say "Ethiram relaxes himself and drains the energy from nearby corpses." instead.
Report hitting a dead Undying Ethiram:
		say "Ethiram falls to his knees, gasping for air.[line break][line break]'Why... are you being so difficult... I gave you freedom... I gave you power...'" instead.

Report Undying Ethiram hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "Ethiram knocks you unconscious with a gust of corrupted energy."; 
	end the story saying "'You look like a promising host... Hold still... This won't hurt one bit...'"; 
	stop the action.
Carry out Undying Ethiram hitting the player:
	if the current turns of the Abyssal Aura is 11:
		now the player is notHit;
		now the current turns of the Abyssal Aura is 10;
		stop the action;
	if the current turns of the Abyssal Aura is 10:
		now the player is hit;
		now the current turns of the Abyssal Aura is 9;
		stop the action;
	if the current turns of the Abyssal Aura is 9: 
		now the player is hit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Undying Ethiram by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Abyssal Aura is 8;
		stop the action;
	if the current turns of the Abyssal Aura is 8: 
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Undying Ethiram by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Abyssal Aura is 7;
		stop the action;
	if the current turns of the Abyssal Aura is 7:
		now the player is notHit;
		now the current turns of the Abyssal Aura is 6;
		stop the action;
	if the current turns of the Abyssal Aura is 6: 
		now the player is hit;
		increase the decay of the player by 4;
		now the current turns of the Abyssal Aura is 5;
		stop the action;
	if the current turns of the Abyssal Aura is 5: 
		now the player is hit;
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 9 and 11 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 9 and 11 minus x;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Undying Ethiram by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Abyssal Aura is 4;
		stop the action;
	if the current turns of the Abyssal Aura is 4: 
		now the player is notHit;
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 9 and 11 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 9 and 11 minus x;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Undying Ethiram by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Abyssal Aura is 3;
		stop the action;
	if the current turns of the Abyssal Aura is 3:
		now the player is hit;
		now the current turns of the Abyssal Aura is 2;
		stop the action;
	if the current turns of the Abyssal Aura is 2: 
		now the player is hit;
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 12 and 14 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 12 and 14 minus x;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Undying Ethiram by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Abyssal Aura is 1;
		stop the action;
	if the current turns of the Abyssal Aura is 1: 
		now the player is notHit;
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 12 and 14 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 12 and 14 minus x;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Undying Ethiram by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
			now the drain of the player is 4;
		now the current turns of the Abyssal Aura is 0;
		stop the action;
	if the current turns of the Abyssal Aura is 0: 
		now the player is notHit;
		now the current turns of the Abyssal Aura is 10;
		stop the action.
Every turn when the decay of the player is greater than 0:
	decrease the decay of the player by 1;
	if the decay of the player is greater than 0:
		increase the minDodge of the player by 2;
		increase the minParry of the player by 1;
		say "You feel yourself become slower and heavier as if you were shackled to the ground.";
	if the decay of the player is 4:
		decrease the maxBlock of the player by 1;
		if the maxBlock of the player is less than 1:
			now the maxBlock of the player is 0;
	if the decay of the player is 0:
		decrease the minDodge of the player by 6;
		decrease the minParry of the player by 3;
		say "You feel a massive weight lifted off your shoulders and your agility returns to you.".
Every turn when the drain of the player is greater than 0:
	decrease the drain of the player by 1;
	if the drain of the player is greater than 0:
		decrease the current hit points of the player by 2;
		increase the current hit points of Undying Ethiram by 1;
		say "The parasite inside your body eats away your life force, dealing 2 points of damage to you and returning 1 point of health to Ethiram.";
	otherwise:
		say "The parasite in your body disintegrates.".

Shadow Bosses ends here.
