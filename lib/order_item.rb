require_relative 'product_type'

class OrderItem

	attr_accessor :product_type, :quantity, :unit_price

	def initialize(quantity, product_type, unit_price)
		@quantity = quantity
		@product_type = product_type
		@unit_price = unit_price
	end

  	def to_s
    	"product type: #{@product_type}, quantity: #{@quantity}, unit_price: #{@unit_price}"
  	end
  
end


# - Order Item:
#   - An order item should have a product type.
#   - An order item should have a quantity of the product type ordered. 
#   - An order item should have a unit price (this may be different than the
#     product price)