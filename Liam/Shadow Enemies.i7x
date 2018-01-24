Shadow Enemies by Lamdil begins here.

Spectral Fight 1 is a scene.
Spectral Fight 1 begins when the player is in the S6.
Every turn during Spectral Fight 1: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Spectral Apparition 1]";
	now the player is hostile;
	if the Spectral Apparition 1 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Spectral Apparition 1 is nowhere.
Spectral Fight 1 ends when the Spectral Apparition 1 is dead.

The Spectral Apparition 1 is a man. The Spectral Apparition 1 is in S6.
The current hit points of the Spectral Apparition 1 is 10. The maximum hit points of the Spectral Apparition 1 is 10.
The Spectral Apparition 1 is hostile. 
The Spectral Apparition 1 carries a weapon called Animate Claws 1. The current turns of the Animate Claws 1 is 1.
Setting action variables for an actor hitting:
	if the actor is Spectral Apparition 1:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the S6: 
	if the Spectral Apparition 1 is hostile, try Spectral Apparition 1 hitting the player. 
Report Spectral Apparition 1 hitting the player:
	if the current turns of the Animate Claws 1 is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. The ground around you seems restless." instead;
	if the current turns of the Animate Claws 1 is 1:
		if the dodgeTrue of the player is 1:
			say "Noticing a rupture in the ground beneath you, you are able to quickly dodge out of the grasp of the Apparition's specteral claws!";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You land a clean slice into one of the Apparition's specteral claws severing it completely. The Apparition screams in pain. [line break][line break]";
			if the Spectral Apparition 1 is dead:
				say "Taking advantage of this opening you swing at the Ghostly Apparition, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Ghostly Apparition fades into the floor as its voice echoes through the room.";
				now the Spectral Apparition 1 is nowhere;
				now the Spectral Apparition 1 is docile;
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
Report hitting a dead Spectral Apparition 1:
		say "The Ghostly Apparition fades into the floor as its voice echoes through the room. " instead.
	
Report Spectral Apparition 1 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Ghostly Apparition's specteral claws grabs hold of you and tears your arm from your body."; 
	end the story saying "More claws sprout from the ground clasping every limb in your body as they snap your neck. The claws pull you under the floor never to be seen again as the Apparition laughs."; 
	stop the action.
Carry out Spectral Apparition 1 hitting the player:
	if the current turns of the Animate Claws 1 is 1:
		now the player is hit;
		now the current turns of the Animate Claws 1 is 0;
		stop the action;
	if the current turns of the Animate Claws 1 is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Spectral Apparition 1 by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Animate Claws 1 is 1;
		stop the action.	
		
Fiery Fight 1 is a scene.
Fiery Fight 1 begins when the player is in the S47.
Every turn during Fiery Fight 1: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Fiery Apparition 1]";
	now the player is hostile;
	if the Fiery Apparition 1 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Fiery Apparition 1 is nowhere.
Fiery Fight 1 ends when the Fiery Apparition 1 is dead.

The Fiery Apparition 1 is a man. The Fiery Apparition 1 is in S47.
Rule for printing the name of Fiery Apparition 1:
	say "Ghostly Apparition".
The current hit points of the Fiery Apparition 1 is 10. The maximum hit points of the Fiery Apparition 1 is 10.
The Fiery Apparition 1 is hostile. 
The Fiery Apparition 1 carries a weapon called Living Fires 1. The current turns of the Living Fires 1 is 1.
Setting action variables for an actor hitting:
	if the actor is Fiery Apparition 1:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the S47: 
	if the Fiery Apparition 1 is hostile, try Fiery Apparition 1 hitting the player. 
Report Fiery Apparition 1 hitting the player:
	if the current turns of the Living Fires is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. Living fires start to swirl around the apparition's body." instead;
	if the current turns of the Living Fires is 1:
		if the dodgeTrue of the player is 1:
			say "The living fires whiz straight past your body as you manage to narrowly avoid them.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You forgot that it is impossible to parry a spell.";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Ghostly Apparition's living flames burn through your shield, igniting it to unfathomable temperatures, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition's flames are unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition's living flames scorch every bone in your body with an unfathomable amount of heat, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Ghostly Apparition's flames are unable to penetrate your armour.".	
Report hitting a dead Fiery Apparition 1:
		say "The Ghostly Apparition fades into the floor as its voice echoes through the room. The room grows dim. " instead.

Report Fiery Apparition 1 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Ghostly Apparition's flames are relentless as you feel every ounce of your body being burnt to a crisp."; 
	end the story saying "Your consciousness drifts away as all your senses are washed farther into the bright blue light of the apparition's fire."; 
	stop the action.
Carry out Fiery Apparition 1 hitting the player:
	if the current turns of the Living Fires is 1:
		now the player is hit;
		now the current turns of the Living Fires is 0;
		stop the action;
	if the current turns of the Living Fires is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Fiery Apparition 1 by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Living Fires is 1;
		stop the action.	
		
Bloody Fight 1 is a scene.
Bloody Fight 1 begins when the player is in the S52.
Every turn during Bloody Fight 1: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Bloody Apparition 1]";
	now the player is hostile;
	if the Bloody Apparition 1 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Bloody Apparition 1 is nowhere.
Bloody Fight 1 ends when the Bloody Apparition 1 is dead.

The Bloody Apparition 1 is a man. The Bloody Apparition 1 is in S52.
Rule for printing the name of Bloody Apparition 1:
	say "Ghostly Apparition".
The current hit points of the Bloody Apparition 1 is 10. The maximum hit points of the Bloody Apparition 1 is 10.
The Bloody Apparition 1 is hostile. 
The Bloody Apparition 1 carries a weapon called Blood Magic 1. The current turns of the Blood Magic 1 is 1.
Setting action variables for an actor hitting:
	if the actor is Bloody Apparition 1:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the S52: 
	if the Bloody Apparition 1 is hostile, try Bloody Apparition 1 hitting the player. 
Report Bloody Apparition 1 hitting the player:
	if the current turns of the Blood Magic is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. You feel an immense amount of pressure within your veins as if they were to burst at any time." instead;
	if the current turns of the Blood Magic is 1:
		if the dodgeTrue of the player is 1:
			say "You attempt to run from the pain but try as you might, the Ghostly Apparition's incantation is impossible to dodge. [line break]";
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage! [line break][line break]";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You ready your weapon in an attempt to parry any incoming attacks. Unfortunately you forget that spells can't be parried. [line break]";
			say "The Ghostly Apparition drains the living essence out of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "You raise your shield to defend against any incoming attacks, but once again you forget that a spell of this magnitude cannot be blocked.[line break]";
				say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Your armor is too thick for the Ghostly Apparition's spell to penetrate.".	
Report hitting a dead Bloody Apparition 1:
		say "The Ghostly Apparition 1 fades into the floor as its voice echoes through the room. " instead.

