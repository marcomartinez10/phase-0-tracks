class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	cont=0
  	while (cont<num)

  	 puts "Woof!"
  	 cont=cont+1
  	end
  end

  def roll_over
  	puts "rolls over"
  end

  def dog_years(num)
  	puts num*7
  	num*7


  end
  def initialize
 puts "initializing puppy instance"
  end

end
puppies=[]
cont=0
do 
puppy_cont=Puppy.new
puppies[cont]=puppy_cont
cont=cont+1
while (cont<50)

marty = Puppy.new



marty.fetch("ball")
marty.speak(3)
marty.roll_over
