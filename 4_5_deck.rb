# the Card class
class Card
  attr_reader :rank, :suit, :color

  def initialize(rank, suit, color)
    @rank = rank
    @suit = suit
    @color = color
  end
end

# the deck class
class Deck
  def initialize
    @deck = []
    create_cards('Club', 'Black')
    create_cards('Spade', 'Black')
    create_cards('Heart', 'Red')
    create_cards('Diamond', 'Red')
  end

  def shuffle
    @deck.shuffle!
  end

  def deal
    @deck.shift
  end

  private

  def create_cards(suit, color)
    @deck.push(Card.new('A', suit, color))
    (2..10).each do |i|
      @deck.push(Card.new(i.to_s, suit, color))
    end
    @deck.push(Card.new('J', suit, color))
    @deck.push(Card.new('Q', suit, color))
    @deck.push(Card.new('K', suit, color))
  end
end


deck = Deck.new
deck.shuffle
card_deal = deck.deal
puts card_deal.rank
puts card_deal.suit
puts card_deal.color