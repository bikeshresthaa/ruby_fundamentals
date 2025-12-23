def user_input
  puts 'How many numbers do you want to see?'
  gets.chomp.to_i
end

def foo_bar_num(num)
  if (num % 15).zero?
    'FooBar'
  elsif (num % 5).zero?
    'Bar'
  elsif (num % 3).zero?
    'Foo'
  else
    num
  end
end

def foo_bar
  input = user_input
  (1..input).each do |i|
    print foo_bar_num(i)
    print ' '
  end
end

foo_bar
