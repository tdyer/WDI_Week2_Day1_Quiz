require_relative 'product_type'

class OrderItem
	attr_accessor :product_type, :quantity, :unit_price

	def initialize(product_type, quantity, unit_price)
		@product_type = product_type
		@quantity = quantity
		@unit_price = unit_price
	end


  def to_s
    "product type: #{@product}, quantity: #{@quantity}, unit_price: #{@unit_price}"
  end
  
end
