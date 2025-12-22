puts "Enter a sentence:"
sentence = gets.chomp.split(" ")

occurence = sentence.each_with_object(Hash.new(0)) do |item, counter|
  counter[item] += 1
end

occurence.each do |key, value|
  puts "#{key} appeared #{value} times in the sentence"
end