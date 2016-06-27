## 8.5 ASSIGNMENT

require 'sqlite3'

db = SQLite3::Database.new("soccer.db")

puts "Welcome to SOCCER app, here you can join soccer matches 
10 vs 10 in Brooklyn, Manhattan or Queens! Join before the slots are full!!"
puts "Please enter your name!"
name = gets.chomp
puts "Please enter your field! Brooklyn (1) Manhattan (2) Queens (3) "
field = gets.chomp.to_i

def create_player(db, name, field)
	db.execute("INSERT INTO players (name, fields_id) VALUES (?, ?)", [name, field])
end

create_player(db, name, field)

players = db.execute ("SELECT * FROM players")
p players

slots_available = db.execute("SELECT * FROM slots_available")
p slots_available


def update_slots(db, field)
db.execute("UPDATE slots_available SET quantity = (SELECT quantity FROM slots_available 
WHERE id='#{field}') -1 WHERE id='#{field}'")
end 


update_slots(db, field)

slots_available = db.execute("SELECT * FROM slots_available")
p slots_available

