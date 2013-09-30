require_relative 'product_type'
require_relative 'order_item'
require_relative 'log'

class Order
	include Order_logger
	@@num_sold = 0

	attr_accessor :order_items :order_number :customer_name 
	attr_reader :order_id

	def initialize(order_number, customer_name)
		@order_number = order_number
		@customer_name = customer_name
		@order_id = order_id
		@order_items = []
	end

	def order_id
		order_id = rand(1..100_000)
		order_id
	end

	def order_items(order_item)
		@items << order_item
		return @items
	end

	def complete_xaction
		log
	end

	def all_orders
		all_orders = 0
		complete_xaction.each do |x|
			all_orders += 1
		end
	end

end
