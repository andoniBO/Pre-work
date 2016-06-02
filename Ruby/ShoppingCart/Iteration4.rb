require 'date'

class ShoppingCart
	def initialize
		@items=[]
		@amountofitems = 0
	end

	def checkout
		total = 0
		@amountofitems = @items.size
		puts "Content in your cart:"
		puts ""
		@items.each do |item|
			item.receipt
			total += item.price
		end
		puts ""
		if(@amountofitems>5)
			@discount = (total/10)
			newtotal = (total-@discount)
		else
			newtotal = total
		end
		puts ""
		puts "			Total: #{newtotal}€"
		puts ""
		if(@amountofitems>5)
			puts "You have saved #{@discount}€ thanks to our more than 5 items discount!!"
		else
			puts "Remember we offer 10% discount when buying more than 5 items!!"
		end
		puts "Have a nice day!"
	end

	def add_item(item)
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

	def receipt
		puts "#{@name}: #{@price}€"
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
		return @price
	end

	def receipt
		puts "#{@name}: #{@newprice}€"
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
		return @price
	end

	def receipt
		puts "#{@name}: #{@newprice}€"
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
	puts "	6.Checkout"
	puts "	7.Exit"
	puts ""
	puts " 					Press any option(number)"
	@newprod = gets.chomp.to_i
end

	@bananas = Fruit.new "Bananas",10
	@orangejuice = Fruit.new "Orange Juice",10
	@rice = Item.new "Rice",1
	@vacuumcleaner = Houseware.new "Vacuum Cleaner",150
	@anchovies = Item.new "Anchovies",2
	@shoppingcart = ShoppingCart.new
loop do
	menu
	#break if (@newprod==6)
	case @newprod
	when 1
		@shoppingcart.add_item(@bananas)
	when 2
		@shoppingcart.add_item(@orangejuice)
	when 3
		@shoppingcart.add_item(@rice)
	when 4
		@shoppingcart.add_item(@vacuumcleaner)
	when 5
		@shoppingcart.add_item(@anchovies)
	when 6
		@shoppingcart.checkout
		break
	when 7
		break
	end
end

