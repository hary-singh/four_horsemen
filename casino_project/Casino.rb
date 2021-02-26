## Main project file
$VERBOSE = nil
@@total_money = 0

require_relative 'Deck'
require_relative 'Dice'

def menu
    puts "         ############ MAIN MENU ############         "
    puts " Which game would you like to play ? "
    puts "1. Slots"
    puts "2. High / Low"
    puts "3. Check your balance"
    puts "4. Exit the Casino"
    puts "    ** Select one of the above options **    "
    menu_choice
end

def menu_choice
    choice = gets.chomp.to_i
    if choice === 1
        ## Slots function
        slots 
        menu
    elsif choice === 2
        ## High Low function
        high_low 
        menu
    elsif choice ===3
        show_balance
        menu
    elsif choice === 4
        puts "    ****************************** See you again #{@name}!! ******************************    "
        exit
    else
      puts "  !!!!! INVALID CHOICE, PLEASE TRY AGAIN  !!!!!"
      menu
    end

end



def slots
    puts "         ############ Welcome to Slots #{@name}!! ############         "

end

def high_low
    puts "         ############ Welcome to High / Low #{@name}!! ############         "
    print " Please enter your bet amount: "
    bet = gets.chomp.to_i
    if bet > @@total_money
        show_balance
        puts " You do not have sufficient funds. Going back to the main menu."
        menu
    else
        # high_low_play
        deck = Deck.new
        deck.shuffle_cards
        # deck.display_cards
        deck.high_low_play(bet)
        show_balance
        menu
    end
end

def show_balance
    puts " Your account balance is: $#{@@total_money}"
end




puts "         ############ Welcome to the Casino !!############         "
print " What is your Name: "
@name = gets
puts " "
print " What is your budget: "
@@total_money = gets.chomp.to_i

menu