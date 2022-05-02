# Final Fantasy Tactics for Ruby

## Database

Party
 - Units (players)

Unit (belongs to a party)
 - HP, MP, Job, Move, atk, defense, equipment

1. Create a table of weapons
   a weapon will have its own ID
   find a unit's weapon by the weapon's id
   Example: weapon = Weapon.find(unit.weapon_id)
