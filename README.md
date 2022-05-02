# Final Fantasy Tactics for Ruby

## Lesson Plan

1. Create database tables and mocking up a schema w/o ActiveRecord.
   This shows you how we'd do with with raw SQL. 

2. Stage 2 is using classes that inherit from ActiveRecord (ORM).

## Database

Party
 - Units (players)

Unit (belongs to a party)
 - HP, MP, Job, Move, atk, defense, equipment

1. Create a table of weapons
   a weapon will have its own ID
   find a unit's weapon by the weapon's id
   Example: weapon = Weapon.find(unit.weapon_id)
