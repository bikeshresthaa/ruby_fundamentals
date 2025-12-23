def ordinal(number)
  digit = number % 10
  case digit
  when 1
    return "#{number}st" if number % 100 != 11
  when 2
    return "#{number}nd" if number % 100 != 12
  when 3
    return "#{number}rd" if number % 100 != 13
  end
  "#{number}th"
end