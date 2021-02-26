## Main project file
@total_money = 0
require_relative 'Card'
require_relative 'Deck'
require_relative 'Dice'

def menu
    puts "         ############ MAIN MENU ############         "
    puts " Which game would you like to play ? "
    puts "1. Slots"
    puts "2. High / Low"
    puts "3. Exit the Casino"
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
    elsif choice === 3
        puts "    ****************************** See you again #{@name} ******************************    "
        exit
    else
      puts "  !!!!! INVALID CHOICE, PLEASE TRY AGAIN  !!!!!"
      menu
    end

end



def slots
    puts "         ############ Welcome to Slots #{@name}############         "

end

def high_low
    puts "         ############ Welcome to High / Low #{@name}############         "
    
end

puts "         ############ Welcome to the Casino !!############         "
print " What is your Name: "
@name = gets
puts " "
print " What is your budget: "
@total_money = gets.chomp.to_i

menu