# Problem 14 - project euler

# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.


  def finding_that(num)
    num_array = [*1..num].reverse
    longest_sequence = 0
    number = 0
    num_array.each do |x|
        sequence = sequence(x)
      if sequence != false
        if longest_sequence < sequence[1]
          longest_sequence = sequence[1]
          number = sequence[0]
        end
      end
    end
    p number
    p longest_sequence
  end


  def oddEven(num)
    if num % 2 == 0
      return num/2
    else
      return num * 3 + 1
    end
  end

  def sequence(num)
    changing = num
    counter = 1
    until changing <= 1
      changing = oddEven(changing)
      counter += 1
    end
    if changing == 1
      return [num, counter]
    end
    false
  end


finding_that(1_000_000)
