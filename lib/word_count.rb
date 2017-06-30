class Fixnum
	define_method(:allergy) do
		key_arrays = []
		key_value = []
		random = []
		
		hash = {1 => "egg", 2 => "peanuts", 4 => "shellfish", 8 => "strawberries",
			16 => "tomatoes", 32 => "chocolate", 64 => "pollen", 128 => "cats"}

			allergy_type = self

		if hash.include?(allergy_type)
	    	allergy_food = hash.fetch(self)
	        return allergy_food
	    else
	    	hash.each do |key, value|
	       	# new_hash = hash.fetch(key)
	       	key_arrays.push (key)
	        end
	    	key_value.push (allergy_type)
	    end
	    # splitted_arrays = key_arrays.each_slice(1).to_a
	    # return key_arrays
	    # return key_value

	    unless hash.include?(allergy_type)
	    	total = 0	    	
	    	if total != key_value
	    	numb = key_arrays[rand(key_arrays.length)]	    	  
	    	  total = numb + total
	        end
	    end
	    
	    return total
	end
end