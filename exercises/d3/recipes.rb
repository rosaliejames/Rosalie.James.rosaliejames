recipes = { 
	:grilled_cheese => { 
		:decription => "melted cheese on toasty bread", 
		:ingredients => ["bread", "cheese", "butter"], 
		:steps => ["Step 1: butter bread", "Step 2: put cheese between slices", "Step 3: place on griddle"], 
	},
	:blt => {
		:description => "bacon, lettuce, and tomato sandwich on toasty bread",
		:ingredients => ["bread", "bacon", "lettuce", "tomato", "mayo"],
		:steps =>["Step 1: toast bread", "Step 2: spread mayo on bread", "Step 3: put turkey, bacon, and lettuce between bread"],
	},
	:chicken_nachos => {
		:description => "melted cheese over chips with a variety of toppings",
		:ingredients => ["chips", "cheese", "chicken", "sour cream", "salsa", "guac"],
		:steps => ["Step 1: fill plate with chips", "Step 2: cover with cheese", "Step 3: add chicken", "Step 4: melt", "Step 5: add sour cream, salsa, and guac as desired"],
	}
}
recipes.each do |key, value| 
	puts key 
	value.each do |key, value|
		puts key 
		puts value
	end 
end 