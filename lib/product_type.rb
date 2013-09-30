# This is a description of a *type* of product
class ProductType
	include Log

	attr_accessor :name, :price 
	# attr_reader :id

	def initialize(id, name, price)
		@name = name
		@price = price.to_f
		@id = id
		log self
	end

	def to_s
		"This product is #{name} and its price is $#{price}."
	end
  
end