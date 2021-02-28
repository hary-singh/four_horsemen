class Deck
    # Getter and Setter methods for rank, suit and color
    require_relative 'Card'
    require_relative 'High_Low'
  attr_accessor :cards
    # Gets called when you call the new method to create an instance
    # deck = Deck.new
  def initialize
    @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
    @suits = %w(Spades Diamonds Clubs Hearts)
    @cards = []
    generate_deck
  end

  def shuffle_cards
    @cards.shuffle!()
  end

  def generate_deck
    @suits.each do |suit|
      @ranks.size.times do |i|
        # Ternary Operator
        color = (suit == 'Spades' || suit == 'Clubs') ? 'Black' : 'Red'
        @cards << Card.new(@ranks[i], suit, color)
      end
    end
  end

  def display_cards
    @cards.each do |card|
      puts "#{card.rank} #{card.suit} (#{card.color})"
    end
  end


#   def high_low_play
#         hand = []
#         @cards[0..3].each do |draw|
#             hand << draw
#         end

#         hand_ranks = []
#         hand.each do |i|
#             case i.rank 
#             when 'A'
#                 hand_ranks << 0
#             when 'J'
#                 hand_ranks << 11
#             when 'Q'
#                 hand_ranks << 12
#             when 'K'
#                 hand_ranks << 13
#             else 
#                 hand_ranks << i.rank
#             end
#         end


#         puts " Your card is: #{hand[0].rank} #{hand[0].suit} #{hand[0].color}"
#         print " Will your next card be 'H' or 'L' :"
#         choice = gets.chomp
#         if choice == 'H' || choice == 'h'
#                 puts "You guessed your next card to be High!"
#                 puts " Your card is: #{hand[1].rank} #{hand[1].suit} #{hand[1].color}"
#                 if hand_ranks[1].to_i > hand_ranks[0].to_i 
#                     puts "Your guess was correct!"
#                     print " Will your next card be 'H' or 'L'? :"
#                     choice2 = gets.chomp
#                     if choice2 == 'H' || choice2 == 'h'
#                         puts "You guessed your next card to be High!"
#                         puts " Your card is: #{hand[2].rank} #{hand[2].suit} #{hand[2].color}"
#                         if hand_ranks[2].to_i > hand_ranks[1].to_i 
#                             puts "You WON !! Your guess was correct! The bet money was added to your balance!"
#                             $total_money += $bet
#                         else
#                             puts " Incorrect Choice. You lost your bet! Taking you back to Main Menu"
#                             $total_money -= $bet
#                         end
#                     elsif choice2 == 'L' || choice2 == 'l'
#                         puts "You guessed your next card to be Low!"
#                         puts " Your card is: #{hand[2].rank} #{hand[2].suit} #{hand[2].color}"
#                         if hand_ranks[2].to_i < hand_ranks[1].to_i 
#                             puts "You WON !! Your guess was correct! The bet money was added to your balance!"
#                             $total_money += $bet
#                         else
#                             puts " Incorrect Choice. You lost your bet! Taking you back to Main Menu"
#                             $total_money -= $bet
#                         end
#                     end
#                 else
#                     puts " Incorrect Choice. You lost your bet! Taking you back to Main Menu"
#                     $total_money -= $bet
#                 end
        
#         elsif choice == 'L' || choice == 'l'
#                 puts "You guessed your next card to be Low!"
#                 puts " Your card is: #{hand[1].rank} #{hand[1].suit} #{hand[1].color}"
#                 if hand_ranks[1].to_i < hand_ranks[0].to_i 
#                     puts "Your guess was correct!"
#                     print " Will your next card be 'H' or 'L' :"
#                     choice2 = gets.chomp
#                     if choice2 == 'H' || choice2 == 'h'
#                         puts "You guessed your next card to be High!"
#                         puts " Your card is: #{hand[2].rank} #{hand[2].suit} #{hand[2].color}"
#                         if hand_ranks[2].to_i > hand_ranks[1].to_i 
#                             puts "You WON !! Your guess was correct! The bet money was added to your balance!"
#                             $total_money += $bet
#                         else
#                             puts " Incorrect Choice. You lost your bet! Taking you back to Main Menu"
#                             $total_money -= $bet
#                         end
#                     elsif choice2 == 'L' || choice2 == 'l'
#                         puts "You guessed your next card to be Low!"
#                         puts " Your card is: #{hand[2].rank} #{hand[2].suit} #{hand[2].color}"
#                         if hand_ranks[2].to_i < hand_ranks[1].to_i 
#                             puts "You WON !! Your guess was correct! The bet money was added to your balance!"
#                             $total_money += $bet
#                         else
#                             puts " Incorrect Choice. You lost your bet! Taking you back to Main Menu"
#                             $total_money -= $bet
#                         end
#                     else
#                         puts " Incorrect Choice. You lost your bet! Taking you back to Main Menu"
#                         $total_money -= $bet
#                     end
#                 else
#                     puts " Incorrect Choice. You lost your bet! Taking you back to Main Menu"
#                     $total_money -= $bet
#                 end
#         end
            

#     end



end

