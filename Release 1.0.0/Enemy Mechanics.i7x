Enemy Mechanics by Lamdil begins here.

Part 2 - Enemy Mechanics
	

Chapter 1 - Inner Prison Enemies
		
The current hit points of the Deranged Prisoner is 4. The maximum hit points of the Deranged Prisoner is 4.
The Deranged Prisoner is hostile. 
The Deranged Prisoner carries a weapon called Broken Glass. The current turns of the Broken Glass is 1.
Setting action variables for an actor hitting:
	if the actor is Deranged Prisoner:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the Prison Staircase: 
	if the Deranged Prisoner is hostile, try Deranged Prisoner hitting the player. 
Report Deranged Prisoner hitting the player:
	if the current turns of the Broken Glass is 0:
		say "The Deranged Prisoner gets ready to charge." instead;
	if the current turns of the Broken Glass is 1:
		if the dodgeTrue of the player is 1:
			say "The Deranged Prisoner charges past you and misses.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "The Deranged Prisoner is knocked off guard.[line break][line break]";
			if the Deranged Prisoner is dead:
				say "You riposte the Deranged Prisoner, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Deranged Prisoner writhes in pain before going limp.";
				now the Deranged Prisoner is nowhere;
				now the Deranged Prisoner is docile;
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
Report hitting a dead Deranged Prisoner:
		say "The Deranged Prisoner writhes in pain before going limp." instead.

Report Deranged Prisoner hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Deranged Prisoner quickly stabs your throat."; 
	end the story saying "The blood drains out your neck and you fall to the ground"; 
	stop the action.
Carry out Deranged Prisoner hitting the player:
	if the current turns of the Broken Glass is 1:
		now the player is hit;
		now the current turns of the Broken Glass is 0;
		stop the action;
	if the current turns of the Broken Glass is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Deranged Prisoner by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Broken Glass is 1;
		stop the action.	
		
The current hit points of the Mutated Prisoner is 15. The maximum hit points of the Mutated Prisoner is 15.
The Mutated Prisoner is hostile. 
The Mutatated Prisoner carries a weapon called Third Hand. The current turns of the Third Hand is 1.
Setting action variables for an actor hitting:
	if the actor is Mutated Prisoner:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 4 and 6 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 4 and 6 minus x.
Every turn when the player is in the Prison Tunnel: 
	if the Mutated Prisoner is hostile, try Mutated Prisoner hitting the player. 
Report Mutated Prisoner hitting the player:
	if the current turns of the Third Hand is 0:
		say "The Mutated Prisoner's third hand pertruding from his stomach, claws at the air, as he searches for a target.  It would be wise to leave now." instead;
	if the current turns of the Third Hand is 1:
		if the dodgeTrue of the player is 1:
			say "Upon gaining sight of you the Mutated Prisoner lunges forward but misses drastically.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "Right as the Mutated Prisoner lashes out his third hand you manage a well timed strike and knock him off guard![line break][line break]";
			if the Mutated Prisoner is dead:
				say "You riposte the Mutated Prisoner, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Mutated Prisoner lets out a moan as he shrivels up on the floor.";
				now the Deranged Prisoner is nowhere;
				now the Deranged Prisoner is docile;
			otherwise:
				say "You riposte the Mutated Prisoner, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Mutated Prisoner strikes your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Mutated Prisoner is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "Upon locating your scent, the Mutated Prisoner extends his third arm and lashes out at you with his claws dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Mutated Prisoner is unable to penetrate your armour.".	
Report hitting a dead Mutated Prisoner:
		say "The Mutated Prisoner lets out a moan as he shrivels up on the floor." instead.
		
Report Mutated Prisoner hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Mutated Prisoner's third hand squeezes every once of your body as it crushes your throat to pieces."; 
	end the story saying "You breathe your last breath as your vision begins to fade. In the background you can hear the maniacal cackling of the Mutated Prisoner as he waits for his next victim."; 
	stop the action.
Carry out Mutated Prisoner hitting the player:
	if the current turns of the Third Hand is 1:
		now the player is hit;
		now the current turns of the Third Hand is 0;
		stop the action;
	if the current turns of the Third Hand is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Mutated Prisoner by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Third Hand is 1;
		stop the action.	


