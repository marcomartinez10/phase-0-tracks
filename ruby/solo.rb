# This class will create baseball players, which will have
# a name, age, position and will belong to a team (all of these
# will be determined by the user). These players will have a 
# chance at bat, in which they can bat a hit, a homerun, or a strike, if
# they bat a hit they will run towards a base and then they will slide,
# after the slide they can be out or safe.
answer = ''
array = []
cont = 1

class Players

	attr_reader :name
	attr_accessor :team

	def initialize (team, age, position, name)
		@team = team
		@age = age
		@position = position
		@name = name
	end

	def runs
		puts "the player runs fast towards the next base!!"
	end

	def bats (outcome)
		if (outcome == "hit")
			puts "the player bats a hit!!"
		elsif (outcome == "homerun")
			puts "and its ouuut of heree!!"
		elsif (outcome == "strike")
			puts "the player misses the ball!"
		end
	end

	def slides (result)
		puts "oh the player is #{result}!!"
	end
end



while (answer != "quit")

puts "Welcome! please create you player!"
array << "----PLAYER #{cont}----"
cont += 1
puts "Please add the name of your player!"
name = gets.chomp
array << "NAME: #{name}"
puts "Please add the age of your player!"
age = gets.chomp.to_i
array << "AGE: #{age}"
puts "Please add the position of your player!"
position = gets.chomp
array << "POSITION: #{position}"
puts "Please add the team of your player!"
team = gets.chomp
array << "TEAM: #{team}"

player = Players.new(team, age, position, name)

puts "#{name} is at bat!"
puts "will the player hit a homerun, a hit or will he strike?"
outcome = gets.chomp
player.bats(outcome) 
if (outcome=="hit") 
	player.runs
	puts "will the player be out or safe?"
	result = gets.chomp
	player.slides(result)
end


puts "do you want to add another player? type continue or quit"
answer = gets.chomp
end

array.each {|i| puts "#{i}"} 







