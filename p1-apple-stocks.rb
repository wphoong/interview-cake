# Write an efficient function that takes stock_prices_yesterday 
# and returns the best profit I could have made from 1 purchase 
# and 1 sale of 1 Apple stock yesterday.

stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

def get_max_profit(arr)

  raise IndexError, "need more than 2 time periods" if arr.length < 2

  min_price = arr[0]
  max_profit = arr[1] - arr[0]

  arr.each_with_index do |current_price, index|
    
    next if index == 0

    potential_profit = current_price - min_price

    max_profit = [max_profit, potential_profit].max

    min_price = [min_price, current_price].min

  end
  max_profit

end

puts get_max_profit(stock_prices_yesterday)


=begin

1.raise error if there are less than 2 prices
2. create min_price var = arr[0]
3. create max_profit var = arr[1] - arr[0]
4. iterate through arr using |current_price|
  if index == 0, then next
  
  create potential profit var = current_price - min_profit

  set max_profit = [max_profit, potential_profit].max
  set min_price = [min_price, current_price].max

5. return max_profit

=end