Report Bloody Apparition 1 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "With a final cast of its blood magic, the Ghostly Apparition bursts the blood inside your heart sending it outwards in all directions. "; 
	end the story saying "Unable to handle the immense pressure your chest explodes into hundreds of pieces scattered across the room, as the Apparition absorbs the last remaining essence of your soul."; 
	stop the action.
Carry out Bloody Apparition 1 hitting the player:
	if the current turns of the Blood Magic is 1:
		now the player is hit;
		now the current turns of the Blood Magic is 0;
		stop the action;
	if the current turns of the Blood Magic is 0:
		now the player is notHit;
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Blood Magic is 1;
		stop the action.	
		
Spectral Fight 2 is a scene.
Spectral Fight 2 begins when the player is in the S70.
Every turn during Spectral Fight 2: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Spectral Apparition 2]";
	now the player is hostile;
	if the Spectral Apparition 2 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Spectral Apparition 2 is nowhere.
Spectral Fight 2 ends when the Spectral Apparition 2 is dead.

The Spectral Apparition 2 is a man. The Spectral Apparition 2 is in S70.
The current hit points of the Spectral Apparition 2 is 10. The maximum hit points of the Spectral Apparition 2 is 10.
The Spectral Apparition 2 is hostile. 
The Spectral Apparition 2 carries a weapon called Animate Claws 2. The current turns of the Animate Claws 2 is 1.
Setting action variables for an actor hitting:
	if the actor is Spectral Apparition 2:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the S70: 
	if the Spectral Apparition 2 is hostile, try Spectral Apparition 2 hitting the player. 
Report Spectral Apparition 2 hitting the player:
	if the current turns of the Animate Claws 2 is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. The ground around you seems restless." instead;
	if the current turns of the Animate Claws 2 is 1:
		if the dodgeTrue of the player is 1:
			say "Noticing a rupture in the ground beneath you, you are able to quickly dodge out of the grasp of the Apparition's specteral claws!";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You land a clean slice into one of the Apparition's specteral claws severing it completely. The Apparition screams in pain. [line break][line break]";
			if the Spectral Apparition 2 is dead:
				say "Taking advantage of this opening you swing at the Ghostly Apparition, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Ghostly Apparition fades into the floor as its voice echoes through the room.";
				now the Spectral Apparition 2 is nowhere;
				now the Spectral Apparition 2 is docile;
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
Report hitting a dead Spectral Apparition 2:
		say "The Ghostly Apparition fades into the floor as its voice echoes through the room. " instead.
	
Report Spectral Apparition 2 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Ghostly Apparition's specteral claws grabs hold of you and tears your arm from your body."; 
	end the story saying "More claws sprout from the ground clasping every limb in your body as they snap your neck. The claws pull you under the floor never to be seen again as the Apparition laughs."; 
	stop the action.
Carry out Spectral Apparition 2 hitting the player:
	if the current turns of the Animate Claws 2 is 1:
		now the player is hit;
		now the current turns of the Animate Claws 2 is 0;
		stop the action;
	if the current turns of the Animate Claws 2 is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Spectral Apparition 2 by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Animate Claws 2 is 1;
		stop the action.	
		
Fiery Fight 2 is a scene.
Fiery Fight 2 begins when the player is in the S64.
Every turn during Fiery Fight 2: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Fiery Apparition 2]";
	now the player is hostile;
	if the Fiery Apparition 2 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Fiery Apparition 2 is nowhere.
Fiery Fight 2 ends when the Fiery Apparition 2 is dead.

The Fiery Apparition 2 is a man. The Fiery Apparition 2 is in S64.
Rule for printing the name of Fiery Apparition 2:
	say "Ghostly Apparition".
The current hit points of the Fiery Apparition 2 is 10. The maximum hit points of the Fiery Apparition 2 is 10.
The Fiery Apparition 2 is hostile. 
The Fiery Apparition 2 carries a weapon called Living Fires 2. The current turns of the Living Fires 2 is 1.
Setting action variables for an actor hitting:
	if the actor is Fiery Apparition 2:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the S64: 
	if the Fiery Apparition 2 is hostile, try Fiery Apparition 2 hitting the player. 
Report Fiery Apparition 2 hitting the player:
	if the current turns of the Living Fires is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. Living fires start to swirl around the apparition's body." instead;
	if the current turns of the Living Fires is 1:
		if the dodgeTrue of the player is 1:
			say "The living fires whiz straight past your body as you manage to narrowly avoid them.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You forgot that it is impossible to parry a spell.";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Ghostly Apparition's living flames burn through your shield, igniting it to unfathomable temperatures, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition's flames are unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition's living flames scorch every bone in your body with an unfathomable amount of heat, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Ghostly Apparition's flames are unable to penetrate your armour.".	
Report hitting a dead Fiery Apparition 2:
		say "The Ghostly Apparition fades into the floor as its voice echoes through the room. The room grows dim. " instead.

Report Fiery Apparition 2 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Ghostly Apparition's flames are relentless as you feel every ounce of your body being burnt to a crisp."; 
	end the story saying "Your consciousness drifts away as all your senses are washed farther into the bright blue light of the apparition's fire."; 
	stop the action.
Carry out Fiery Apparition 2 hitting the player:
	if the current turns of the Living Fires is 1:
		now the player is hit;
		now the current turns of the Living Fires is 0;
		stop the action;
	if the current turns of the Living Fires is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Fiery Apparition 2 by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Living Fires is 1;
		stop the action.	
		
Bloody Fight 2 is a scene.
Bloody Fight 2 begins when the player is in the S78.
Every turn during Bloody Fight 2: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Bloody Apparition 2]";
	now the player is hostile;
	if the Bloody Apparition 2 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Bloody Apparition 2 is nowhere.
Bloody Fight 2 ends when the Bloody Apparition 2 is dead.

The Bloody Apparition 2 is a man. The Bloody Apparition 2 is in S78.
Rule for printing the name of Bloody Apparition 2:
	say "Ghostly Apparition".
The current hit points of the Bloody Apparition 2 is 10. The maximum hit points of the Bloody Apparition 2 is 10.
The Bloody Apparition 2 is hostile. 
The Bloody Apparition 2 carries a weapon called Blood Magic 2. The current turns of the Blood Magic 2 is 1.
Setting action variables for an actor hitting:
	if the actor is Bloody Apparition 2:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the S78: 
	if the Bloody Apparition 2 is hostile, try Bloody Apparition 2 hitting the player. 
Report Bloody Apparition 2 hitting the player:
	if the current turns of the Blood Magic is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. You feel an immense amount of pressure within your veins as if they were to burst at any time." instead;
	if the current turns of the Blood Magic is 1:
		if the dodgeTrue of the player is 1:
			say "You attempt to run from the pain but try as you might, the Ghostly Apparition's incantation is impossible to dodge. [line break]";
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage! [line break][line break]";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You ready your weapon in an attempt to parry any incoming attacks. Unfortunately you forget that spells can't be parried. [line break]";
			say "The Ghostly Apparition drains the living essence out of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "You raise your shield to defend against any incoming attacks, but once again you forget that a spell of this magnitude cannot be blocked.[line break]";
				say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Your armor is too thick for the Ghostly Apparition's spell to penetrate.".	
