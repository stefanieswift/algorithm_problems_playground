def fibonnaci(number)
  num = 1
  last_num = 1
  length = num.to_s.split('').length
  p length
  while length < number
    last_num = num - last_num
    num = num + last_num
    num
    length = num.to_s.split('').length
  end
  p num
end

fibonnaci(1000)
