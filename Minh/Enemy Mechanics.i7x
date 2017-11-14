Enemy Mechanics by Lamdil begins here.

The current hit points of the Deranged Prisoner is 10000. The maximum hit points of the Deranged Prisoner is 10000. [testing dummy]
The Deranged Prisoner is hostile. 
The Deranged Prisoner carries a weapon called Broken Glass. The current turns of the Broken Glass is 2.
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
	if the current turns of the Broken Glass is 1:
		say "The Deranged Prisoner gets ready to charge." instead;
	if the current turns of the Broken Glass is 0:
		say "The Deranged Prisoner crouches down low." instead;
	if the current turns of the Broken Glass is 2:
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
	if the current turns of the Broken Glass is 2:
		now the player is notHit;
		now the current turns of the Broken Glass is 1;
		stop the action;
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
		now the current turns of the Broken Glass is 2;
		stop the action.	

Enemy Mechanics ends here.