Report hitting a dead Bloody Apparition 2:
		say "The Ghostly Apparition 1 fades into the floor as its voice echoes through the room. " instead.

Report Bloody Apparition 2 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "With a final cast of its blood magic, the Ghostly Apparition bursts the blood inside your heart sending it outwards in all directions. "; 
	end the story saying "Unable to handle the immense pressure your chest explodes into hundreds of pieces scattered across the room, as the Apparition absorbs the last remaining essence of your soul."; 
	stop the action.
Carry out Bloody Apparition 2 hitting the player:
	if the current turns of the Blood Magic is 1:
		now the player is hit;
		now the current turns of the Blood Magic is 0;
		stop the action;
	if the current turns of the Blood Magic is 0:
		now the player is notHit;
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Blood Magic is 1;
		stop the action.	
		
Bloody Fight 3 is a scene.
Bloody Fight 3 begins when the player is in the S18.
Every turn during Bloody Fight 3: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Bloody Apparition 3]";
	now the player is hostile;
	if the Bloody Apparition 3 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Bloody Apparition 3 is nowhere.
Bloody Fight 3 ends when the Bloody Apparition 3 is dead.

The Bloody Apparition 3 is a man. The Bloody Apparition 3 is in S18.
Rule for printing the name of Bloody Apparition 3:
	say "Ghostly Apparition".
The current hit points of the Bloody Apparition 3 is 10. The maximum hit points of the Bloody Apparition 3 is 10.
The Bloody Apparition 3 is hostile. 
The Bloody Apparition 3 carries a weapon called Blood Magic 3. The current turns of the Blood Magic 3 is 1.
Setting action variables for an actor hitting:
	if the actor is Bloody Apparition 3:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the S18: 
	if the Bloody Apparition 3 is hostile, try Bloody Apparition 3 hitting the player. 
Report Bloody Apparition 3 hitting the player:
	if the current turns of the Blood Magic is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. You feel an immense amount of pressure within your veins as if they were to burst at any time." instead;
	if the current turns of the Blood Magic is 1:
		if the dodgeTrue of the player is 1:
			say "You attempt to run from the pain but try as you might, the Ghostly Apparition's incantation is impossible to dodge. [line break]";
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage! [line break][line break]";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You ready your weapon in an attempt to parry any incoming attacks. Unfortunately you forget that spells can't be parried. [line break]";
			say "The Ghostly Apparition drains the living essence out of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "You raise your shield to defend against any incoming attacks, but once again you forget that a spell of this magnitude cannot be blocked.[line break]";
				say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Your armor is too thick for the Ghostly Apparition's spell to penetrate.".	
Report hitting a dead Bloody Apparition 3:
		say "The Ghostly Apparition 1 fades into the floor as its voice echoes through the room. " instead.

Report Bloody Apparition 3 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "With a final cast of its blood magic, the Ghostly Apparition bursts the blood inside your heart sending it outwards in all directions. "; 
	end the story saying "Unable to handle the immense pressure your chest explodes into hundreds of pieces scattered across the room, as the Apparition absorbs the last remaining essence of your soul."; 
	stop the action.
Carry out Bloody Apparition 3 hitting the player:
	if the current turns of the Blood Magic is 1:
		now the player is hit;
		now the current turns of the Blood Magic is 0;
		stop the action;
	if the current turns of the Blood Magic is 0:
		now the player is notHit;
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Blood Magic is 1;
		stop the action.	

Fiery Fight 3 is a scene.
Fiery Fight 3 begins when the player is in the S28.
Every turn during Fiery Fight 3: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Fiery Apparition 3]";
	now the player is hostile;
	if the Fiery Apparition 3 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Fiery Apparition 3 is nowhere.
Fiery Fight 3 ends when the Fiery Apparition 3 is dead.

The Fiery Apparition 3 is a man. The Fiery Apparition 3 is in S28.
Rule for printing the name of Fiery Apparition 3:
	say "Ghostly Apparition".
The current hit points of the Fiery Apparition 3 is 10. The maximum hit points of the Fiery Apparition 3 is 10.
The Fiery Apparition 3 is hostile. 
The Fiery Apparition 3 carries a weapon called Living Fires 3. The current turns of the Living Fires 3 is 1.
Setting action variables for an actor hitting:
	if the actor is Fiery Apparition 3:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the S28: 
	if the Fiery Apparition 3 is hostile, try Fiery Apparition 3 hitting the player. 
Report Fiery Apparition 3 hitting the player:
	if the current turns of the Living Fires is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. Living fires start to swirl around the apparition's body." instead;
	if the current turns of the Living Fires is 1:
		if the dodgeTrue of the player is 1:
			say "The living fires whiz straight past your body as you manage to narrowly avoid them.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You forgot that it is impossible to parry a spell.";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Ghostly Apparition's living flames burn through your shield, igniting it to unfathomable temperatures, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition's flames are unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition's living flames scorch every bone in your body with an unfathomable amount of heat, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Ghostly Apparition's flames are unable to penetrate your armour.".	
Report hitting a dead Fiery Apparition 3:
		say "The Ghostly Apparition fades into the floor as its voice echoes through the room. The room grows dim. " instead.

Report Fiery Apparition 3 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Ghostly Apparition's flames are relentless as you feel every ounce of your body being burnt to a crisp."; 
	end the story saying "Your consciousness drifts away as all your senses are washed farther into the bright blue light of the apparition's fire."; 
	stop the action.
Carry out Fiery Apparition 3 hitting the player:
	if the current turns of the Living Fires is 1:
		now the player is hit;
		now the current turns of the Living Fires is 0;
		stop the action;
	if the current turns of the Living Fires is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Fiery Apparition 3 by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Living Fires is 1;
		stop the action.	
		
Spectral Fight 3 is a scene.
Spectral Fight 3 begins when the player is in the S57.
Every turn during Spectral Fight 3: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Spectral Apparition 3]";
	now the player is hostile;
	if the Spectral Apparition 3 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Spectral Apparition 3 is nowhere.
Spectral Fight 3 ends when the Spectral Apparition 3 is dead.

The Spectral Apparition 3 is a man. The Spectral Apparition 3 is in S57.
The current hit points of the Spectral Apparition 3 is 10. The maximum hit points of the Spectral Apparition 3 is 10.
The Spectral Apparition 3 is hostile. 
The Spectral Apparition 3 carries a weapon called Animate Claws 3. The current turns of the Animate Claws 3 is 1.
Setting action variables for an actor hitting:
	if the actor is Spectral Apparition 3:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the S57: 
	if the Spectral Apparition 3 is hostile, try Spectral Apparition 3 hitting the player. 
