class Quote
  attr_accessor :content, :author
  @@quotes = []

  def initialize(content, author)
    @content = content
    @author = author
    @@quotes.push(self)
  end

  def display_quote
    puts "#{content} by #{author}"
  end

  def self.random
    puts @@quotes.sample.inspect
  end
end

Q1 = Quote.new('this is quote 1', "author 1")
Q2 = Quote.new("This is quote 2", "author 2")

Quote.random

Q1.display_quote