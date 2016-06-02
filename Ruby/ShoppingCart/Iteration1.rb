require 'date'

class ShoppingCart
	def initialize
		@items=[]
	end

	def addtocart(item)
		@items.push(item)
	end
end

class Item
	def initialize(name, price)
		@name = name
		@price = price
	end

	def price
		return @price
	end
end

class Houseware < Item
	def initialize(name,price)
		if(price>100)
			@newprice = (price-((price/100)*5))
		else
			@newprice = price
		end
		super(name, @newprice)
	end

	def price
		return @newprice
	end
end

class Fruit < Item
	time = Date.today
	@weekday = time.wday
	def initialize(name,price)
		if((@weekday==6)||(@weekday==7))
			@newprice = ((price/100)*10)
		else
			@newprice = price
		end
		super(name,@newprice)
	end

	def price
		return @newprice
	end
end

def menu
	puts ""
	puts "Select the item you want to add to the cart"
	puts ""
	puts "	1.Bananas          #{@bananas.price}€"
	puts "	2.Orange juice     #{@orangejuice.price}€"
	puts "	3.Rice              #{@rice.price}€"
	puts "	4.Vacuum Cleaner  #{@vacuumcleaner.price}€"
	puts "	5.Anchovies         #{@anchovies.price}€"
	puts "	6.Exit"
	puts ""
	puts " 					Press any option(number)"
	@newprod = gets.chomp.to_i
end

loop do
	@bananas = Fruit.new "Bananas",10
	@orangejuice = Fruit.new "Orange Juice",10
	@rice = Item.new "Rice",1
	@vacuumcleaner = Houseware.new "Vacuum Cleaner",150
	@anchovies = Item.new "Anchovies",2
	menu
	break if (@newprod==6)
end

