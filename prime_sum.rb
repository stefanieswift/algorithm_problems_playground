# Consecutive prime sum - Project Euler - Problem 50

# The prime 41, can be written as the sum of six consecutive primes:

# 41 = 2 + 3 + 5 + 7 + 11 + 13
# This is the longest sum of consecutive primes that adds to a prime below one-hundred.

# The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.

# Which prime, below one-million, can be written as the sum of the most consecutive primes?



require 'prime'

def prime_squares(num)
  a =[]
  Prime.each(num) do |prime|
    a << prime
  end
  a = a.reverse
  most_consecutives = 0
  sum = 0
  until a.length == 0
    if helper(a.first) > most_consecutives
      most_consecutives = helper(a.first)
      sum = a.first
      a = a.select {|n| n if n > Prime.first(most_consecutives).inject(:+)}
    end
    a.shift
  end
  p sum
end

def helper(num)
  a = []
  Prime.each(num) do |prime|
    a << prime
  end
    a.each_with_index do |number, indx|
      sum = number
      j = 1
      until sum >= num
        sum += a[indx + j]
        j += 1
      end
      if num == sum
        return j
      end
    end
    0
  end

prime_squares(1_000_000)




