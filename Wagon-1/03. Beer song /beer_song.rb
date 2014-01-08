def beersong(nb_at_start)
  # your code goes here
  
  return if nb_at_start == 0 
  case nb_at_start
    when 1
      puts "1 bottle of beer on the wall, 1 bottle of beer!"
   	  puts "Take one down, pass it around, no more bottles of beer on the wall!"
    when 2
      puts "2 bottles of beer on the wall, 2 bottles of beer!"
  	  puts "Take one down, pass it around, 1 bottle of beer on the wall!"
  	else
   	  puts "#{nb_at_start} bottles of beer on the wall, #{nb_at_start} bottles of beer!"
   	  puts "Take one down, pass it around, #{nb_at_start - 1} bottles of beer on the wall!"
  end
  beersong(nb_at_start - 1)
end

beersong( ARGV[0].to_i )