The current hit points of the Warden is 25. The maximum hit points of the Warden is 25.
The Warden is docile. 
The Warden carries a weapon called Silver Sword. The current turns of the Silver Sword is 2.
Setting action variables for an actor hitting:
	if the actor is Warden:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 10 and 16 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 10 and 16 minus x.
Every turn when the player is in the Warden's Room: 
	if the Warden is hostile, try Warden hitting the player. 
Report Warden hitting the player:
	if the current turns of the Silver Sword is 1:
		say "The Warden hoists his Silver Sword high into the air as it begins to draw in a massive amount of energy around it." instead;
	if the current turns of the Silver Sword is 0:
		say "The Warden prepares to finish you in one blow as his silver sword begins to glow brighter, and brighter, as the energy around it crackles with power. " instead;
	if the current turns of the Silver Sword is 2:
		if the dodgeTrue of the player is 1:
			say "The Warden unleashes a powerful beam of energy towards you, but you are able to quickly dodge it!";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "Mustering all your strength you swing your weapon absorbing the incoming beam of energy and ready a counter attack![line break][line break]";
			if the Warden is dead:
				say "You riposte the Warden, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Warden clutches his chest as he breathes his last breath, and falls to the ground.";
				now the Warden is nowhere;
				now the Warden is docile;
			otherwise:
				say "You riposte the Warden, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "A crackling beam of energy is hurled towards you from the Warden's Silver Sword and connects with your shield. You aren't able to absorb all of it dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Warden is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The collected energy from the Warden's Silver Sword connects directly with your body, dealing a massive [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Warden is unable to penetrate your armour.".	
Report hitting a dead Warden:
		say "The Warden clutches his chest as he breathes his last breath, and falls to the ground." instead.

Report Warden hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The brute strength of the Warden is too much for your body to handle as he constantly pummels your body. Your vision is beginning to fade."; 
	end the story saying "The Warden delivers a final blow to your head cutting it clean off."; 
	stop the action.
Carry out Warden hitting the player:
	if the current turns of the Silver Sword is 2:
 		now the player is notHit;
 		now the current turns of the Silver Sword is 1;
 		stop the action;
 	if the current turns of the Silver Sword is 1:
 		now the player is hit;
 		now the current turns of the Silver Sword is 0;
 		stop the action;
 	if the current turns of the Silver Sword is 0:
 		now the player is notHit;
 		if dodgeTrue of the player is 1:
 			do nothing;
 		otherwise if parryTrue of the player is 1:
 			decrease the current hit points of the Warden by the riposteDamage of the player;
 		otherwise if blockTrue of the player is 1:
 			do nothing;
 		otherwise if damage inflicted > 0:
 			decrease the current hit points of the noun by the damage inflicted;
 		now the current turns of the Silver Sword is 2;
 		stop the action.	

Chapter 2 - Prison Island Enemies

The current hit points of the Southern Tower Sentinel is 20. The maximum hit points of the Southern Tower Sentinel is 20.
The Southern Tower Sentinel is hostile. 
The Southern Tower Sentinel carries a weapon called Sentinel Spear. The current turns of the Sentinel Spear is 1.
Setting action variables for an actor hitting:
	if the actor is Southern Tower Sentinel:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the Southern Tower Entrance: 
	if the Southern Tower Sentinel is hostile, try Southern Tower Sentinel hitting the player. 
Report Southern Tower Sentinel hitting the player:
	if the current turns of the Sentinel Spear is 1:
		if the dodgeTrue of the player is 1:
			say "The Southern Tower Sentinel thursts his spear forward, but is easily dodged thanks to your speed!";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "As the Southern Tower Sentinel goes in for a quick stab with his spear, a well-timed strike is able to knock it out of the way![line break][line break]";
			if the Southern Tower Sentinel is dead:
				say "You riposte the Southern Tower Sentinel, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Southern Tower Sentinel crumbles into a pile of rubble.";
				now the Southern Tower Sentinel is nowhere;
				now the Southern Tower Sentinel is docile;
			otherwise:
				say "You riposte the Southern Tower Sentinel, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Southern Tower Sentinel's spear collides with your shield and absorbs the majority of the force, only dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Southern Tower Sentinel is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Southern Tower Sentinel stabs you with his spear, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Southern Tower Sentinel is unable to penetrate your armour.".	
