
require_relative 'log'
require_relative 'order_item'

class Order
	include Log

	attr_accessor :order_id, :customer_name, :order_items

	def initialize(order_id, customer_name)
		@order_id = order_id
		@customer_name = customer_name
		@order_items = []
	end

	def complete_xaction
		return log_order(@order_id)
	end
end
