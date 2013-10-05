# This is a description of a *type* of product

require_relative 'log'

class ProductType
	include Log

	attr_accessor :name, :price 

	def initialize(id, name, price)
		@name = name
		@price = price.to_f
		@id = id
		log self
	end

	def to_s
		"Product: #{name}, price: #{price}."
	end
  
end