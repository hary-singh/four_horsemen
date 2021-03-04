class Slots 

@bet = 0

def winnings_multiplier(s1, s2, s3)
  if s1==s2 && s2==s3
    3
  elsif s1==s2 || s2==s3 || s1==s3
    2
  else
     $total_money -= @bet
    0
  end
end

def run_slots
  slotSymbolList = ["Bar", "Orange", "Bell", "Cherry", "Melon", "SEVEN"]
  puts "         ############ Welcome to Slots #{@name}############         "
  show_balance
  loop do
    puts "How much would you like to bet? "
    @bet = gets.strip.to_i
    slotWheel1 = slotSymbolList.sample
    slotWheel2 = slotSymbolList.sample
    slotWheel3 = slotSymbolList.sample
    puts "#-- #{slotWheel1} -- #{slotWheel2} -- #{slotWheel3} --#"

    winnings = @bet * winnings_multiplier(slotWheel1, slotWheel2, slotWheel3)
    puts "You have won $#{winnings}!"

    $total_money += winnings
    show_balance

    keep_playing_menu
  end
end

def keep_playing_menu
  print "Want to keep playing? (yes/no)"
  continue_choice = gets.strip.to_s
  if continue_choice == "yes"
    run_slots
  elsif continue_choice == "no"
    puts "Goodbye"
    menu
  else
    puts "Not a valid answer, Please try again"
    keep_playing_menu
  end
end
end




