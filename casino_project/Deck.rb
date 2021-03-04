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

  def return_cards(number)
    hand =[]
    @cards[0..number].each do |draw|
          hand << draw
      end
    return hand
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
end

