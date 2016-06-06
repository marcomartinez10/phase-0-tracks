name = {

}



answer = ''
while answer != quit

def swap

puts "Please introduce your complete name"

complete_name = gets.chomp

name[:original] = complete_name

complete_name = complete_name.split(' ')

aux=complete_name[0]
complete_name=complete_name[1]
complete_name[1]=aux



end
swap

p complete_name

vowels = ["a", "e", "i", "o", "u"]

  while i < complete_name.length do
    while j < vowels.length do
      if complete_name[i] == vowels[j]
        complete_name[i] = vowels[j+1]
    else
    	complete_name[i] = complete_name[i].next
        break
      end

      j += 1
    end

    i += 1
  end
p complete_name
name [:fake] = complete_name
  puts "you want another name? "
  answer = gets.chomp

puts name


