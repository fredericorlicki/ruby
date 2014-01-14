def words_string(file_adress)
	word_frequency = {}
	word_frequency<<file_adress.to_s
	#iterer les strings pour compatbiliser le nombre de stings egaux
	#itère sur array avec Array# each do |word| 
	 word_frequency[word] = 1
	end
end 

words_string("/Users/Macmob/Documents/le wagon/ruby/Wagon-2/06. Word frequency")


