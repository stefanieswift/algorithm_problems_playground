#method that returns true if the number entered is a fibonnaci number

def fibonnaci(number)
  fib = [1, 1]
  num = 0
  i = 0
  j = 1
  until num >= number
    num = fib[i] + fib[j]
    fib << num
    i += 1
    j += 1
  end
  p fib
  if fib.include?(number)
    return true
  else
    return false
  end
end

p fibonnaci(1599)


# make a palindrom - takes string returns palindrome of that string  input = leveled, deleveled
