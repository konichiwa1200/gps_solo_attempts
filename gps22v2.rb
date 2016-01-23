# makes our hash so that we can store values
@grocery_list = {}

def print_list
	puts "Buy the following:"
	@grocery_list.each {|key, value| puts "#{value} #{key}"}
end

def remove_items(item)
	@grocery_list.delete(item)
end
	
def add_update_items_to_list(item, quantity)
	@grocery_list[item] = quantity
end

def make_list
	puts "How many items do you want to add to your grocery list?"
	quantity_of_items = gets.chomp.to_i

	if quantity_of_items > 0
		(1..quantity_of_items).each do |element|
			puts "What item would you like to add to your list?"
			item = gets.chomp

			puts "Quantity:"
			quantity = gets.chomp.to_i

			@grocery_list[item] = quantity
		end
	end
end

make_list
add_update_items_to_list("Lemonade", 2)
add_update_items_to_list("Tomatoes", 3)
add_update_items_to_list("Ice Cream", 4)

print_list
remove_items("Lemonade")
print_list
add_update_items_to_list("Ice Cream", 1)
print_list