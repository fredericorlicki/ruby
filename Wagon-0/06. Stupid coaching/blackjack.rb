
def blackjack

	bank = rand(1..21)
	game_value = 0

	
	puts "welcome to our fancy BLACJACK. you're score is #{game_value}"
	puts "Bank is #{bank}"


	while game_value < 21
		puts "Do you want to pick a card sir? please answer by Y or N"
		player_answer = gets.chomp.downcase
		
		if player_answer == "y"
		   game_value += rand(1..11)
		   puts "your score is #{game_value}"
		elsif game_value == 21
			puts "Black Jack !!"
		elsif game_value > 21
			puts "you loose"
		else
			if bank < game_value
				puts "your score is #{game_value}. Bank is #{bank}. You win !"
				break
			else
				puts "your score is #{game_value}. Bank is #{bank}. You loose !"
				break
			end
		end

	end
	

end


blackjack