#Writing coding interview questions hasn't made me rich. Maybe trading Apple stocks will.
#I have an array stock_prices_yesterday where:

# The indices are the time, as a number of minutes past trade opening time, which was 9:30am local time.
# The values are the price of Apple stock at that time, in dollars.
# For example, the stock cost $500 at 10:30am, so stock_prices_yesterday[60] = 500.

# Write an efficient algorithm for computing the best profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday. For this problem, we won't allow "shorting"—you must buy before you sell.

def apple_stock_profits(arr)
  length = arr.length - 1
  ia = [*0..(length - 1)]
  ja = [*1..(length)]
  profit = 0
  ja.each do |j|
    ia.each do |i|
      gain = (arr[j]) - (arr[i])
      if gain > profit
         profit = gain
       end
     end
   end
   puts profit
 end

 def apple_stock_profits(arr)
  length = arr.length - 1
  i = 0
  min = 0
  max = 0
  profit = 0
  length.times do



apple_stock_profits([2,2,3,4,5,6,7,8,9,1])


