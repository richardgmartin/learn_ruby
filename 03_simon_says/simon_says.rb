def echo(str)
	"#{str}"
end

def shout(str)
	"#{str}".upcase
end

def repeat(str, n=2)
	# text = str
	# n.times {
	# 	puts "1st" + text
	# 	text << " " + str
	# 	puts "2nd" + text
	# }
	# text
	multi_str = Array.new(n, str)
	multi_str.join(' ')
end	

def start_of_word(str,n)
	str[0, n]
end	

def first_word(str)
	result = str.split(' ')
	result[0]
end	

def titleize(str)
	non_cap = ['the', 'over', 'and']
	# non_cap = %w(the over and)
	word_array = str.split(' ')
	count = 0
	new_word_array = []
	word_array.each do |word|
		if non_cap.each.include?(word)
			if count == 0
				new_word_array << word.capitalize
				# puts "I am the first word in the array" + word
			else
				new_word_array << word
				# puts "I am in the array but not first word: " + word	
			end	
		else 	
			# puts "I am not in the array: " + word
			new_word_array << word.capitalize
		end	
		count +=1
	end
	new_word_array.join(' ')
end	


# titleize("jaws")
# titleize("david copperfield")
titleize("war and peace")
titleize("the bridge over the river kwai")