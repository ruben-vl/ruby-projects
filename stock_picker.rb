# frozen_string_literal: true

# rubocop: disable Metrics/MethodLength
def stock_picker(prices)
  best_result = 0
  best_pair = [0, 0]
  (0...prices.length).each do |buy|
    (buy + 1...prices.length).each do |sell|
      result = prices[sell] - prices[buy]
      if result > best_result
        best_result = result
        best_pair = [buy, sell]
      end
    end
  end
  best_pair
end
# rubocop: enable Metrics/MethodLength

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
