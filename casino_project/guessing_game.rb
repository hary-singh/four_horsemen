class Guessing_game
      
  
  def game_play(name,bet)
  
    puts "------------------------"
    puts "| Casino Guessing Game |"
    puts "------------------------"
    puts " Hello, #{name}"
    puts "\nWe are going to play a guessing game."
    puts "I will choose a random number between 1 and 10"
    puts "and you will have three chances to guess it.\n"

    number = rand(10) + 1
    puts "Okay, I have a number."

    max_guesses = 3

    1.upto(max_guesses) do |guess_num|
      print "Guess #{guess_num}: "
      guess = gets.chomp

      if guess.to_i == number 
        puts "Great guessing, #{name}!"
        puts "My number was #{number}."
        $total_money += bet
        break
      else
        puts "Sorry, that wasnt it."
        if guess_num == max_guesses
          puts
          puts "That was your last guess."
          puts "My number was #{number}.You lost your bet! Taking you back to Main Menu"
          $total_money -= bet
        end
      end
    end
  end
end
