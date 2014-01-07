def stupid_coaching 
    puts "wake up, it's time to go to work, Son"
    answer = gets.chomp
    until answer == "I am going to work right now SIR !"
        puts "I can feel your motivation son !" if answer == answer.upcase
  	     if answer == "i'm going to work"
new_state(answer)
         else
old_state(answer)
        end
answer=gets.chomp
    end
end
 
  		
def old_state(answer) 
    if answer.end_with?("?")
      puts "Silly question, get dressed and go to work !"
     else
      puts "I don't care son, get dressed and go to work !"
    end
end
 


 def new_state(answer)
  puts "good boy ! Take the subway, it will be faster"
  answer = gets.chomp
  until answer == "I am going to work right now SIR !" 
    if answer.end_with?("?")
      puts "Silly question, take the subway and go to work !"
    else
      puts "i don't care, take the subway and go to work !"
    end
    answer = gets.chomp
  end
end

  stupid_coaching
