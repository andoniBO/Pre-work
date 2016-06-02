number = 1
while number < 101 do
	if(number%3==0)
		if(number%5==0)
			puts "FizzBuzz"
		else
			puts "Fizz"
		end
	elsif (number%5==0)
		puts "Buzz"
	else	
		puts "#{number}"
	end
	number+=1
end