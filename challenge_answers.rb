# 1.  Word Counter
# - Write a ruby script that counts the number of words in a string.
def word_count(n)
  puts n.split(' ').length
end

# 2.  Count the Vowels
# - Write a ruby script that counts the number of vowels in a string.
def vowel_count(n)
  count = 0
  n.split('').each { |x| count = %w(a e i o u).include?(x) ? count + 1 : count }
  puts count
end

# 3.  Reverse Every Other Word
# - Write a ruby script that takes a sentence as a string and reverses every other word in the sentence.
# - Bonus: Don't use the reverse method!
def reverse_every_other(n)
  puts n.split(' ').map.with_index { |x, i| i % 2 == 0 ? x : x.reverse }.join(' ')
end

def reverse_every_other_raw(n)
  puts n.split(' ').map.with_index { |x, i| i % 2 == 0 ? x : x.chars.inject([]){|a,b| a.unshift(b)}.join }.join(' ')
end

# 4.  Count Number of Odds.
# - Write a ruby script that counts the number of odd numbers in an array.
# * Bonus: Make it handle a string gracefully
def odd_count(n)
  puts n.map {|y| y.class}.uniq == [Fixnum] ? n.map {|x| x % 2 != 0 ? 1 : 0 }.inject(:+) : 'Not all strings'
end

# 5.  Check for Palindrome
# - Write a ruby script that checks to see if a string is a palindrome without using the .reverse method.
# * A palindrome is a word, phrase, number, or other sequence of characters which reads the same backwards and forwards.
def palindrome(n)
end

# 6. Fizzbuzz: takes a number, counts to number
# - If number is divisible by 3, puts 'Fizz'
# - if number is divisible by 5, puts 'Buzz'
# - if number is divisible by 3 & 5, puts 'Fizzbuzz'
# - otherwise, puts the number
# EX. 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizzbuzz
def fizzbuzz(n)
  1.upto(n) {|x| puts x % 15 == 0 ? 'Fizzbuzz' : x % 5 == 0 ? 'Buzz' : x % 3 == 0 ? 'Fizz' : x }
end

# 7. Palindrome Chain Method
# - http://www.codewars.com/kata/palindrome-chain-length/ruby
# * How many times do you have to add a reversed number back onto itself before the result is a palindrome?
# EX. 87 + 78 = 165; 165 + 561 = 726; 726 + 627 = 1353; 1353 + 3531 = 4884 ; Answer is 4
def palindrome_chain_length(n)
  m, t = n, 0
  while m != m.to_s.reverse.to_i
    t += 1
    m += m.to_s.reverse.to_i
  end
  puts t
end

# 8. Perimeter of Squares in Rectangle
# - http://www.codewars.com/kata/perimeter-of-squares-in-a-rectangle/ruby
# * What is the total perimeter of (n+1) squares if the squares follow the Fibonacci Seq.? (1, 1, 3, 5, 8...)
def perimeter(n)
  a = [0,1]
  n.times { |x| a << a[-1] + a[-2] }
  a.inject(:+) * 4
end
