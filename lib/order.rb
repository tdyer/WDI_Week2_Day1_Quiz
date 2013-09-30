# - Order
#   - And order should have an order id
#   - And order should have one or more order items.
#   - And order should have a complete_xaction method that will log (see
#     below)..

require_relative 'log'
require_relative 'order_item'

class Order
	include Log

	def initialize(order_id, customer_name, *order_items)
		@order_id = order_id
		@customer_name = customer_name
		@order_items = Array.new(*order_items)
	end

	def complete_xaction
		return Log
	end
end
