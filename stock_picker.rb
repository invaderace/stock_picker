def stock_picker(stock_prices)
  valley = stock_prices[0] #default is the first price
  peak = stock_prices[0]
  widest_spread = 0
  best_days = Array.new

  stock_prices.each do |price| #check each item in the array.

    if (price - valley) > widest_spread
      widest_spread = price - valley
      best_days = [valley, price]
    end
    
    if price < peak #if there is a dropoff, 
      valley = price #the low becomes the current
      peak = price #reset the peak
    else
      peak = price #the peak just gets higher
    end

  end
  return best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([17,3,6,9,15,8,21,1,10])
p stock_picker([17,3,6,9,15,8,21,30,40])
p stock_picker([1,50,6,9,15,8,21,30,40])