Report Spectral Apparition 3 hitting the player:
	if the current turns of the Animate Claws is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. The ground around you seems restless." instead;
	if the current turns of the Animate Claws is 1:
		if the dodgeTrue of the player is 1:
			say "Noticing a rupture in the ground beneath you, you are able to quickly dodge out of the grasp of the Apparition's specteral claws!";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You land a clean slice into one of the Apparition's specteral claws severing it completely. The Apparition screams in pain. [line break][line break]";
			if the Spectral Apparition 3 is dead:
				say "Taking advantage of this opening you swing at the Ghostly Apparition, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Ghostly Apparition fades into the floor as its voice echoes through the room.";
				now the Spectral Apparition 3 is nowhere;
				now the Spectral Apparition 3 is docile;
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
Report hitting a dead Spectral Apparition 3:
		say "The Ghostly Apparition fades into the floor as its voice echoes through the room. " instead.
	
Report Spectral Apparition 3 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Ghostly Apparition's specteral claws grabs hold of you and tears your arm from your body."; 
	end the story saying "More claws sprout from the ground clasping every limb in your body as they snap your neck. The claws pull you under the floor never to be seen again as the Apparition laughs."; 
	stop the action.
Carry out Spectral Apparition 3 hitting the player:
	if the current turns of the Animate Claws is 1:
		now the player is hit;
		now the current turns of the Animate Claws is 0;
		stop the action;
	if the current turns of the Animate Claws is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Spectral Apparition 3 by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Animate Claws is 1;
		stop the action.	
		
Spectral Fight 4 is a scene.
Spectral Fight 4 begins when the player is in the F82.
Every turn during Spectral Fight 4: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Spectral Apparition 4]";
	now the player is hostile;
	if the Spectral Apparition 4 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Spectral Apparition 4 is nowhere.
Spectral Fight 4 ends when the Spectral Apparition 4 is dead.

The Spectral Apparition 4 is a man. The Spectral Apparition 4 is in F82.
The current hit points of the Spectral Apparition 4 is 10. The maximum hit points of the Spectral Apparition 4 is 10.
The Spectral Apparition 4 is hostile. 
The Spectral Apparition 4 carries a weapon called Animate Claws 4. The current turns of the Animate Claws 4 is 1.
Setting action variables for an actor hitting:
	if the actor is Spectral Apparition 4:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the F82: 
	if the Spectral Apparition 4 is hostile, try Spectral Apparition 4 hitting the player. 
Report Spectral Apparition 4 hitting the player:
	if the current turns of the Animate Claws is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. The ground around you seems restless." instead;
	if the current turns of the Animate Claws is 1:
		if the dodgeTrue of the player is 1:
			say "Noticing a rupture in the ground beneath you, you are able to quickly dodge out of the grasp of the Apparition's specteral claws!";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You land a clean slice into one of the Apparition's specteral claws severing it completely. The Apparition screams in pain. [line break][line break]";
			if the Spectral Apparition 4 is dead:
				say "Taking advantage of this opening you swing at the Ghostly Apparition, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Ghostly Apparition fades into the floor as its voice echoes through the room.";
				now the Spectral Apparition 4 is nowhere;
				now the Spectral Apparition 4 is docile;
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
Report hitting a dead Spectral Apparition 4:
		say "The Ghostly Apparition fades into the floor as its voice echoes through the room. " instead.
	
Report Spectral Apparition 4 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Ghostly Apparition's specteral claws grabs hold of you and tears your arm from your body."; 
	end the story saying "More claws sprout from the ground clasping every limb in your body as they snap your neck. The claws pull you under the floor never to be seen again as the Apparition laughs."; 
	stop the action.
Carry out Spectral Apparition 4 hitting the player:
	if the current turns of the Animate Claws is 1:
		now the player is hit;
		now the current turns of the Animate Claws is 0;
		stop the action;
	if the current turns of the Animate Claws is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Spectral Apparition 4 by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Animate Claws is 1;
		stop the action.	

Fiery Fight 4 is a scene.
Fiery Fight 4 begins when the player is in the F10.
Every turn during Fiery Fight 4: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Fiery Apparition 4]";
	now the player is hostile;
	if the Fiery Apparition 4 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Fiery Apparition 4 is nowhere.
Fiery Fight 4 ends when the Fiery Apparition 4 is dead.

The Fiery Apparition 4 is a man. The Fiery Apparition 4 is in F10.
Rule for printing the name of Fiery Apparition 4:
	say "Ghostly Apparition".
The current hit points of the Fiery Apparition 4 is 10. The maximum hit points of the Fiery Apparition 4 is 10.
The Fiery Apparition 4 is hostile. 
The Fiery Apparition 4 carries a weapon called Living Fires 4. The current turns of the Living Fires 4 is 1.
Setting action variables for an actor hitting:
	if the actor is Fiery Apparition 4:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the F10: 
	if the Fiery Apparition 4 is hostile, try Fiery Apparition 4 hitting the player. 
Report Fiery Apparition 4 hitting the player:
	if the current turns of the Living Fires is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. Living fires start to swirl around the apparition's body." instead;
	if the current turns of the Living Fires is 1:
		if the dodgeTrue of the player is 1:
			say "The living fires whiz straight past your body as you manage to narrowly avoid them.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You forgot that it is impossible to parry a spell.";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Ghostly Apparition's living flames burn through your shield, igniting it to unfathomable temperatures, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition's flames are unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition's living flames scorch every bone in your body with an unfathomable amount of heat, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Ghostly Apparition's flames are unable to penetrate your armour.".	
Report hitting a dead Fiery Apparition 4:
		say "The Ghostly Apparition fades into the floor as its voice echoes through the room. The room grows dim. " instead.

Report Fiery Apparition 4 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Ghostly Apparition's flames are relentless as you feel every ounce of your body being burnt to a crisp."; 
	end the story saying "Your consciousness drifts away as all your senses are washed farther into the bright blue light of the apparition's fire."; 
	stop the action.
Carry out Fiery Apparition 4 hitting the player:
	if the current turns of the Living Fires is 1:
		now the player is hit;
		now the current turns of the Living Fires is 0;
		stop the action;
	if the current turns of the Living Fires is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Fiery Apparition 4 by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Living Fires is 1;
		stop the action.	

Bloody Fight 4 is a scene.
Bloody Fight 4 begins when the player is in the F56.
Every turn during Bloody Fight 4: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Bloody Apparition 4]";
	now the player is hostile;
	if the Bloody Apparition 4 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Bloody Apparition 4 is nowhere.
Bloody Fight 4 ends when the Bloody Apparition 4 is dead.

The Bloody Apparition 4 is a man. The Bloody Apparition 4 is in F56.
Rule for printing the name of Bloody Apparition 4:
	say "Ghostly Apparition".
The current hit points of the Bloody Apparition 4 is 10. The maximum hit points of the Bloody Apparition 4 is 10.
The Bloody Apparition 4 is hostile. 
The Bloody Apparition 4 carries a weapon called Blood Magic 4. The current turns of the Blood Magic 4 is 1.
Setting action variables for an actor hitting:
	if the actor is Bloody Apparition 4:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the F56: 
	if the Bloody Apparition 4 is hostile, try Bloody Apparition 4 hitting the player. 
