require_relative 'log'

# This is a description of a *type* of product
class ProductType
	include Order_logger

	attr_accessor :name :price 
	attr_reader :id

	def initialize(name, price)
		@id = id
		@name = name
		@price = price
		@products = []
		log self
	end

	def id
		@id = rand(1..100_000)
		id
	end

	def to_s
		"This product is #{name} and its price is $#{price}."
	end
  
end
