class String

  def word_count

	string1 = self.split
	scope = string1.length
	@@split_words = []
	
	word_searcher = @@word
	i = 0

	while i < scope
		@@split_words.push string1[i]
		i += 1
	end

    hash = @@split_words.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }

	# dup = split_words.select{|element| string1.count(element) > 1 }
 #    numb.push dup.uniq.count
 #    return dup.uniq
 # return @@word
end

def search_string
	
 if @@split_words.include? (self)
	        return "success"
		else
			return "no result"
	end
	end
end