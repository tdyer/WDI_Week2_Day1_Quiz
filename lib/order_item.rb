require_relative 'product_type.rb'

class OrderItem
	attr_accessor :quantity, :product_type, :unit_price

	def	initialize(quantity, product_type, unit_price)
		@product_type = product_type
		@quantity = quantity
		@unit_price = (@product_type.price * quantity)
	end

	def to_s
		puts "#{@product_type.name}, quantity: #{@quantity}, unit_price: #{@unit_price}"
	end
  
end





