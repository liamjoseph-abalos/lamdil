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
The Mutated Prisoner carries a weapon called Left Hand. The maximum damage of the Left Hand is 4.
The Mutated Prisoner carries a weapon called Right Hand. The maximum damage of the Right Hand is 4.
The Mutated Prisoner carries a weapon called Third Hand. The maximum damage of the Third Hand is 5.
The Mutated Prisoner carries a weapon called Bite. The maximum damage of the Bite is 4.
Setting action variables for attacking something with something: 
	if the second noun is a Left Hand: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 2 and the maximum attack minus the damageReduction of the player. 
Setting action variables for attacking something with something: 
	if the second noun is a Right Hand: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 3 and the maximum attack minus the damageReduction of the player. 
Setting action variables for attacking something with something: 
	if the second noun is a Third Hand: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 3 and the maximum attack minus the damageReduction of the player. 
Setting action variables for attacking something with something: 
	if the second noun is a Bite: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 2 and the maximum attack. 
Every turn when the player is in the Prison Tunnel (this is the Mutated Prisoner-attack rule):
	if the Mutated Prisoner is hostile, try the Mutated Prisoner attacking the player with a random weapon which is carried by the Mutated Prisoner. 
Report Mutated Prisoner attacking the player with Left Hand (this is the standard report Mutated Prisoner attacking the player with Left Hand rule):
	if damage inflicted > 0:
		say "The Mutated Prisoner claws at you with his left hand, dealing [damage inflicted] point[s] of damage!" instead;
	otherwise:
		say "The Mutated Prisoner is unable to penetrate your armour.".
Report Mutated Prisoner attacking the player with Right Hand (this is the standard report Mutated Prisoner attacking the player with Right Hand rule):
	if damage inflicted > 0:
		say "The Mutated Prisoner claws at you with his right hand, dealing [damage inflicted] point[s] of damage!" instead;
	otherwise:
		say "The Mutated Prisoner is unable to penetrate your armour.".
Report Mutated Prisoner attacking the player with Third Hand (this is the standard report Mutated Prisoner attacking the player with Third Hand rule):
	if damage inflicted > 0:
		say "The Mutated Prisoner stretches out his third arm and slashes at you, dealing [damage inflicted] point[s] of damage!" instead;
	otherwise:
		say "The Mutated Prisoner is unable to penetrate your armour.".
Report Mutated Prisoner attacking the player with Bite (this is the standard report Mutated Prisoner attacking the player with Bite rule):
	if damage inflicted > 0:
		say "The Mutated Prisoner bites you with his jagged teeth, dealing [damage inflicted] point[s] of damage!" instead;
	otherwise:
		say "The Mutated Prisoner is unable to penetrate your armour.".
