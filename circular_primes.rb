# Project Euler - problem 35

# The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

# How many circular primes are there below one million?

require 'prime'

def rotations(x)
  digits = x.to_s.split('')
  digits.map do
    digits.rotate!.join.to_i
  end
end

count = 0
Prime.each(1_000_000).select do |num|
  count += 1 if rotations(num).all?{|j| Prime.prime?(j) }
end

puts count