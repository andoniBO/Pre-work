number = 1
while number < 101 do
	firstnumber = number.to_s.chars.first(1)
	if(number%3==0)
		if(number%5==0)
			if(firstnumber==1.to_s.chars)
				print "Bang"
			end	
			puts "FizzBuzz"
		else
			if(firstnumber==1.to_s.chars)
				print "Bang"
			end	
			puts "Fizz"
		end
	elsif (number%5==0)
		if(firstnumber==1.to_s.chars)
			print "Bang"
		end	
		puts "Buzz"
	else
		if(firstnumber==1.to_s.chars)
			puts "Bang"
		else
			puts "#{number}"
		end
	end
	number+=1
end