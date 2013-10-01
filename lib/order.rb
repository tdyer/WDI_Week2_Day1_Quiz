require_relative 'order_item'

class Order

	include Log
	
	attr_accessor :order_id, :customer_name, :order_items, :order_values, :prices_array

	@@all_orders_total = 0

	def self.total 
		puts "The total of all orders is $#{@@all_orders_total}"
	end

	def initialize(order_id, customer_name)
		@order_id = order_id
		@customer_name = customer_name
		@order_items = []
		@order_values = []
		@prices_array = []
	end

	def order_total
		order_total = 0
		@order_items.each {|item| prices_array << item.cost}
		@prices_array.each {|item| order_total += item }
		puts "The total cost of order ##{order_id} is $#{order_total}"
		@@all_orders_total += order_total
	end

	def complete_xaction
		@order_items.each  {|value| order_values << value.to_s}
			order_summary = "#{order_values.join(" and ")}."

		log("Order #{order_id} completed. #{customer_name} purchased #{order_summary}")
	end


end

# - Order
#   - And order should have an order id
#   - And order should have one or more order items.
#   - And order should have a complete_xaction method that will log (see
#     below)..