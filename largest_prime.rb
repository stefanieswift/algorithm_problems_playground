#Project Euler - problem 3
#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

require 'prime'

def largest_prime(num)
  i = num - 1
  until Prime.prime?(i)
    i -= 1
  end
  puts i
end

largest_prime(600851475143)