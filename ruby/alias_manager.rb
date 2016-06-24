# Pseudocode

# Read the spy real name
# Split the name into first and last name
# Switch these
# Join them again
# Make an array of vowels
# Compare to see when the letter of the name is equal to a vowel (using iteration)
# If they are the same then change the letter to the next vowel
# Store this letter in a new array
# If the letter never equals the vowel then put the letter next to it
# Store this letter in a new array
# If the letter next to it is a vowel then use the second next to it instead
# Store the original and secret name in a hash
# Ask the user if he wants to quit

 ##-------------------------------##

# #Code

answer = ''
my_hash = {} 

while (answer!="quit")
  puts "Please spy, introduce your real name"
  name = gets.chomp

  array_name = name.split(' ')
  array_name[0] , array_name [1] = array_name [1], array_name [0] 
  new_name = array_name.join(' ')
  array_new_name = new_name.chars

  array_vowels = ['a', 'e', 'i', 'o', 'u']
  array_secret_name = []
  letter_new = ''

  array_new_name.map! do |letter|
    
    array_vowels.each_with_index do |vowel, index|
      if (letter == vowel)
       letter_new = array_vowels[index+1]
       array_secret_name << letter_new
      end
    end

    if (letter!=" ")   
      if array_vowels.include?(letter) == false 
        if array_vowels.include?(letter.next) 
        letter=letter.next.next
        else
        letter=letter.next
        end
        array_secret_name << letter
      end
    else 
      array_secret_name << letter
    end
  end


secret_name = array_secret_name.join(' ')

my_hash[name] = secret_name

puts "Your SECRET NAME is: #{secret_name}"

puts "do you want to quit? type 'quit' if you do"
answer = gets.chomp

end

p my_hash