Report Bloody Apparition 4 hitting the player:
	if the current turns of the Blood Magic is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. You feel an immense amount of pressure within your veins as if they were to burst at any time." instead;
	if the current turns of the Blood Magic is 1:
		if the dodgeTrue of the player is 1:
			say "You attempt to run from the pain but try as you might, the Ghostly Apparition's incantation is impossible to dodge. [line break]";
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage! [line break][line break]";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You ready your weapon in an attempt to parry any incoming attacks. Unfortunately you forget that spells can't be parried. [line break]";
			say "The Ghostly Apparition drains the living essence out of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "You raise your shield to defend against any incoming attacks, but once again you forget that a spell of this magnitude cannot be blocked.[line break]";
				say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Your armor is too thick for the Ghostly Apparition's spell to penetrate.".	
Report hitting a dead Bloody Apparition 4:
		say "The Ghostly Apparition 1 fades into the floor as its voice echoes through the room. " instead.

Report Bloody Apparition 4 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "With a final cast of its blood magic, the Ghostly Apparition bursts the blood inside your heart sending it outwards in all directions. "; 
	end the story saying "Unable to handle the immense pressure your chest explodes into hundreds of pieces scattered across the room, as the Apparition absorbs the last remaining essence of your soul."; 
	stop the action.
Carry out Bloody Apparition 4 hitting the player:
	if the current turns of the Blood Magic is 1:
		now the player is hit;
		now the current turns of the Blood Magic is 0;
		stop the action;
	if the current turns of the Blood Magic is 0:
		now the player is notHit;
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Blood Magic is 1;
		stop the action.	
		
Fiery Fight 5 is a scene.
Fiery Fight 5 begins when the player is in the F75.
Every turn during Fiery Fight 5: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Fiery Apparition 5]";
	now the player is hostile;
	if the Fiery Apparition 5 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Fiery Apparition 5 is nowhere.
Fiery Fight 5 ends when the Fiery Apparition 5 is dead.

The Fiery Apparition 5 is a man. The Fiery Apparition 5 is in F75.
Rule for printing the name of Fiery Apparition 5:
	say "Ghostly Apparition".
The current hit points of the Fiery Apparition 5 is 10. The maximum hit points of the Fiery Apparition 5 is 10.
The Fiery Apparition 5 is hostile. 
The Fiery Apparition 5 carries a weapon called Living Fires 5. The current turns of the Living Fires 5 is 1.
Setting action variables for an actor hitting:
	if the actor is Fiery Apparition 5:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the F75: 
	if the Fiery Apparition 5 is hostile, try Fiery Apparition 5 hitting the player. 
Report Fiery Apparition 5 hitting the player:
	if the current turns of the Living Fires is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. Living fires start to swirl around the apparition's body." instead;
	if the current turns of the Living Fires is 1:
		if the dodgeTrue of the player is 1:
			say "The living fires whiz straight past your body as you manage to narrowly avoid them.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You forgot that it is impossible to parry a spell.";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Ghostly Apparition's living flames burn through your shield, igniting it to unfathomable temperatures, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition's flames are unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition's living flames scorch every bone in your body with an unfathomable amount of heat, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Ghostly Apparition's flames are unable to penetrate your armour.".	
Report hitting a dead Fiery Apparition 5:
		say "The Ghostly Apparition fades into the floor as its voice echoes through the room. The room grows dim. " instead.

Report Fiery Apparition 5 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Ghostly Apparition's flames are relentless as you feel every ounce of your body being burnt to a crisp."; 
	end the story saying "Your consciousness drifts away as all your senses are washed farther into the bright blue light of the apparition's fire."; 
	stop the action.
Carry out Fiery Apparition 5 hitting the player:
	if the current turns of the Living Fires is 1:
		now the player is hit;
		now the current turns of the Living Fires is 0;
		stop the action;
	if the current turns of the Living Fires is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Fiery Apparition 5 by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Living Fires is 1;
		stop the action.
		

Spectral Fight 5 is a scene.
Spectral Fight 5 begins when the player is in the F17.
Every turn during Spectral Fight 5: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Spectral Apparition 4]";
	now the player is hostile;
	if the Spectral Apparition 5 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Spectral Apparition 4 is nowhere.
Spectral Fight 5 ends when the Spectral Apparition 5 is dead.

The Spectral Apparition 5 is a man. The Spectral Apparition 5 is in F17.
The current hit points of the Spectral Apparition 5 is 10. The maximum hit points of the Spectral Apparition 5 is 10.
The Spectral Apparition 5 is hostile. 
The Spectral Apparition 5 carries a weapon called Animate Claws 5. The current turns of the Animate Claws 5 is 1.
Setting action variables for an actor hitting:
	if the actor is Spectral Apparition 5:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the F17: 
	if the Spectral Apparition 5 is hostile, try Spectral Apparition 5 hitting the player. 
Report Spectral Apparition 5 hitting the player:
	if the current turns of the Animate Claws is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. The ground around you seems restless." instead;
	if the current turns of the Animate Claws is 1:
		if the dodgeTrue of the player is 1:
			say "Noticing a rupture in the ground beneath you, you are able to quickly dodge out of the grasp of the Apparition's specteral claws!";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You land a clean slice into one of the Apparition's specteral claws severing it completely. The Apparition screams in pain. [line break][line break]";
			if the Spectral Apparition 5 is dead:
				say "Taking advantage of this opening you swing at the Ghostly Apparition, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Ghostly Apparition fades into the floor as its voice echoes through the room.";
				now the Spectral Apparition 5 is nowhere;
				now the Spectral Apparition 5 is docile;
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
Report hitting a dead Spectral Apparition 5:
		say "The Ghostly Apparition fades into the floor as its voice echoes through the room. " instead.
	
Report Spectral Apparition 5 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Ghostly Apparition's specteral claws grabs hold of you and tears your arm from your body."; 
	end the story saying "More claws sprout from the ground clasping every limb in your body as they snap your neck. The claws pull you under the floor never to be seen again as the Apparition laughs."; 
	stop the action.
Carry out Spectral Apparition 5 hitting the player:
	if the current turns of the Animate Claws is 1:
		now the player is hit;
		now the current turns of the Animate Claws is 0;
		stop the action;
	if the current turns of the Animate Claws is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Spectral Apparition 5 by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Animate Claws is 1;
		stop the action.		

Bloody Fight 5 is a scene.
Bloody Fight 5 begins when the player is in the F90.
Every turn during Bloody Fight 5: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Bloody Apparition 5]";
	now the player is hostile;
	if the Bloody Apparition 5 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Bloody Apparition 5 is nowhere.
Bloody Fight 5 ends when the Bloody Apparition 5 is dead.

The Bloody Apparition 5 is a man. The Bloody Apparition 5 is in F90.
Rule for printing the name of Bloody Apparition 5:
	say "Ghostly Apparition".
