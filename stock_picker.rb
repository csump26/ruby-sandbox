def stock_picker(stock_prices)
	
	buy_date = 0
	sell_date = 0
	max_profit = -1

	stock_prices.each_with_index do |buy_price, buy_index|
		stock_prices[buy_index+1..stock_prices.length].each_with_index do |sell_price, sell_index|
			if(sell_price - buy_price > max_profit)
				buy_date = buy_index
				sell_date = buy_index + sell_index + 1
				max_profit = sell_price - buy_price
			end
		end
	end
	return "[#{buy_date}, #{sell_date}] for a profit of $#{stock_prices[sell_date]} - $#{stock_prices[buy_date]} = $#{max_profit}"
end



puts stock_picker([17,3,6,9,15,8,6,1,10])
puts stock_picker([3,13,20,5,18,9,27])
puts stock_picker([27,3,20,5,18,9,13])
puts stock_picker([27,9,20,5,18,3,13])
puts stock_picker([9,7,22,14,47,6,12])
puts stock_picker([18,7,17,3,39,22,29])

