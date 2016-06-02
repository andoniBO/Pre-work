#Part 3
def customsort (words)
	ultimatewords = Array.new
	upcasewords = words.map(&:upcase)
	upcasewords = upcasewords.sort
	upcasewords.each_with_index do |item, index|
		words.each do |word|
			if item.casecmp(word)==0
				ultimatewords[index] = word
			end
		end
	end
	return ultimatewords
end

puts "Input sentence:"
STDOUT.flush
sentence = gets.chomp
#Part 2
words = sentence.split (" ")
words.each_with_index do |item, index|
	words[index]=words[index].gsub(/[[:punct:]]/,' ')
end
#Part 1
#words = words.map(&:upcase)
#words = words.sort
words = customsort(words)
puts "#{words}"