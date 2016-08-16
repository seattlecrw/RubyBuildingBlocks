def stock_picker(prices)
  max_profits = []
  sell_indexes = []
  (0...prices.length).each do |i|
    j = i + 1
    max_price = 0
    flag = j
    while j < prices.length
      if (prices[j] - prices[i]) > max_price
        max_price = prices[j] - prices[i]
        flag = j
      end
      j += 1
    end
    max_profits.push(max_price)
    sell_indexes.push(flag)
  end
  profit = max_profits.max
  buy = max_profits.index(profit)
  sell = sell_indexes[buy]
  puts ["Buy: #{buy}, Sell: #{sell}"]
  return [buy, sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])
