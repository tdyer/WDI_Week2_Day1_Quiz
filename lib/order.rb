require_relative 'log'
require_relative 'order_item'

class Order
	include Log
	@@num_sold = 0

	attr_accessor :order_items, :order_number, :customer_name, :total_sales, :order_total 
	attr_reader :order_id

	def initialize(order_number, customer_name)
		@order_number = order_number
		@customer_name = customer_name
		@order_id = order_id
		@order_items = []
		@total_sales = 0
	end

	def to_s
		"Order number: #{order_number}, order_items: #{order_items}"
	end

	def complete_xaction
		log("Order number: #{order_number}, order items: #{order_items}")
		@total_sales = @total_sales + 1
	end

	 def order_total
		order_items.inject(0) do |total, order_item|
		total += order_item.unit_price
		end
	end

end