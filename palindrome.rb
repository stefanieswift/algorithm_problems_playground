 def palindrome(string)
  str = string
  reverse = str.reverse
  i = -1
  j = 0
  while str != reverse
    arr = str.split('')
    last = arr[i]
    arr.insert(j, last)
    str = arr.join('')
    reverse = str.reverse
    i -= 1
    j += 1
  end
  p str
end

palindrome('leveled')