The current hit points of the Bloody Apparition 5 is 10. The maximum hit points of the Bloody Apparition 5 is 10.
The Bloody Apparition 5 is hostile. 
The Bloody Apparition 5 carries a weapon called Blood Magic 5. The current turns of the Blood Magic 5 is 1.
Setting action variables for an actor hitting:
	if the actor is Bloody Apparition 5:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the F90: 
	if the Bloody Apparition 5 is hostile, try Bloody Apparition 5 hitting the player. 
Report Bloody Apparition 5 hitting the player:
	if the current turns of the Blood Magic is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. You feel an immense amount of pressure within your veins as if they were to burst at any time." instead;
	if the current turns of the Blood Magic is 1:
		if the dodgeTrue of the player is 1:
			say "You attempt to run from the pain but try as you might, the Ghostly Apparition's incantation is impossible to dodge. [line break]";
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage! [line break][line break]";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You ready your weapon in an attempt to parry any incoming attacks. Unfortunately you forget that spells can't be parried. [line break]";
			say "The Ghostly Apparition drains the living essence out of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "You raise your shield to defend against any incoming attacks, but once again you forget that a spell of this magnitude cannot be blocked.[line break]";
				say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Your armor is too thick for the Ghostly Apparition's spell to penetrate.".	
Report hitting a dead Bloody Apparition 5:
		say "The Ghostly Apparition 1 fades into the floor as its voice echoes through the room. " instead.
Report Bloody Apparition 5 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "With a final cast of its blood magic, the Ghostly Apparition bursts the blood inside your heart sending it outwards in all directions. "; 
	end the story saying "Unable to handle the immense pressure your chest explodes into hundreds of pieces scattered across the room, as the Apparition absorbs the last remaining essence of your soul."; 
	stop the action.
Carry out Bloody Apparition 5 hitting the player:
	if the current turns of the Blood Magic is 1:
		now the player is hit;
		now the current turns of the Blood Magic is 0;
		stop the action;
	if the current turns of the Blood Magic is 0:
		now the player is notHit;
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Blood Magic is 1;
		stop the action.	
		
Bloody Fight 6 is a scene.
Bloody Fight 6 begins when the player is in the F68.
Every turn during Bloody Fight 6: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Bloody Apparition 6]";
	now the player is hostile;
	if the Bloody Apparition 6 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Bloody Apparition 6 is nowhere.
Bloody Fight 6 ends when the Bloody Apparition 6 is dead.

The Bloody Apparition 6 is a man. The Bloody Apparition 6 is in F68.
Rule for printing the name of Bloody Apparition 6:
	say "Ghostly Apparition".
The current hit points of the Bloody Apparition 6 is 10. The maximum hit points of the Bloody Apparition 6 is 10.
The Bloody Apparition 6 is hostile. 
The Bloody Apparition 6 carries a weapon called Blood Magic 6. The current turns of the Blood Magic 6 is 1.
Setting action variables for an actor hitting:
	if the actor is Bloody Apparition 6:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the F68: 
	if the Bloody Apparition 6 is hostile, try Bloody Apparition 6 hitting the player. 
Report Bloody Apparition 6 hitting the player:
	if the current turns of the Blood Magic is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. You feel an immense amount of pressure within your veins as if they were to burst at any time." instead;
	if the current turns of the Blood Magic is 1:
		if the dodgeTrue of the player is 1:
			say "You attempt to run from the pain but try as you might, the Ghostly Apparition's incantation is impossible to dodge. [line break]";
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage! [line break][line break]";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You ready your weapon in an attempt to parry any incoming attacks. Unfortunately you forget that spells can't be parried. [line break]";
			say "The Ghostly Apparition drains the living essence out of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "You raise your shield to defend against any incoming attacks, but once again you forget that a spell of this magnitude cannot be blocked.[line break]";
				say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Your armor is too thick for the Ghostly Apparition's spell to penetrate.".	
Report hitting a dead Bloody Apparition 6:
		say "The Ghostly Apparition 1 fades into the floor as its voice echoes through the room. " instead.
Report Bloody Apparition 6 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "With a final cast of its blood magic, the Ghostly Apparition bursts the blood inside your heart sending it outwards in all directions. "; 
	end the story saying "Unable to handle the immense pressure your chest explodes into hundreds of pieces scattered across the room, as the Apparition absorbs the last remaining essence of your soul."; 
	stop the action.
Carry out Bloody Apparition 6 hitting the player:
	if the current turns of the Blood Magic is 1:
		now the player is hit;
		now the current turns of the Blood Magic is 0;
		stop the action;
	if the current turns of the Blood Magic is 0:
		now the player is notHit;
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Blood Magic is 1;
		stop the action.	
		
Bloody Fight 7 is a scene.
Bloody Fight 7 begins when the player is in the F100.
Every turn during Bloody Fight 7: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Bloody Apparition 7]";
	now the player is hostile;
	if the Bloody Apparition 7 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Bloody Apparition 7 is nowhere.
Bloody Fight 7 ends when the Bloody Apparition 7 is dead.

The Bloody Apparition 7 is a man. The Bloody Apparition 7 is in F100.
Rule for printing the name of Bloody Apparition 7:
	say "Ghostly Apparition".
The current hit points of the Bloody Apparition 7 is 10. The maximum hit points of the Bloody Apparition 7 is 10.
The Bloody Apparition 7 is hostile. 
The Bloody Apparition 7 carries a weapon called Blood Magic 7. The current turns of the Blood Magic 7 is 1.
Setting action variables for an actor hitting:
	if the actor is Bloody Apparition 7:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the F100: 
	if the Bloody Apparition 7 is hostile, try Bloody Apparition 7 hitting the player. 
Report Bloody Apparition 7 hitting the player:
	if the current turns of the Blood Magic is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. You feel an immense amount of pressure within your veins as if they were to burst at any time." instead;
	if the current turns of the Blood Magic is 1:
		if the dodgeTrue of the player is 1:
			say "You attempt to run from the pain but try as you might, the Ghostly Apparition's incantation is impossible to dodge. [line break]";
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage! [line break][line break]";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You ready your weapon in an attempt to parry any incoming attacks. Unfortunately you forget that spells can't be parried. [line break]";
			say "The Ghostly Apparition drains the living essence out of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "You raise your shield to defend against any incoming attacks, but once again you forget that a spell of this magnitude cannot be blocked.[line break]";
				say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Your armor is too thick for the Ghostly Apparition's spell to penetrate.".	
Report hitting a dead Bloody Apparition 7:
		say "The Ghostly Apparition 1 fades into the floor as its voice echoes through the room. " instead.
Report Bloody Apparition 7 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "With a final cast of its blood magic, the Ghostly Apparition bursts the blood inside your heart sending it outwards in all directions. "; 
	end the story saying "Unable to handle the immense pressure your chest explodes into hundreds of pieces scattered across the room, as the Apparition absorbs the last remaining essence of your soul."; 
	stop the action.
