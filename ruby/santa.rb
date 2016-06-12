class Santa
def speak
puts "Ho, ho , ho! Haaaaappy holidays!"
end
def eat_milk_and_cookies (cookies)
puts "that was a good #{cookies}"
	end
def initialize (gender, ethnicity)
	puts "initializing Santa instance"
	@gender = gender
	@ethnicity= ethnicity
	@reindeer_ranking = ["Rudolph", "Dasher"
		, "Dancer", "Prancer"
		, "Vixen", "Comet", 
		"Cupid", "Donner", 
		"Blitzen"]
		@age=0
end
def get_mad_at (reindeer_ranking,name)
reindeer_ranking[8]=name
end
def age (age)
	age
end

def ethnicity 
@ethnicity
end
cont=0
do 
santa_cont = Santa.new

cont=cont+1
while (cont<50)
end