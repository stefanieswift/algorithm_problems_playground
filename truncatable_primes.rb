require 'prime'

def truncatable_primes(num)
  counter = 0
  a = []
  while counter < num
    Prime.each do |prime|
      first = prime.to_s.split('').first.to_i
      last = prime.to_s.split('').last.to_i


      if prime > 10