Report hitting a dead Southern Tower Sentinel:
		say "The Southern Tower Sentinel crumbles into a pile of rubble." instead.
		
Report Southern Tower Sentinel hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Southern Tower Sentinel impales his spear through your chest with his overwhelming strength."; 
	end the story saying "You try to desperately claw the spear out of your body but the Sentinel's strength is too much. Your vision begins to fade to black."; 
	stop the action.
Carry out Southern Tower Sentinel hitting the player:
	if the current turns of the Sentinel Spear is 1:
		now the player is hit;
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		stop the action.

The current hit points of the Western Tower Sentinel is 15. The maximum hit points of the Western Tower Sentinel is 15.
The Western Tower Sentinel is hostile. 
The Western Tower Sentinel carries a weapon called Sentinel Sword. The current turns of the Sentinel Sword is 1.
Setting action variables for an actor hitting:
	if the actor is Western Tower Sentinel:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 4 and 4 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 4 and 4 minus x.
Every turn when the player is in the Western Tower Entrance: 
	if the Western Tower Sentinel is hostile, try Western Tower Sentinel hitting the player. 
Report Western Tower Sentinel hitting the player:
	if the current turns of the Sentinel Sword is 1:
		if the dodgeTrue of the player is 1:
			say "Noticing a pattern in the Western Tower Sentinel's attacks you are able to quickly dodge his strike!";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You thrust your weapon with perfect timing, colliding with the Western Tower Sentinel's sword and knock him off guard![line break][line break]";
			if the Western Tower Sentinel is dead:
				say "You riposte the Western Tower Sentinel, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Western Tower Sentinel crashes down, knocking up a cloud of dust.";
				now the Western Tower Sentinel is nowhere;
				now the Western Tower Sentinel is docile;
			otherwise:
				say "You riposte the Western Tower Sentinel, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Western Tower Sentinel strikes your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Western Tower Sentinel is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Western Tower Sentinel swings his massive broadsword and manages to land a direct hit on your body, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Western Tower Sentinel is unable to penetrate your armour.".	
Report hitting a dead Western Tower Sentinel:
		say "The Western Tower Sentinel crashes down, knocking up a cloud of dust." instead.

Report Western Tower Sentinel hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Western Tower Sentinel plunges his sword through your heart, and rips it out as he kicks your body to the ground."; 
	end the story saying "With your last few seconds of life you see the Western Tower Sentinel return to his position, waiting for another adventurer to come along."; 
	stop the action.
Carry out Western Tower Sentinel hitting the player:
	if the current turns of the Sentinel Sword is 1:
		now the player is hit;
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		stop the action.
		

The current hit points of the Eastern Tower Sentinel is 30. The maximum hit points of the Eastern Tower Sentinel is 30.
The Eastern Tower Sentinel is hostile. 
The Eastern Tower Sentinel carries a weapon called Sentinel Mace. The current turns of the Sentinel Mace is 1.
Setting action variables for an actor hitting:
	if the actor is Eastern Tower Sentinel:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 7 and 9 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 7 and 9 minus x.
Every turn when the player is in the Eastern Tower Entrance: 
	if the Eastern Tower Sentinel is hostile, try Eastern Tower Sentinel hitting the player. 
Report Eastern Tower Sentinel hitting the player:
	if the current turns of the Sentinel Mace is 0:
		say "The Eastern Tower Sentinel draws his mace and slams it on the ground, as if means to taunt you." instead;
	if the current turns of the Sentinel Mace is 1:
		if the dodgeTrue of the player is 1:
			say "Right as the Eastern Tower Sentinel swings his mace you are able to quickly duck under his blow!";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "Taking advantage of your relative speed, and precision your weapon collides at just the perfect time parrying the Sentinel's attack![line break][line break]";
			if the Eastern Tower Sentinel is dead:
				say "You riposte the Eastern Tower Sentinel, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Eastern Tower Sentinel shatters into a hundred tiny rocks.";
				now the Eastern Tower Sentinel is nowhere;
				now the Eastern Tower Sentinel is docile;
			otherwise:
				say "You riposte the Eastern Tower Sentinel, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Eastern Tower Sentinel slams your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Eastern Tower Sentinel is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Eastern Tower Sentinel slams you with an unstoppable amount of force with his Sentinel Mace, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Eastern Tower Sentinel is unable to penetrate your armour.".	
