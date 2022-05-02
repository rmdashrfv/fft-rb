require "sqlite3"

$db = SQLite3::Database.new "game.db"

$db.execute <<-SQL
  create table if not exists party (
    id integer primary key,
    name text 
  );
SQL

$db.execute <<-SQL
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

class Unit
  attr_accessor :name, :hp, :mp, :job, :move, :attack, :defense
  def initialize(name)
    @name = name
    @hp = 100
    @mp = 25
    @job = 'Squire'
    @move = 3
    @attack = 10
    @defense = 5
  end

  def save
    $db.execute("INSERT INTO units(name, hp, mp, job, move)
    VALUES('#{@name}', '#{@hp}', '#{@mp}', '#{@job}', '#{@move}');
    ")
  end
end

# if a unit gets created successfully, we will save it to the database
