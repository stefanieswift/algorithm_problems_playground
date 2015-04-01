#Project Euler - problem 3
#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

require 'prime'

def largest_prime(num)
  j = num
  i = 2
  while i < num
    if num % i == 0
      j = num/i
      if Prime.prime?(j)
        return puts j
      else
        i += 1
      end
    else
      i += 1
    end
  end
  puts 'no prime factor'
end

largest_prime(600851475143)