Report hitting a dead Eastern Tower Sentinel:
		say "The Eastern Tower Sentinel shatters into a hundred tiny rocks." instead.

Report Eastern Tower Sentinel hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Eastern Tower Guard knocks you unconscious."; 
	end the story saying "The Eastern Tower Sentinel smashes his mace down on your head, reducing it to bits of brain and skull"; 
	stop the action.
Carry out Eastern Tower Sentinel hitting the player:
	if the current turns of the Sentinel Mace is 1:
		now the player is hit;
		now the current turns of the Sentinel Mace is 0;
		stop the action;
	if the current turns of the Sentinel Mace is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Eastern Tower Sentinel by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Sentinel Mace is 1;
		stop the action.	


The current hit points of the Armoured Guard is 20. The maximum hit points of the Armoured Guard is 20.
The Armoured Guard is hostile. 
The Armoured Guard carries a weapon called Heavy Shield. The current turns of the Heavy Shield is 1.
Setting action variables for an actor hitting:
	if the actor is Armoured Guard:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 7 and 10 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 7 and 10 minus x.
Every turn when the player is in the Dim Hallway: 
	if the Armoured Guard is hostile, try Armoured Guard hitting the player. 
Report Armoured Guard hitting the player:
	if the current turns of the Heavy Shield is 0:
		say "The Armoured Guard grabs his shield with both hands." instead;
	if the current turns of the Heavy Shield is 1:
		if the dodgeTrue of the player is 1:
			say "The Armoured Guard charges straight for you but with a quick roll you are able to get out of the way!";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "Using your own strength you are able to repel the Armoured Guard's shield bash with a well timed strike![line break][line break]";
			if the Armoured Guard is dead:
				say "You riposte the Armoured Guard, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Armoured Guard falls to the ground. His shield lands on top of his body and quickly dematerializes into a thick cloud of dust.";
				now the Armoured Guard is nowhere;
				now the Armoured Guard is docile;
			otherwise:
				say "You riposte the Armoured Guard, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Armoured Guard strikes your shield with his own, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Armoured Guard is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Armoured Guard bashes your head with his shield, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Armoured Guard is unable to penetrate your armour.".	
Report hitting a dead Armoured Guard:
		say "The Armoured Guard falls to the ground. His shield lands on top of his body and quickly dematerializes into a thick cloud of dust." instead.

Report Armoured Guard hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Armoured Guard knocks you off your feet."; 
	end the story saying "The Armoured Guard kicks you down and slams his shield straight through your heart, killing you instantly."; 
	stop the action.
Carry out Armoured Guard hitting the player:
	if the current turns of the Heavy Shield is 1:
		now the player is hit;
		now the current turns of the Heavy Shield is 0;
		stop the action;
	if the current turns of the Heavy Shield is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Armoured Guard by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Heavy Shield is 1;
		stop the action.	


The current hit points of the Reinforced Guard is 25. The maximum hit points of the Reinforced Guard is 25.
The Reinforced Guard is hostile. 
The Reinforced Guard carries a weapon called Greatsword. The current turns of the Greatsword is 1.
Setting action variables for an actor hitting:
	if the actor is Reinforced Guard:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 5 and 12 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 5 and 12 minus x.
Every turn when the player is in the Tower Hallway: 
	if the Reinforced Guard is hostile, try Reinforced Guard hitting the player. 
Report Reinforced Guard hitting the player:
	if the current turns of the Greatsword is 1:
		if the dodgeTrue of the player is 1:
			say "The Reinforced Guard thursts his Greatsword into the air and just barely misses your body by a hair.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "Pushing yourself to your limits you decide to counter the Reinforced Guard's attacks with one of your own knocking him off guard![line break][line break]";
			if the Reinforced Guard is dead:
				say "You riposte the Reinforced Guard, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Reinforced Guard groans as he falls down.";
				now the Reinforced Guard is nowhere;
				now the Reinforced Guard is docile;
			otherwise:
				say "You riposte the Reinforced Guard, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Reinforced Guard strikes your shield with his Greatsword, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Reinforced Guard is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Reinforced Guard lands a clean hit on your body with a quick thurst of his sword, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Reinforced Guard is unable to penetrate your armour.".	
