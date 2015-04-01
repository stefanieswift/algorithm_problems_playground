 #input a string and convert that string to a palindrome

 def palindrome(string)
  str = string.downcase
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
  str
end

p palindrome('stefanie')
