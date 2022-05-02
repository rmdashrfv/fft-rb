require "sqlite3"

db = SQLite3::Database.new "game.db"

db.execute <<-SQL
  create table if not exists party (
    id integer primary key,
    name text 
  );
SQL

db.execute <<-SQL
  create table if not exists units (
    id integer primary key,
    name text,
    hp integer,
    mp integer,
    job text,
    move integer,
    attack integer, 
    defense integer, 
    weapon_id integer,
    armor_id integer, 
    helmet_id integer, 
    accessory_id integer
    party_id integer
  );
SQL