Report hitting a dead Reinforced Guard:
		say "The Reinforced Guard groans as he falls down." instead.

Report Reinforced Guard hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Reinforced Guard pierces your body with his sword."; 
	end the story saying "Blood gushes out your mouth as the Reinforced Guard pulls his sword from your stomach."; 
	stop the action.
Carry out Reinforced Guard hitting the player:
	if the current turns of the Greatsword is 1:
		now the player is hit;
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		stop the action.
		

The current hit points of the Living Statue is 10. The maximum hit points of the Living Statue is 10.
The Living Statue is docile. 
The Deranged Prisoner carries a weapon called Runic Sword . The current turns of the Runic Sword is 1.
Setting action variables for an actor hitting:
	if the actor is Living Statue:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 5 and 10 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 5 and 10 minus x.
Every turn when the player is in the Ground Floor 3: 
	if the Living Statue is hostile, try Living Statue hitting the player. 
Report Living Statue hitting the player:
	if the current turns of the Runic Sword is 0:
		say "The Living Statue draws its Runic Claymore, and readies itself to fight off any intruders." instead;
	if the current turns of the Runic Sword is 1:
		if the dodgeTrue of the player is 1:
			say "The Living Statue's attack is easily dodged thanks to your superior speed.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "The Living Statue staggers back from your powerful attack![line break][line break]";
			if the Living Statue is dead:
				say "You riposte the Living Statue, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Living Statue crumbles into a pile of rubble.";
				now the Living Statue is nowhere;
				now the Living Statue is docile;
			otherwise:
				say "You riposte the Living Statue, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Living Statue's strikes your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Living Statue is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Living Statue lands a direct hit and slashes you with its Runic Claymore, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Living Statue is unable to penetrate your armour.".	
Report hitting a dead Deranged Prisoner:
		say "The Living Statue crumbles into a pile of rubble." instead.
		
Report Living Statue hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Living Statue's strength is too much to handle as it punctures its sword straight through your chest."; 
	end the story saying "The Living Statue quickly rips its sword out and returns to its original position. Its eyes no longer glow."; 
	stop the action.
Carry out Living Statue hitting the player:
	if the current turns of the Runic Sword is 1:
		now the player is hit;
		now the current turns of the Runic Sword is 0;
		stop the action;
	if the current turns of the Runic Sword is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Living Statue by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Runic Sword is 1;
		stop the action.


The current hit points of the Overseer is 25. The maximum hit points of the Overseer is 25.
The Overseer is hostile. 
The Overseer carries a weapon called Spiked Flail. The current turns of the Spiked Flail is 1.
Setting action variables for an actor hitting:
	if the actor is Overseer:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 8 and 12 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 8 and 12 minus x.
Every turn when the player is in the Northern Outlook: 
	if the Overseer is hostile, try Overseer hitting the player.
Report Overseer hitting the player:
	if the current turns of the Spiked Flail is 0:
		say "The Overseer brandishes his Spiked Flail and slams the ground as if to taunt you." instead;
	if the current turns of the Spiked Flail is 1:
		if the dodgeTrue of the player is 1:
			say "Your raw speed and training are too much for the Overseer to handle as you quickly predict where he is about to strike and get out of the way! ";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "The Overseer's Spiked Flail connects with your sword, but you are able to overpower him knocking the flail out of his hand![line break][line break]";
			if the Overseer is dead:
				say "Using your opening, you riposte the Overseer, dealing [riposteDamage of the player] damage![line break][line break]";
				say "A strange being full of pure corrupted energy emerges from the Overseer's chest and slowly takes form. [line break][line break]";
				say "The Corrupted Entity forms a weapon of pure dark energy; a massive Corrupted Dual Axe, and prepares to finish you off once and for all!";
				now the Overseer is nowhere;
				now the Overseer is docile;
			otherwise:
				say "You riposte the Overseer, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Overseer strikes your shield, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Overseer is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Overseer charges and slashes you with Spiked Flail, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Overseer is unable to penetrate your armour.".	