Carry out Bloody Apparition 7 hitting the player:
	if the current turns of the Blood Magic is 1:
		now the player is hit;
		now the current turns of the Blood Magic is 0;
		stop the action;
	if the current turns of the Blood Magic is 0:
		now the player is notHit;
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Blood Magic is 1;
		stop the action.	
		
Fiery Fight 6 is a scene.
Fiery Fight 6 begins when the player is in the F39.
Every turn during Fiery Fight 6: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Fiery Apparition 6]";
	now the player is hostile;
	if the Fiery Apparition 6 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Fiery Apparition 6 is nowhere.
Fiery Fight 6 ends when the Fiery Apparition 6 is dead.

The Fiery Apparition 6 is a man. The Fiery Apparition 6 is in F39.
Rule for printing the name of Fiery Apparition 6:
	say "Ghostly Apparition".
The current hit points of the Fiery Apparition 6 is 10. The maximum hit points of the Fiery Apparition 6 is 10.
The Fiery Apparition 6 is hostile. 
The Fiery Apparition 6 carries a weapon called Living Fires 6. The current turns of the Living Fires 6 is 1.
Setting action variables for an actor hitting:
	if the actor is Fiery Apparition 6:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the F39: 
	if the Fiery Apparition 6 is hostile, try Fiery Apparition 6 hitting the player. 
Report Fiery Apparition 6 hitting the player:
	if the current turns of the Living Fires is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. Living fires start to swirl around the apparition's body." instead;
	if the current turns of the Living Fires is 1:
		if the dodgeTrue of the player is 1:
			say "The living fires whiz straight past your body as you manage to narrowly avoid them.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You forgot that it is impossible to parry a spell.";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Ghostly Apparition's living flames burn through your shield, igniting it to unfathomable temperatures, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition's flames are unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition's living flames scorch every bone in your body with an unfathomable amount of heat, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Ghostly Apparition's flames are unable to penetrate your armour.".	
Report hitting a dead Fiery Apparition 6:
		say "The Ghostly Apparition fades into the floor as its voice echoes through the room. The room grows dim. " instead.
Report Fiery Apparition 6 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Ghostly Apparition's flames are relentless as you feel every ounce of your body being burnt to a crisp."; 
	end the story saying "Your consciousness drifts away as all your senses are washed farther into the bright blue light of the apparition's fire."; 
	stop the action.
Carry out Fiery Apparition 6 hitting the player:
	if the current turns of the Living Fires is 1:
		now the player is hit;
		now the current turns of the Living Fires is 0;
		stop the action;
	if the current turns of the Living Fires is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Fiery Apparition 6 by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Living Fires is 1;
		stop the action.
	
Spectral Fight 6 is a scene.
Spectral Fight 6 begins when the player is in the F139.
Every turn during Spectral Fight 6: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Spectral Apparition 4]";
	now the player is hostile;
	if the Spectral Apparition 6 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Spectral Apparition 4 is nowhere.
Spectral Fight 6 ends when the Spectral Apparition 6 is dead.

The Spectral Apparition 6 is a man. The Spectral Apparition 6 is in F139.
The current hit points of the Spectral Apparition 6 is 10. The maximum hit points of the Spectral Apparition 6 is 10.
The Spectral Apparition 6 is hostile. 
The Spectral Apparition 6 carries a weapon called Animate Claws 6. The current turns of the Animate Claws 6 is 1.
Setting action variables for an actor hitting:
	if the actor is Spectral Apparition 6:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the F139: 
	if the Spectral Apparition 6 is hostile, try Spectral Apparition 6 hitting the player. 
Report Spectral Apparition 6 hitting the player:
	if the current turns of the Animate Claws is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. The ground around you seems restless." instead;
	if the current turns of the Animate Claws is 1:
		if the dodgeTrue of the player is 1:
			say "Noticing a rupture in the ground beneath you, you are able to quickly dodge out of the grasp of the Apparition's specteral claws!";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You land a clean slice into one of the Apparition's specteral claws severing it completely. The Apparition screams in pain. [line break][line break]";
			if the Spectral Apparition 6 is dead:
				say "Taking advantage of this opening you swing at the Ghostly Apparition, dealing [riposteDamage of the player] damage![line break][line break]";
				say "The Ghostly Apparition fades into the floor as its voice echoes through the room.";
				now the Spectral Apparition 6 is nowhere;
				now the Spectral Apparition 6 is docile;
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
Report hitting a dead Spectral Apparition 6:
		say "The Ghostly Apparition fades into the floor as its voice echoes through the room. " instead.
	
Report Spectral Apparition 6 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Ghostly Apparition's specteral claws grabs hold of you and tears your arm from your body."; 
	end the story saying "More claws sprout from the ground clasping every limb in your body as they snap your neck. The claws pull you under the floor never to be seen again as the Apparition laughs."; 
	stop the action.
Carry out Spectral Apparition 6 hitting the player:
	if the current turns of the Animate Claws is 1:
		now the player is hit;
		now the current turns of the Animate Claws is 0;
		stop the action;
	if the current turns of the Animate Claws is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Spectral Apparition 6 by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Animate Claws is 1;
		stop the action.		

Fiery Fight 7 is a scene.
Fiery Fight 7 begins when the player is in the F131.
Every turn during Fiery Fight 7: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Fiery Apparition 7]";
	now the player is hostile;
	if the Fiery Apparition 7 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Fiery Apparition 7 is nowhere.
Fiery Fight 7 ends when the Fiery Apparition 7 is dead.

The Fiery Apparition 7 is a man. The Fiery Apparition 7 is in F131.
Rule for printing the name of Fiery Apparition 7:
	say "Ghostly Apparition".
The current hit points of the Fiery Apparition 7 is 10. The maximum hit points of the Fiery Apparition 7 is 10.
The Fiery Apparition 7 is hostile. 
The Fiery Apparition 7 carries a weapon called Living Fires 7. The current turns of the Living Fires 7 is 1.
Setting action variables for an actor hitting:
	if the actor is Fiery Apparition 7:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the F131: 
	if the Fiery Apparition 7 is hostile, try Fiery Apparition 7 hitting the player. 
Report Fiery Apparition 7 hitting the player:
	if the current turns of the Living Fires is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. Living fires start to swirl around the apparition's body." instead;
	if the current turns of the Living Fires is 1:
		if the dodgeTrue of the player is 1:
			say "The living fires whiz straight past your body as you manage to narrowly avoid them.";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You forgot that it is impossible to parry a spell.";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "The Ghostly Apparition's living flames burn through your shield, igniting it to unfathomable temperatures, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition's flames are unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition's living flames scorch every bone in your body with an unfathomable amount of heat, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "The Ghostly Apparition's flames are unable to penetrate your armour.".	
Report hitting a dead Fiery Apparition 7:
		say "The Ghostly Apparition fades into the floor as its voice echoes through the room. The room grows dim. " instead.
Report Fiery Apparition 7 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "The Ghostly Apparition's flames are relentless as you feel every ounce of your body being burnt to a crisp."; 
	end the story saying "Your consciousness drifts away as all your senses are washed farther into the bright blue light of the apparition's fire."; 
	stop the action.
