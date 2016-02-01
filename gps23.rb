# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
	library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

	raise ArgumentError.new("#{item_to_make} is not a valid input") if !library.has_key?(item_to_make)

	serving_size = library.values_at(item_to_make)[0]
	remaining_ingredients = num_of_ingredients % serving_size

	remaining_ingredients == 0 ? "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}" : "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection