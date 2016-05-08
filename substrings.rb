def substrings(substrings, dictionary)
	
	word_array = (substrings.downcase).split(" ")
	results = {}
	word_count = 0

	dictionary.each do |word_in_dictionary|
		word_array.each do |search_word|
			if (search_word.include?(word_in_dictionary))
				word_count += 1
			end
		end

		if (word_count > 0)
			results[word_in_dictionary] = word_count
		end
		word_count = 0
	end
	return results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
   
puts substrings("below,", dictionary) 
puts substrings("Howdy partner, sit down! How's it going?", dictionary)