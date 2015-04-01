# Project Euler - problem 9

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2 For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def pythagorean(num)
 ia = [*1..300]
 ja =[*2..400]
 ka = [*3..750]
 ia.each do |i|
  ja.each do |j|
    ka.each do |k|
      if i + j + k != num
        next
      elsif i < j && j < k && ((i ** 2 ) + (j ** 2 ) == (k **2))
        return puts i*j*k
      end
    end
  end
end
end

pythagorean(1000)