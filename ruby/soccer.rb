## 8.5 ASSIGNMENT
require 'sqlite3'
db = SQLite3::Database.new("soccer.db")

puts "Welcome to SOCCER app, here you can join soccer matches 
5 vs 5 in Brooklyn, Manhattan or Queens! Join before the slots are full!!"

puts "Please enter your name!"
name = gets.chomp

puts "------SLOTS AVAILABLE---------- "

slots_available = db.execute("SELECT quantity FROM slots_available WHERE id=1")
 puts "BROOKLYN: #{slots_available[0][0]}" 


slots_available = db.execute("SELECT quantity FROM slots_available WHERE id=2")
puts "MANHATTAN: #{slots_available[0][0]}" 

slots_available = db.execute("SELECT quantity FROM slots_available WHERE id=3")
puts "QUEENS: #{slots_available[0][0]}" 


puts "Please enter your field! Brooklyn (1) Manhattan (2) Queens (3) "
field = gets.chomp.to_i

def create_player(db, name, field)
	db.execute("INSERT INTO players (name, fields_id) VALUES (?, ?)", [name, field])
end

create_player(db, name, field)

puts "THESE ARE THE PLAYERS FOR THE MATCH:"
match = db.execute("SELECT players.name
	 FROM players JOIN fields ON fields.id='#{field}'")
puts match
puts "GOOD LUCK! HAVE FUN! KEEP USING SOCCER APP!"
puts "DESIGNED BY MARCO MARTINEZ TRAINED AT DEVBOOTCAMP"


def update_slots(db, field)
	db.execute("UPDATE slots_available SET quantity = (SELECT quantity FROM slots_available 
				WHERE id='#{field}') -1 WHERE id='#{field}'")
end 

# def reset_slots (db, field)

# db.execute("UPDATE slots_available SET quantity = 10 WHERE id=#'{field}'")
# end

# def delete_players(db, field)

# 	db.execute("DELETE FROM players WHERE players.fields_id=#'{field}'")

# end

update_slots(db, field)

# slots_available = db.execute("SELECT quantity FROM slots_available WHERE id=#'{field}'") 

# if (slots_available[0][0]==0)
	
# 	reset_slots(db, field)
# 	# delete_players(db, field)
	
# end



