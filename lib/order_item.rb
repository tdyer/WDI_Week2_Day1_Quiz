
require_relative 'product_type'

class OrderItem

	attr_accessor :product_type, :quantity, :unit_price

	def intialize(quantity, product_type, unit_price)
		@quantity = quantity
		@product_type = product_type
		@unit_price = unit_price
	end

 	def to_s
   		"product type: #{@product}, quantity: #{@quantity}, unit_price: #{@unit_price}"
  	end
  
end
