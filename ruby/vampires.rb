puts "How many employees will be attended"
int employees = gets.chomp
puts "What is your name"
string name = gets.chomp
puts "What year were you born"
int year = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
boolean garlic = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
boolean insurance = gets.chomp

until (employees = 0)
	{
		until (answer == "done"){
			puts "name an allergy"
			answer = gets.chomp
			if (answer == "sunshine")
				{
					puts "probably a vampire"
				}
		}
if (age<110 && garlic==true && insurance==true){
	puts "Probably not a vampire"
} elsif (age>100 && garlic==false && insurance==true)
{
puts "Probably a vampire"
	}
elsif (age>100 && garlic==false && insurance==false)
{
puts "Almost certainly a vampire"
	}
elsif (name=="Drake Cula" || name == "Tu Fang")
	{
		puts "Clearly a vampire!"
		}
	elsif {
		puts "Results inconclusive"
	}
	employees = employees - 1
end
		}	

		puts "Actually, never mind! 
		What do these questions have to do with anything? 
			Let's all be friends"
