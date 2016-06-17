class Soccer_shoes 

	attr_accessor :size, :color, :brand
	 @instances_of_Incomes = Array.new

def initialize (size, color, brand)
@size=size
@color=color
@brand=brand
@instances_of_Incomes = Array.new
end

def self.addIncome
    size = prompt "What is the size?"
    color = prompt "What is the color?"
    brand = prompt "What is the brand?"
    @@instances_of_Incomes << Incomes.new(size, color, brand)
  end

def shoot
puts "booom!"
end
		 module Shoots
			def scores (number)
			puts "you scored the #{number} goal!"
			end

			def misses (number)
  			puts "you just missed the #{number} goal!"
			end

        end
Soccer_shoes.instances.each do |shoes|
  puts shoe.size
end
include Shoots


end