teams = Array.new
p teams

teams.push("Madrid", "City", "PSG", "Atletico", "Manchester")
p teams

teams.delete_at(2)
p teams

teams.insert(2, "Barcelona")
p teams

teams.shift
p teams

inside = teams.include?("Barcelona")
p "Is the Barcelona in the league: #{inside}"

league2 = ["France", "Spain", "Italy", "Venezuela"]

champions = teams + league2
p champions

#RELEASE 2

def method(array, parameter)
	new_array = array << parameter
end



def method_two(number, string, nothing)
	new_array = number, string, nothing
end

