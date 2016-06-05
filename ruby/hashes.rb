
client = {
	
}


puts "Name:"
client[:name] = gets.chomp

puts "Age:"
client[:age] = gets.to_i

puts "Number of children:"
client[:children] = gets.to_i

puts "Decor Theme:"
client[:decor_theme] = gets.chomp

puts client

puts "Would you like to update any of the key categories? yes or no?
answer = gets.chomp.to_sym
  
    
		if answer.to_s != no
      puts "#{answer}:"
      
      client[answer] = gets.chomp
		end	
puts client