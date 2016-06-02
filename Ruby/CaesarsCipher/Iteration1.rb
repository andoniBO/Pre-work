def solve_cipher(input)
	array = input.chars
	array.each_with_index do |letter, index|
		array[index] = letter.ord - 1
		if(array[index] == 64)
			array[index]=90
		end
		if(array[index] == 96)
			array[index] = 122
		end
		array[index] = array[index].chr('UTF-8')
	end
end

puts "What word do you want to cipher?"
STDOUT.flush
word = gets.chomp
answer = solve_cipher(word)
puts "#{answer}"