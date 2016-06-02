class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end

class MilkShake
	def initialize
		@base_price = 3
		@ingredients = [ ]    
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def price_of_milkshake
		#Let's establish what our counter should be before we start adding ingredients into the mix
		total_price_of_milkshake = @base_price
		#Add each ingredients price to our total
		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.price
		end
		#return  our total price to whoever called for it
		total_price_of_milkshake
	end
end

class ShackShop
	def initialize
		@totalprice=0
		@order = []
	end

	def add_milkshake(list, shake)
		list<<shake
	end

	def checkout_shakes(list)
		list.each do |shake|
			totalprice += shake.price_of_milkshake
		end
		puts "Until now, milkshakes have generated #{totalprice} euros"
		this.initialize
	end
end