# makes our hash so that we can store values
@grocery_list = {}

def print_list
	puts "Buy the following:"
	@grocery_list.each {|key, value| puts "#{value} #{key}"}
end

def remove_items(item)
	@grocery_list.delete(item)
end

def get_items(item)
	puts "item not on list" unless @grocery_list[item] == true
end
	
def add_update_items_to_list(item, quantity)
	@grocery_list[item] = quantity
end

def make_list(item_list)
	# takes the long list of items and splits them by the space, adds them to the hash
	# with a default value of 1
	item_list.split.each {|element| @grocery_list[element] = 1}
end

make_list("Lemonade Tomatoes Onions Ice_Cream")
add_update_items_to_list("Lemonade", 2)
add_update_items_to_list("Tomatoes", 3)
add_update_items_to_list("Ice_Cream", 4)

print_list
remove_items("Lemonade")
print_list
add_update_items_to_list("Ice_Cream", 1)
print_list