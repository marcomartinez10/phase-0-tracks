# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # method with parameters, with the keys and values
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: Use the store method to add an item and its value
# output: the hash with the new item

# Method to remove an item from the list
# input: item to remove
# steps: use the delete method
# output: the hash without the item selected

# Method to update the quantity of an item
# input: the new value to be updated
# steps: assign the new value to the hash
# output: the hash with the new value of the selected item

# Method to print a list and make it look pretty
# input: the actual hash
# steps: .each method to iterate through the hash and print using a block
# output: A string
def print_list_pretty (grocery_list)
	grocery_list.each do |item, value|
		puts "#{item} : #{value}"
	end
end


def update_item (grocery_list, item, value)
	grocery_list[item] = value
	p grocery_list

	end

def delete_item (grocery_list, item)
grocery_list.delete(item)
p grocery_list

end


def add_item (grocery_list, item, value=1)

		grocery_list.store(item, value)
		p grocery_list

	end

def new_list (list)
	array_list = list.split(' ')

	grocery_list = {
		
	}

    grocery_list.default(1)

	array_list.each do |i|
		grocery_list.store(i, 1
			)
	end
p grocery_list


	add_item(grocery_list, "ice cream", 4)
	delete_item(grocery_list, "lemonade")
	update_item(grocery_list, "tomatoes", 3)
	update_item(grocery_list, "ice cream", 1)
	print_list_pretty(grocery_list)

	end

	new_list("lemonade tomatoes onions")



	
  
  
	


