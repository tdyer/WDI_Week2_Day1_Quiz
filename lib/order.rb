require_relative 'log'
require_relative 'order_item'

class Order
	include Log
	@@num_sold = 0

	attr_accessor :order_items, :order_number, :customer_name, :total_sales 
	attr_reader :order_id

	def initialize(order_number, customer_name)
		@order_number = order_number
		@customer_name = customer_name
		@order_id = order_id
		@order_items = []
		@total_sales = 0
	end

	def order_id
		order_id = rand(1..100_000)
		order_id
	end

	def complete_xaction
		log("Order complete!")
		@total_sales = @total_sales + 1
	end

	def total_sales
		@total_sales
	end

end