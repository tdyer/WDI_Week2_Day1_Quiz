require_relative 'order_item.rb'
require_relative 'log.rb'

class Order

	@@order_number = 0 
	@@order_list = []

	attr_accessor :id, :cust_name, :items
	include Log

	def initialize(id, cust_name)
		@id = id
		@cust_name = cust_name
		@items = []
	end

	def complete_xaction
		puts "Order #{id}:" 
		items.each do |item|
			puts item.to_s
		end
	end

	def total_price
		return	items.inject(0) {|sum, item| sum + item.unit_price}
	end

	def total_orders

	end

# Alternate total method using the inject method and slightly different syntax. 

	# def total_price
	# 	sum = 0
	# 	items.each do |item|
	# 		sum += item.unit_price
	# 	end
	# 	return sum
	# end

end

















