def solve_cipher(input, shift)
	shift2=shift.to_i
	array = input.chars
	array.each_with_index do |letter, index|
		array[index] = (letter.ord.to_i + shift2)
		if(array[index] != (32 + shift2))
			if(shift2 < 0)
				if(array[index] == (65 + shift2))
					array[index] = (90 + (shift2 + 1))
				end
				if(array[index] == (97 + shift2))
					array[index] = (122 + (shift2 + 1))
				end
			else
				if(array[index] == (90 + shift2))
					array[index] = (65 + (shift2 - 1))
				end
				if(array[index] == (122 + shift2))
					array[index] = (97 + (shift2 - 1))
				end
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
puts "How much do you want to shift?"
STDOUT.flush
shift = gets.chomp
answer = solve_cipher(word, shift)
puts "#{answer}"