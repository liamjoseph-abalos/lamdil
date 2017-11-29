Armour Mechanics by Lamdil begins here.

Book 6 - Armour

A player has a number called damageReduction. The damageReduction of the player is 0.
A player has a number called damagePrevented. The damagePrevented of the player is 0.
Understand the command "equip" and "eq" as "wear".
Understand the command "unequip" and "un" as "remove".
Check the player wearing something (this is the can't wear something that is not wearable rule):
	if the noun is not wearable:
		say "You can't equip [noun].";
		stop the action.
	
Part 1 - Head Equipment

A head equipment is a kind of thing. A head equipment is always wearable. A head equipment has a number called headPoints. A head equipment has a number called headDamageReduction.
Check the player wearing something (this is the standard already wearing head equipment rule):
	if the noun is head equipment:
		if the player is wearing head equipment:
			say "You are already wearing something on your head.";
			stop the action.
Report the player wearing head equipment (this is the report player wearing head equipment rule):
	instead say "You equip [noun] on your head.".
Report the player taking off head equipment (this is the report player taking off head equipment rule):
	instead say "You unequip [noun] from your head.".
Carry out the player wearing head equipment (this is the carry out player wearing head equipment rule):
	let x be the maximum hit points of the player;
	now the maximum hit points of the player is x plus headPoints of the noun;
	let y be the damageReduction of the player;
	now the damageReduction of the player is y plus headDamageReduction of the noun.
Carry out the player taking off head equipment (this is the carry out player removing head equipment rule):
	let x be the the maximum hit points of the player;
	now the maximum hit points of the player is x minus headPoints of the noun;
	let y be the damageReduction of the player;
	now the damageReduction of the player is y minus headDamageReduction of the noun;
	if the current hit points of the player is greater than the maximum hit points of the player:
		now the current hit points of the player is the maximum hit points of the player.

Rugged Cap is head equipment. The headPoints of Rugged Cap is 3. The headDamageReduction of the Rugged Cap is 1.
Guard Helmet is head equipment. The headPoints of Guard Helmet is 6. The headDamageReduction of the Guard Helmet is 2.
Defender Sallet is head equipment. The headPoints of Defender Sallet is 12. The headDamageReduction of the Defender Sallet is 3.
Vicious Burgonet is head equipment. The headPoints of Vicious Burgonet is 24. The headDamageReduction of the Vicious Burgonet is 4.
Executioner Bascinet is head equipment. The headPoints of Executioner Bascinet is 48. The headDamageReduction of the Executioner Bascinet is 5.

Part 2 - Body Equipment

A body equipment is a kind of thing. A body equipment is always wearable. A body equipment has a number called bodyPoints. A body equipment has a number called bodyDamageReduction.
Check the player wearing something (this is the standard already wearing body equipment rule):
	if the noun is body equipment:
		if the player is wearing body equipment:
			say "You are already wearing something on your body.";
			stop the action.
Report the player wearing body equipment (this is the report player wearing body equipment rule):
	instead say "You equip [noun] on your body.".
Report the player taking off body equipment (this is the report player taking off body equipment rule):
	instead say "You unequip [noun] from your body.".
Carry out the player wearing body equipment (this is the carry out player wearing body equipment rule):
	let x be the maximum hit points of the player;
	now the maximum hit points of the player is x plus bodyPoints of the noun;
	let y be the damageReduction of the player;
	now the damageReduction of the player is y plus bodyDamageReduction of the noun.
Carry out the player taking off body equipment (this is the carry out player removing body equipment rule):
	let x be the the maximum hit points of the player;
	now the maximum hit points of the player is x minus bodyPoints of the noun;
	let y be the damageReduction of the player;
	now the damageReduction of the player is y minus bodyDamageReduction of the noun;
	if the current hit points of the player is greater than the maximum hit points of the player:
		now the current hit points of the player is the maximum hit points of the player.
		
Damaged Chainmail is body equipment. The bodyPoints of the Damaged Chainmail is 5. The bodyDamageReduction of the Damaged Chainmail is 3.
Knightly Plate is body equipment. The bodyPoints of the Knightly Plate is 10. The bodyDamageReduction of the Knightly Plate is 6.
Righteous Armour is body equipment. The bodyPoints of the Righteous Armour is 20. The bodyDamageReduction of the Righteous Armour is 9.
Spiked Suit is body equipment. The bodyPoints of the Spiked Suit is 40. The bodyDamageReduction of the Spiked Suit is 12.
Bloodstained Chestplate is body equipment. The bodyPoints of the Bloodstained Chestplate is 80. The bodyDamageReduction of the Bloodstained Chestplate is 15.

Part 3 - Hand Equipment

A hand equipment is a kind of thing. A hand equipment is always wearable. A hand equipment has a number called handPoints. A hand equipment has a number called handDamageReduction.
Check the player wearing something (this is the standard already wearing hand equipment rule):
	if the noun is hand equipment:
		if the player is wearing hand equipment:
			say "You are already wearing something on your hands.";
			stop the action.
Report the player wearing hand equipment (this is the report player wearing hand equipment rule):
	instead say "You equip [noun] on your hands.".
Report the player taking off hand equipment (this is the report player taking off hand equipment rule):
	instead say "You unequip [noun] from your hands.".
Carry out the player wearing hand equipment (this is the carry out player wearing hand equipment rule):
	let x be the maximum hit points of the player;
	now the maximum hit points of the player is x plus handPoints of the noun;
	let y be the damageReduction of the player;
	now the damageReduction of the player is y plus handDamageReduction of the noun.
Carry out the player taking off hand equipment (this is the carry out player removing hand equipment rule):
	let x be the the maximum hit points of the player;
	now the maximum hit points of the player is x minus handPoints of the noun;
	let y be the damageReduction of the player;
	now the damageReduction of the player is y minus handDamageReduction of the noun;
	if the current hit points of the player is greater than the maximum hit points of the player:
		now the current hit points of the player is the maximum hit points of the player.

Rusty Bracelets is hand equipment. The handPoints of the Rusty Bracelets is 2. The handDamageReduction of the Rusty Bracelets is 1.
Leather Gloves is hand equipment. The handPoints of the Leather Gloves is 4. The handDamageReduction of the Leather Gloves is 1.
Royal Gauntlets is hand equipment. The handPoints of the Royal Gauntlets is 8. The handDamageReduction of the Royal Gauntlets is 2.
Cursed Mitts is hand equipment. The handPoints of the Cursed Mitts is 16. The handDamageReduction of the Cursed Mitts is 2.
Heavy Shackles is hand equipment. The handPoints of the Heavy Shackles is 32. The handDamageReduction of the Heavy Shackles is 3.

Part 4 - Leg Equipment

A leg equipment is a kind of thing. A leg equipment is always wearable. A leg equipment has a number called legPoints. A leg equipment has a number called legDamageReduction.
Check the player wearing something (this is the standard already wearing leg equipment rule):
	if the noun is leg equipment:
		if the player is wearing leg equipment:
			say "You are already wearing something on your legs.";
			stop the action.
Report the player wearing leg equipment (this is the report player wearing leg equipment rule):
	instead say "You equip [noun] on your legs.".
Report the player taking off leg equipment (this is the report player taking off leg equipment rule):
	instead say "You unequip [noun] from your legs.".
Carry out the player wearing leg equipment (this is the carry out player wearing leg equipment rule):
	let x be the maximum hit points of the player;
	now the maximum hit points of the player is x plus legPoints of the noun;
	let y be the damageReduction of the player;
	now the damageReduction of the player is y plus legDamageReduction of the noun.
Carry out the player taking off leg equipment (this is the carry out player removing leg equipment rule):
	let x be the the maximum hit points of the player;
	now the maximum hit points of the player is x minus legPoints of the noun;
	let y be the damageReduction of the player;
	now the damageReduction of the player is y minus legDamageReduction of the noun;
	if the current hit points of the player is greater than the maximum hit points of the player:
		now the current hit points of the player is the maximum hit points of the player.
		
Torn Trousers is leg equipment. The legPoints of Torn Trousers is 4. The legDamageReduction of the Torn Trousers is 2.
Plated Leggings is leg equipment. The legPoints of Plated Leggings is 8. The legDamageReduction of the Plated Leggings is 4.
Guardian Leggings is leg equipment. The legPoints of Guardian Leggings is 16. The legDamageReduction of the Guardian Leggings is 6.
Desecrated Leggings is leg equipment. The legPoints of Desecrated Leggings is 32. The legDamageReduction of the Desecrated Leggings is 8.
Juggernaut Leggings is leg equipment. The legPoints of Juggernaut Leggings is 64. The legDamageReduction of the Juggernaut Leggings is 10.

Part 5 - Feet Equipment

A foot equipment is a kind of thing. A foot equipment is always wearable. A foot equipment has a number called footPoints. A foot equipment has a number called footDamageReduction.
Check the player wearing something (this is the standard already wearing foot equipment rule):
	if the noun is foot equipment:
		if the player is wearing foot equipment:
			say "You are already wearing something on your feet.";
			stop the action.
Report the player wearing foot equipment (this is the report player wearing foot equipment rule):
	instead say "You equip [noun] on your feet.".
Report the player taking off foot equipment (this is the report player taking off foot equipment rule):
	instead say "You unequip [noun] from your feet.".
Carry out the player wearing foot equipment (this is the carry out player wearing foot equipment rule):
	let x be the maximum hit points of the player;
	now the maximum hit points of the player is x plus footPoints of the noun;
	let y be the damageReduction of the player;
	now the damageReduction of the player is y plus footDamageReduction of the noun.
Carry out the player taking off foot equipment (this is the carry out player removing foot equipment rule):
	let x be the the maximum hit points of the player;
	now the maximum hit points of the player is x minus footPoints of the noun;
	let y be the damageReduction of the player;
	now the damageReduction of the player is y minus footDamageReduction of the noun;
	if the current hit points of the player is greater than the maximum hit points of the player:
		now the current hit points of the player is the maximum hit points of the player.
	
Battered Shoes is foot equipment. The footPoints of Battered Shoes is 1. The footDamageReduction of the Battered Shoes is 1.
Steel Boots is foot equipment. The footPoints of Steel Boots is 2. The footDamageReduction of the Steel Boots is 1.
Blessed Strides is foot equipment. The footPoints of Blessed Strides is 4. The footDamageReduction of the Blessed Strides is 1.
Torment Boots is foot equipment. The footPoints of Torment Boots is 8. The footDamageReduction of the Torment Boots is 2.
Destroyer Strides is foot equipment. The footPoints of Destroyer Strides is 16. The footDamageReduction of the Destroyer Strides is 2.

Part 6 - Shields 

A shield is a kind of thing. A shield is always wearable. A shield has a number called shieldPoints. A shield has a number called shieldDamageReduction. A shield has a number called damageBlocked. A shield has a number called incMaxBlock.
Check the player wearing something (this is the standard already equipping shield rule):
	if the noun is shield:
		if the player is wearing shield:
			say "You already have a shield equipped.";
			stop the action;
		otherwise if the player is wearing Wyvir's Judgement or the player is wearing Underworld Claws or the player is wearing Syth's Covenant:
			say "You already have a two-handed weapon equipped.";
			stop the action.
Report the player wearing shield (this is the report player wearing shield rule):
	instead say "You equip [noun] on your off-hand.".
Report the player taking off shield (this is the report player taking off shield rule):
	instead say "You unequip [noun] from your off-hand.".
Carry out the player wearing shield (this is the carry out player wearing shield rule):
	let x be the maximum hit points of the player;
	now the maximum hit points of the player is x plus shieldPoints of the noun;
	let y be the damageReduction of the player;
	now the damageReduction of the player is y plus shieldDamageReduction of the noun;
	let z be the damagePrevented of the player;
	now the damagePrevented of the player is z plus damageBlocked of the noun;
	let w be the maxBlock of the player;
	now the maxBlock of the player is w plus incMaxBlock of the noun.
Carry out the player taking off shield (this is the carry out player removing shield rule):
	let x be the the maximum hit points of the player;
	now the maximum hit points of the player is x minus shieldPoints of the noun;
	let y be the damageReduction of the player;
	now the damageReduction of the player is y minus shieldDamageReduction of the noun;
	let z be the damagePrevented of the player;
	now the damagePrevented of the player is z minus damageBlocked of the noun;
	now the maxBlock of the player is 0;
	if the current hit points of the player is greater than the maximum hit points of the player:
		now the current hit points of the player is the maximum hit points of the player.
		
Wooden Buckler is shield. The shieldPoints of the Wooden Buckler is 2. The shieldDamageReduction of the Wooden Buckler is 1. The damageBlocked of the Wooden Buckler is 3. The incMaxBlock of the Wooden Buckler is 5.
Armoured Kite Shield is shield. The shieldPoints of the Armoured Kite Shield is 4. The shieldDamageReduction of the Armoured Kite Shield is 2. The damageBlocked of the Armoured Kite Shield is 6. The incMaxBlock of the Armoured Kite Shield is 6.
Protector Parma is shield. The shieldPoints of the Protector Parma is 8. The shieldDamageReduction of the Protector Parma is 3. The damageBlocked of the Protector Parma is 9. The incMaxBlock of the Protector Parma is 7.
Hexed Pavise is shield. The shieldPoints of the Hexed Pavise is 16. The shieldDamageReduction of the Hexed Pavise is 4. The damageBlocked of the Hexed Pavise is 12. The incMaxBlock of the Hexed Pavise is 8.
Warmonger Greatshield is shield. The shieldPoints of the Warmonger Greatshield is 32. The shieldDamageReduction of the Warmonger Greatshield is 5. The damageBlocked of the Warmonger Greatshield is 15. The incMaxBlock of the Warmonger Greatshield is 9.

Armour Mechanics ends here.
