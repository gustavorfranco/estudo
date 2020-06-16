def welcome_to_the_game
	puts "welcome to the guessing game"
    puts " what is your name ?"
    name1 = gets
    puts "\n\n\n\n"
    puts "let's begin the game, " + name1
end

def choosing_secret_number 
    puts "choossing a secret number from 0 to 200..."
    secret_number = 175
    puts "chosen number... how about guessing the number today ? "
end

welcome_to_the_game
choosing_secret_number


try_limited = 5

for attempt in 1..try_limited
	puts "\n\n\n\n"
	puts " attempt " + attempt.to_s + " de " + try_limited.to_s
    puts "chosse a number"
    kick = gets 
    puts " did you get it right ? you kicked  " + kick

    hit = secret_number == kick.to_i

 if hit 
	puts " you're right"
	break 
  else
	    bigger_number = secret_number > kick.to_i 
	    if bigger_number 	 
		   puts " the number secret is higher"
	    else
		   puts " the number secret is less"
		end
		
	end

end