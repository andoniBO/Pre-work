number = 1
while number < 101 do
	result = ""
	firstnumber = number.to_s.chars.first(1)
	if(number%3==0)
		result = result + "Fizz"
	end
	if(number%5==0)
		result = result + "Buzz"
	end
	if(firstnumber==1.to_s.chars)
		result = result + "Bang"
	end
	if(result=="")
		result = number
	end
	puts "#{result}"
	number+=1
end