Report attacking a dead Mutated Prisoner with something (this is the Mutated Prisoner's death-report priority rule):
	if damage inflicted > 0:
		say "The Mutated Prisoner lets out a moan as he shrivels up on the floor." instead;
	otherwise:
		say "The Mutated Prisoner is unable to penetrate your armour.".
Report Mutated Prisoner attacking the player with something when the player is dead (this is the player's-death by Mutated Prisoner priority rule):
	now the current hit points of the player is 0;
	say "The Mutated Prisoner grabs onto your head with all three arms and tears it clean off."; 
	end the story saying "Your blood is splattered all over the tunnel as the mutant feasts on your remains"; 
	stop the action.
Carry out Mutated Prisoner attacking someone with something (this is the standard Mutated Prisoner attacking it with rule): 
	if damage inflicted > 0:
		decrease the current hit points of the noun by the damage inflicted.

The current hit points of the Warden is 25. The maximum hit points of the Warden is 25.
The Warden is docile. 
The Warden carries a weapon called Silver Sword. The current turns of the Silver Sword is 1.
Setting action variables for an actor hitting:
	if the actor is Warden:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 9 and 13 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the Warden's Room: 
	if the Warden is hostile, try Warden hitting the player. 
Report Warden hitting the player:
	if the current turns of the Silver Sword is 0:
		say "The Warden hoists his Silver Sword high into the air as it begins to draw in a massive amount of energy around it." instead;
	if the current turns of the Silver Sword is 1:
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
	end the story saying "The Warden delivers a final blow to your head cutting it clean off. YOU DIED."; 
	stop the action.
Carry out Warden hitting the player:
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
		now the current turns of the Silver Sword is 1;
		stop the action.	
	

	
Chapter 2 - Prison Island Enemies

The current hit points of the Southern Tower Sentinel is 20. The maximum hit points of the Southern Tower Sentinel is 20.
The Southern Tower Sentinel is hostile. 
The Southern Tower Sentinel carries a weapon called Sentinel Spear. The maximum damage of the Sentinel Spear is 5.
Setting action variables for attacking something with something: 
	if the second noun is a Sentinel Spear: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 3 and the maximum attack minus the damageReduction of the player. 
Every turn when the player is in the Southern Tower Entrance (this is the Southern Tower Sentinel-attack rule): 
	if the Southern Tower Sentinel is hostile, try the Southern Tower Sentinel attacking the player with a random weapon which is carried by the Southern Tower Sentinel. 
Report Southern Tower Sentinel attacking the player with something (this is the standard report Southern Tower Sentinel attacking the player with rule):
	if damage inflicted > 0:
		say "The Southern Tower Sentinel stabs you with his spear, dealing [damage inflicted] point[s] of damage!" instead;
	otherwise:
		say "The Southern Tower Sentinel is unable to penetrate your armour.". 	
Report attacking a dead Southern Tower Sentinel with something (this is the Southern Tower Sentinel's death-report priority rule): 
	say "The Southern Tower Sentinel crumbles into a pile of rubble." instead. 
Report Southern Tower Sentinel attacking the player with something when the player is dead (this is the player's-death by Southern Tower Sentinel priority rule):
	now the current hit points of the player is 0; 
	say "The Southern Tower Sentinel impales you with his spear."; 
	end the story saying "The Southern Tower Sentinel retracts his spear and you fall onto a pool of blood"; 
	stop the action.
Carry out Southern Tower Sentinel attacking someone with something (this is the standard Southern Tower Sentinel attacking it with rule): 
	if damage inflicted > 0:
		decrease the current hit points of the noun by the damage inflicted.
	
The current hit points of the Western Tower Sentinel is 30. The maximum hit points of the Western Tower Sentinel is 30.
The Western Tower Sentinel is hostile.
The Western Tower Sentinel carries a weapon called Sentinel Sword. The maximum damage of the Sentinel Sword is 3.
Setting action variables for attacking something with something: 
	if the second noun is a Sentinel Sword: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 2 and the maximum attack minus the damageReduction of the player. 
Every turn when the player is in the Western Tower Entrance (this is the Western Tower Sentinel-attack rule): 
	if the Western Tower Sentinel is hostile, try the Western Tower Sentinel attacking the player with a random weapon which is carried by the Western Tower Sentinel. 
Report Western Tower Sentinel attacking the player with something (this is the standard report Western Tower Sentinel attacking the player with rule):
	if damage inflicted > 0:
		say "The Western Tower Sentinel slashes you with his sword, dealing [damage inflicted] point[s] of damage!" instead;
	otherwise:
		say "The Western Tower Sentinel is unable to penetrate your armour.".
Report attacking a dead Western Tower Sentinel with something (this is the Western Tower Sentinel's death-report priority rule): 
	say "The Western Tower Sentinel crashes down, knocking up a cloud of dust." instead. 
Report Western Tower Sentinel attacking the player with something when the player is dead (this is the player's-death by Western Tower Sentinel priority rule):
	now the current hit points of the player is 0; 
	say "The Western Tower Sentinel slashes off both your legs."; 
	end the story saying "The Western Tower Sentinel crushes your skull underneath his foot"; 
	stop the action.
Carry out Western Tower Sentinel attacking someone with something (this is the standard Western Tower Sentinel attacking it with rule): 
	if damage inflicted > 0:
		decrease the current hit points of the noun by the damage inflicted.
	
The current hit points of the Eastern Tower Sentinel is 15. The maximum hit points of the Eastern Tower Sentinel is 15.
The Eastern Tower Sentinel is hostile.
The Eastern Tower Sentinel carries a weapon called Sentinel Mace. The maximum damage of the Sentinel Mace is 7.
Setting action variables for attacking something with something: 
	if the second noun is a Sentinel Mace: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 5 and the maximum attack minus the damageReduction of the player. 
Every turn when the player is in the Eastern Tower Entrance (this is the Eastern Tower Sentinel-attack rule): 
	if the Eastern Tower Sentinel is hostile, try the Eastern Tower Sentinel attacking the player with a random weapon which is carried by the Eastern Tower Sentinel. 
Report Eastern Tower Sentinel attacking the player with something (this is the standard report Eastern Tower Sentinel attacking the player with rule):
	if damage inflicted > 0:
		say "The Eastern Tower Sentinel slams you with his mace, dealing [damage inflicted] point[s] of damage!" instead;
	otherwise:
		say "The Eastern Tower Sentinel is unable to penetrate your armour.".	
Report attacking a dead Eastern Tower Sentinel with something (this is the Eastern Tower Sentinel's death-report priority rule): 
	say "The Eastern Tower Sentinel shatters into a hundred tiny rocks." instead. 
Report Eastern Tower Sentinel attacking the player with something when the player is dead (this is the player's-death by Eastern Tower Sentinel priority rule):
	now the current hit points of the player is 0; 
	say "The Eastern Tower Guard knocks you unconscious."; 
	end the story saying "The Eastern Tower Sentinel smashes his mace down on your head, reducing it to bits of brain and skull"; 
	stop the action.
Carry out Eastern Tower Sentinel attacking someone with something (this is the standard Eastern Tower Sentinel attacking it with rule): 
	if damage inflicted > 0:
		decrease the current hit points of the noun by the damage inflicted.
	
The current hit points of the Armoured Guard is 20. The maximum hit points of the Armoured Guard is 20.
The Armoured Guard is hostile.
The Armoured Guard carries a weapon called Heavy Shield. The maximum damage of the Heavy Shield is 10. The current turns of the Heavy Shield is 1.
Setting action variables for attacking something with something: 
	if the second noun is a Heavy Shield: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 7 and the maximum attack minus the damageReduction of the player. 
Every turn when the player is in the Dim Hallway (this is the Armoured Guard-attack rule): 
	if the Armoured Guard is hostile, try the Armoured Guard attacking the player with a random weapon which is carried by the Armoured Guard. 
Report Armoured Guard attacking the player with something (this is the standard report Armoured Guard attacking the player with rule):
	if the second noun is Heavy Shield:
		if the current turns of the Heavy Shield is 0:
			say "The Armoured Guard grabs his shield with both hands." instead;
		if the current turns of the Heavy Shield is 1:
			if damage inflicted > 0:
				say "The Armoured Guard bashes you with his shield, dealing [damage inflicted] point[s] of damage!" instead;
			otherwise:
				say "The Armoured Guard is unable to penetrate your armour.".	
Report attacking a dead Armoured Guard with something (this is the Armoured Guard's death-report priority rule):
	say "The Armoured Guard falls to the ground and his shield lands on top of his body." instead. 
Report Armoured Guard attacking the player with something when the player is dead (this is the player's-death by Armoured Guard priority rule):
	now the current hit points of the player is 0; 
	say "The Armoured Guard knocks you off your feet."; 
	end the story saying "The Armoured Guard slams his shield onto your chest, stopping your heart"; 
	stop the action.
Carry out Armoured Guard attacking someone with something (this is the standard Armoured Guard attacking it with rule): 
	if the current turns of the Heavy Shield is 1:
		now the current turns of the Heavy Shield is 0;
		stop the action;
	if the current turns of the Heavy Shield is 0:
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Heavy Shield is 1;
		stop the action.

The current hit points of the Reinforced Guard is 20. The maximum hit points of the Reinforced Guard is 20. 
The Reinforced Guard is hostile.
The Reinforced Guard carries a weapon called Greatsword. The maximum damage of the Greatsword is 12. The current turns of the Greatsword is 1.
Setting action variables for attacking something with something: 
	if the second noun is a Greatsword: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 7 and the maximum attack minus the damageReduction of the player. 
Every turn when the player is in the Tower Hallway (this is the Reinforced Guard-attack rule): 
	if the Reinforced Guard is hostile, try the Reinforced Guard attacking the player with a random weapon which is carried by the Reinforced Guard. 
Report Reinforced Guard attacking the player with something (this is the standard report Reinforced Guard attacking the player with rule):
	if the second noun is Greatsword:
		if the current turns of the Greatsword is 0:
			say "The Reinforced Guard swings back his sword." instead;
		if the current turns of the Greatsword is 1:
			if damage inflicted > 0:
				say "The Reinforced Guard thrusts his sword at you, dealing [damage inflicted] point[s] of damage!" instead;
			otherwise:
				say "The Reinforced Guard is unable to penetrate your armour.".	
Report attacking a dead Reinforced Guard with something (this is the Reinforced Guard's death-report priority rule): 
	say "The Reinforced Guard groans as he falls down." instead. 
Report Reinforced Guard attacking the player with something when the player is dead (this is the player's-death by Reinforced Guard priority rule):
	now the current hit points of the player is 0; 
	say "The Reinforced Guard pierces your body with his sword."; 
	end the story saying "Blood gushes out your mouth as the Reinforced Guard pulls his sword from your stomach"; 
	stop the action.
Carry out Reinforced Guard attacking someone with something (this is the standard Reinforced Guard attacking it with rule): 
	if the current turns of the Greatsword is 1:
		now the current turns of the Greatsword is 0;
		stop the action;
	if the current turns of the Greatsword is 0:
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Greatsword is 1;
		stop the action.
		
The current hit points of the Overseer is 40. The maximum hit points of the Overseer is 40.
The Overseer is docile. 
The Overseer carries a weapon called Spiked Flail. The maximum damage of the Spiked Flail is 12. The current turns of the Spiked Flail is 1.
Setting action variables for attacking something with something: 
	if the second noun is a Spiked Flail: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 8 and the maximum attack minus the damageReduction of the player. 
Every turn when the player is in the Northern Outlook (this is the Overseer-attack rule): 
	if the Overseer is hostile, try the Overseer attacking the player with a random weapon which is carried by the Overseer. 
Report Overseer attacking the player with something (this is the standard report Overseer attacking the player with rule):
	if the second noun is Spiked Flail:
		if the current turns of the Spiked Flail is 0:
			say "The Overseer brandishes his flail." instead;
		if the current turns of the Spiked Flail is 1:
			if damage inflicted > 0:
				say "The Overseer's flail crashes down on your face, dealing [damage inflicted] point[s] of damage!" instead;
			otherwise:
				say "The Overseer is unable to penetrate your armour.".	
Report attacking a dead Overseer with something (this is the Overseer's death-report priority rule): 
	say "The Overseer stumbles backwards and falls off the tower." instead. 
Report Overseer attacking the player with something when the player is dead (this is the player's-death by Overseer priority rule):
	now the current hit points of the player is 0; 
	say "The Overseer swings his flail behind you."; 
	end the story saying "The Overseer aggresively tugs back his flail, knocking your head clean off your shoulders"; 
	stop the action.
Carry out Overseer attacking someone with something (this is the standard Overseer attacking it with rule): 
	if the current turns of the Spiked Flail is 1:
		now the current turns of the Spiked Flail is 0;
		stop the action;
	if the current turns of the Spiked Flail is 0:
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Spiked Flail is 1;
		stop the action.

Enemy Mechanics ends here.