Report hitting a dead Overseer:
	say "A strange being full of pure corrupted energy emerges from the Overseer's chest and slowly takes form. [line break][line break]";
	say "The Corrupted Entity forms a weapon of pure dark energy; a massive Corrupted Dual Axe, and prepares to finish you off once and for all!" instead. 

Report Overseer hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Overseer knocks your weapon out of your hands and laughs as his Spiked Flail wraps around your body crushing every bone you have left."; 
	end the story saying "You've come so close but unfortunately your adventure has come to an end."; 
	stop the action.
Carry out Overseer hitting the player:
	if the current turns of the Spiked Flail is 1:
		now the player is hit;
		now the current turns of the Spiked Flail is 0;
		stop the action;
	if the current turns of the Spiked Flail is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Overseer by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Spiked Flail is 1;
		stop the action.	
		
Corrupted is a room. The Corrupted Entity is a man in Corrupted. 
The current hit points of the Corrupted Entity is 30. The maximum hit points of the Corrupted Entity is 30.
The Corrupted Entity is hostile. 
The Corrupted Entity carries a weapon called Corrupted Dual Axe. The current turns of the Corrupted Dual Axe is 2.
Setting action variables for an actor hitting:
	if the actor is Corrupted Entity:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 20 and 20 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 20 and 20 minus x.
Every turn when the Corrupted Entity is in the Northern Outlook: 
	if the Corrupted Entity is hostile, try Corrupted Entity hitting the player. 
Report Corrupted Entity hitting the player:
	if the current turns of the Corrupted Dual Axe is 1:
		say "The Corrupted Entity grabs hold of your body locking you into place, as it prepares one last attack." instead;
	if the current turns of the Corrupted Dual Axe is 0:
		say "The Corrupted Entity squeezes every bone in your body as it raises its massive Corrupted Dual Axe high above your head. [line break][line break]";
		say "If you want to survive you must finish the Corrupted Entity off now!" instead;
	if the current turns of the Corrupted Dual Axe is 2:
		if the dodgeTrue of the player is 1:
			say "As the Corrupted Entity's grip loosens for just a fraction of a second, you are able to quickly sever yourself free and escape its attack!";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "Showing no fear you raise your own weapon above your head and connect with perfect timing parrying his finishing blow![line break][line break]";
			if the Corrupted Entity is dead:
				say "You riposte the Corrupted Entity, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Corrupted Entity explodes into a cloud of dark energy and dust as its remains fade into the floor.";
				now the Corrupted Entity is nowhere;
				now the Corrupted Entity is docile;
			otherwise:
				say "You riposte the Corrupted Entity, dealing [riposteDamage of the player] damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "Your shield is nowhere near strong enough to repel the Corrupted Entity's final attack as you feel the sharp blow of his Corrupted Dual Axe collide with your body, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Corrupted Entity is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Corrupted Entity lands a massive gash into your neck draining any chance you have left at life, dealing a massive [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Corrupted Entity is unable to penetrate your armour.".	
Report hitting a dead Corrupted Entity:
		say "The Corrupted Entity explodes into a cloud of dark energy and dust, as its remains fade into the floor." instead.

Report Corrupted Entity hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Corrupted Entity's Dual Axe comes clean down on your body slicing your head clean off."; 
	end the story saying "With your last breath you see the Corrupted Entity rip your heart out and squish it into nothing more but dust."; 
	stop the action.
Carry out Corrupted Entity hitting the player:
	if the current turns of the Corrupted Dual Axe is 2:
 		now the player is notHit;
 		now the current turns of the Corrupted Dual Axe is 1;
 		stop the action;
 	if the current turns of the Corrupted Dual Axe is 1:
 		now the player is hit;
 		now the current turns of the Corrupted Dual Axe is 0;
 		stop the action;
 	if the current turns of the Corrupted Dual Axe is 0:
 		now the player is notHit;
 		if dodgeTrue of the player is 1:
 			do nothing;
 		otherwise if parryTrue of the player is 1:
 			decrease the current hit points of the Corrupted Entity by the riposteDamage of the player;
 		otherwise if blockTrue of the player is 1:
 			do nothing;
 		otherwise if damage inflicted > 0:
 			decrease the current hit points of the noun by the damage inflicted;
 		now the current turns of the Corrupted Dual Axe is 2;


	







 
	

	

Enemy Mechanics ends here.