Carry out Fiery Apparition 7 hitting the player:
	if the current turns of the Living Fires is 1:
		now the player is hit;
		now the current turns of the Living Fires is 0;
		stop the action;
	if the current turns of the Living Fires is 0:
		now the player is notHit;
		if dodgeTrue of the player is 1:
			do nothing;
		otherwise if parryTrue of the player is 1:
			decrease the current hit points of the Fiery Apparition 7 by the riposteDamage of the player;
		otherwise if blockTrue of the player is 1:
			do nothing;
		otherwise if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Living Fires is 1;
		stop the action.

Bloody Fight 8 is a scene.
Bloody Fight 8 begins when the player is in the F112.
Every turn during Bloody Fight 8: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Bloody Apparition 8]";
	now the player is hostile;
	if the Bloody Apparition 8 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Bloody Apparition 8 is nowhere.
Bloody Fight 8 ends when the Bloody Apparition 8 is dead.

The Bloody Apparition 8 is a man. The Bloody Apparition 8 is in F112.
Rule for printing the name of Bloody Apparition 8:
	say "Ghostly Apparition".
The current hit points of the Bloody Apparition 8 is 10. The maximum hit points of the Bloody Apparition 8 is 10.
The Bloody Apparition 8 is hostile. 
The Bloody Apparition 8 carries a weapon called Blood Magic 8. The current turns of the Blood Magic 8 is 1.
Setting action variables for an actor hitting:
	if the actor is Bloody Apparition 8:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the F112: 
	if the Bloody Apparition 8 is hostile, try Bloody Apparition 8 hitting the player. 
Report Bloody Apparition 8 hitting the player:
	if the current turns of the Blood Magic is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. You feel an immense amount of pressure within your veins as if they were to burst at any time." instead;
	if the current turns of the Blood Magic is 1:
		if the dodgeTrue of the player is 1:
			say "You attempt to run from the pain but try as you might, the Ghostly Apparition's incantation is impossible to dodge. [line break]";
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage! [line break][line break]";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You ready your weapon in an attempt to parry any incoming attacks. Unfortunately you forget that spells can't be parried. [line break]";
			say "The Ghostly Apparition drains the living essence out of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "You raise your shield to defend against any incoming attacks, but once again you forget that a spell of this magnitude cannot be blocked.[line break]";
				say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Your armor is too thick for the Ghostly Apparition's spell to penetrate.".	
Report hitting a dead Bloody Apparition 8:
		say "The Ghostly Apparition 1 fades into the floor as its voice echoes through the room. " instead.
Report Bloody Apparition 8 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "With a final cast of its blood magic, the Ghostly Apparition bursts the blood inside your heart sending it outwards in all directions. "; 
	end the story saying "Unable to handle the immense pressure your chest explodes into hundreds of pieces scattered across the room, as the Apparition absorbs the last remaining essence of your soul."; 
	stop the action.
Carry out Bloody Apparition 8 hitting the player:
	if the current turns of the Blood Magic is 1:
		now the player is hit;
		now the current turns of the Blood Magic is 0;
		stop the action;
	if the current turns of the Blood Magic is 0:
		now the player is notHit;
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Blood Magic is 1;
		stop the action.	

Bloody Fight 9 is a scene.
Bloody Fight 9 begins when the player is in the F70.
Every turn during Bloody Fight 9: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Bloody Apparition 9]";
	now the player is hostile;
	if the Bloody Apparition 9 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Bloody Apparition 9 is nowhere.
Bloody Fight 9 ends when the Bloody Apparition 9 is dead.
The Bloody Apparition 9 is a man. The Bloody Apparition 9 is in F70.
Rule for printing the name of Bloody Apparition 9:
	say "Ghostly Apparition".
The current hit points of the Bloody Apparition 9 is 10. The maximum hit points of the Bloody Apparition 9 is 10.
The Bloody Apparition 9 is hostile. 
The Bloody Apparition 9 carries a weapon called Blood Magic 9. The current turns of the Blood Magic 9 is 1.
Setting action variables for an actor hitting:
	if the actor is Bloody Apparition 9:
		if the blockTrue of the player is 0:
			now the damage inflicted is a random number between 3 and 5 minus the damageReduction of the player;
		otherwise:
			let x be the damageReduction of the player plus the damagePrevented of the player;
			now the damage inflicted is a random number between 3 and 5 minus x.
Every turn when the player is in the F70: 
	if the Bloody Apparition 9 is hostile, try Bloody Apparition 9 hitting the player. 
Report Bloody Apparition 9 hitting the player:
	if the current turns of the Blood Magic is 0:
		say "The Ghostly Apparition begins to recite an incomprehensible incantation. You feel an immense amount of pressure within your veins as if they were to burst at any time." instead;
	if the current turns of the Blood Magic is 1:
		if the dodgeTrue of the player is 1:
			say "You attempt to run from the pain but try as you might, the Ghostly Apparition's incantation is impossible to dodge. [line break]";
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage! [line break][line break]";
			now the dodgeTrue is 0;
		otherwise if the parryTrue of the player is 1:
			say "You ready your weapon in an attempt to parry any incoming attacks. Unfortunately you forget that spells can't be parried. [line break]";
			say "The Ghostly Apparition drains the living essence out of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			now the parryTrue is 0;
		otherwise if the blockTrue of the the player is 1:
			if damage inflicted > 0:
				decrease the current hit points of the player by the damage inflicted;
				say "You raise your shield to defend against any incoming attacks, but once again you forget that a spell of this magnitude cannot be blocked.[line break]";
				say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
			otherwise:
				say "The Ghostly Apparition is unable to penetrate your shield.";
			now the blockTrue of the player is 0;
		otherwise if damage inflicted > 0:
			say "The Ghostly Apparition drains the living essence of your body, as it sucks your blood through your veins and out through your mouth, dealing [damage inflicted] point[s] of damage!";
		otherwise:
			say "Your armor is too thick for the Ghostly Apparition's spell to penetrate.".	
Report hitting a dead Bloody Apparition 9:
		say "The Ghostly Apparition 1 fades into the floor as its voice echoes through the room. " instead.
Report Bloody Apparition 9 hitting the player when the player is dead:
	now the current hit points of the player is 0; 
	say "With a final cast of its blood magic, the Ghostly Apparition bursts the blood inside your heart sending it outwards in all directions. "; 
	end the story saying "Unable to handle the immense pressure your chest explodes into hundreds of pieces scattered across the room, as the Apparition absorbs the last remaining essence of your soul."; 
	stop the action.
Carry out Bloody Apparition 9 hitting the player:
	if the current turns of the Blood Magic is 1:
		now the player is hit;
		now the current turns of the Blood Magic is 0;
		stop the action;
	if the current turns of the Blood Magic is 0:
		now the player is notHit;
		if damage inflicted > 0:
			decrease the current hit points of the noun by the damage inflicted;
		now the current turns of the Blood Magic is 1;
		stop the action.	

Shadow Enemies ends here.
