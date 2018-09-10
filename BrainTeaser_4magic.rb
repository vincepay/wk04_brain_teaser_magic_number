require 'numbers_in_words'
puts "Enter a number?"
input = gets.strip
while input != 'quit'
  n  = input.delete("- ").to_i
  steps = 0
  while (n!=4 && steps<100)
    w = NumbersInWords.in_words(n)
    steps += 1
    puts "#{n} is #{w.length}"
    n = w.length
  end
  if steps<100
    puts "and four is the magic number"
  else
    puts "Ooops! Didn't get to 4 after 100 steps"
  end

  puts "Enter a number?"
  input = gets.strip
end 


  
