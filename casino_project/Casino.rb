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

def show_balance
  puts "You account balance is: $#{@total_money}"
end

# formula for determining earnings when matches are found
def winnings_multiplier(s1, s2, s3)
  if s1==s2 && s2==s3
    3
  elsif s1==s2 || s2==s3 || s1==s3
    2
  else
    0
  end
end
# symbols to appear when randomized on slot wheels
def run_slots
  puts "         ############ Welcome to Slots #{@name}############         "
  slotSymbolList = ["Cherry", "Orange", "Plum", "Bell", "Melon", "Bar"]

  loop do
    show_balance
    puts "How much would you like to bet? "
    bet = gets.chomp.to_i

    @total_money -= bet
# grabs random slot symbol from array
    slotWheel1 = slotSymbolList.sample
    slotWheel2 = slotSymbolList.sample
    slotWheel3 = slotSymbolList.sample
# displays the slot symbol results
    puts "#-- #{slotWheel1} -- #{slotWheel2} -- #{slotWheel3} --#"
# dispays winnings/losses
    winnings = bet * winnings_multiplier(slotWheel1, slotWheel2, slotWheel3)
    puts "You have won $#{winnings}!"
# adds winnings to total cash
    @@total_money += winnings

    puts "Would you like to go again? (yes to continue) "
    unless gets.chomp=="yes"
      show_balance
      menu
      break
    end
  end
end
# calling the method to begin slots game
run_slots


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