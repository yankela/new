require './card.rb'

class Deck
  attr_reader :cards
  def initialize
    @cards = []
    arr = ["spades", "hearts", "diamonds", "clubs"]
    arr.each do |suit|
      13.times do |i| #nested loop
      @cards <<  Card.new(i+1, suit)
      end
    end
  end

  def draw
  card = @cards.sample
  @cards.delete(card)
  end
end

card = Deck.new
p card.draw
