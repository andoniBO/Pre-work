def solve_cipher(input)
	shift2=-3
	array = input.chars
	array.each_with_index do |letter, index|
		array[index] = (letter.ord.to_i + shift2)
		if(array[index] != (32 + shift2))
			if(array[index] == (65 + shift2))
				array[index] = (90 + (shift2 + 1))
			end
			if(array[index] == (97 + shift2))
				array[index] = (122 + (shift2 + 1))
			end
			array[index] = array[index].chr('UTF-8')
		else
			array[index] = " "
		end
	end
end

puts "What word do you want to cipher?"
STDOUT.flush
word = gets.chomp
answer = solve_cipher(word)
puts "#{answer}"