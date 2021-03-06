## Run this file!!
$VERBOSE = nil
$total_money = 0

require_relative 'High_Low'
require_relative 'Deck'
require_relative 'Dice'
require_relative 'Slots'
require_relative 'Guessing_game'

def menu
    puts "         ############ MAIN MENU ############         "
    puts " Which game would you like to play ? "
    puts "1. Slots"
    puts "2. High / Low"
    puts "3. Guessing Game"
    puts "4. Check your balance"
    puts "5. Exit the Casino"
    puts "    ** Select one of the above options **    "
    menu_choice
end

def menu_choice
    choice = gets.chomp.to_i
    if choice === 1
        slots       # Slots fn
        menu
    elsif choice === 2
        high_low_main       #High Low fn
        menu
    elsif choice ===3
        guessing
        show_balance
        menu
    elsif choice ===4
        show_balance
        menu
    elsif choice === 5
        puts "    ****************************** See you again #{@name}!! ******************************    "
        exit
    else
      puts "  !!!!! INVALID CHOICE, PLEASE TRY AGAIN  !!!!!"
      menu
    end

end

def guessing 
    print " Please enter your bet amount: "
    bet = gets.chomp.to_i
    guess = Guessing_game.new
    guess.game_play(@name,bet)
end

def slots
    slots = Slots.new
    slots.run_slots
    menu
end

def high_low_main
    puts "         ############ Welcome to High / Low #{@name}!! ############         "
    print " Please enter your bet amount: "
    bet = gets.chomp.to_i
    if bet > $total_money
        show_balance
        puts " You do not have sufficient funds. Going back to the main menu."
        menu
    else
        play = High_Low.new
        play.high_low_play(bet)
        show_balance
        menu
    end
end

def show_balance
    puts " Your account balance is: $#{$total_money}"
end

puts "         ############ Welcome to the Casino !!############         "
print " What is your Name: "
@name = gets
puts " "
print " What is your budget: "
$total_money = gets.chomp.to_i
menu