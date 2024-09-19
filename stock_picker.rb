def stock_picker(prices)
  best_result = 0
  best_pair = [0,0]
  for buy in 0...prices.length do
    for sell in buy+1...prices.length do
      result = prices[sell] - prices[buy]
      if result > best_result
        best_result = result
        best_pair = [buy, sell]
      end
    end
  end
  best_pair
end

p stock_picker([17,3,6,9,15,8,6,1,10])