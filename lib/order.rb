require_relative 'order_item'
require_relative 'product_type'

class Order

	include Log
	
	attr_accessor :order_id, :customer_name, :order_items

	def initialize(order_id, customer_name)
		@order_id = order_id
		@customer_name = customer_name
		@order_items = []
	end

end



# - Order
#   - And order should have an order id
#   - And order should have one or more order items.
#   - And order should have a complete_xaction method that will log (see
#     below)..