# Self powers - Project Euler - Problem 48

# The series, 1**1 + 2**2 + 3**3 + ... + 10**10 = 10405071317.

# Find the last ten digits of the series, 1**1 + 2**2 + 3**3 + ... + 1000**1000.

def self_powers(num)
  arr = [*1..num]
  arr.map!{|n| n = n**n}
  p number = arr.inject(:+).to_s.split('').last(10).join
end

self_powers(1000)