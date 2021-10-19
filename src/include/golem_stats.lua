-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local M = {}

function M.change_price(self, price, price_change)
	self.orig_price = price
	for i = 1, #price do
		local item = string.match(price[i], "%w+")
		local value = string.match(price[i], "%d+")
		value = tonumber(value)
		price[i] = item .. " = " .. tostring(value * price_change)
	end
	return price
end

return M
