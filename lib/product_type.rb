require_relative 'log'

# This is a description of a *type* of product
class ProductType
	attr_accessor :id, :name, :price, :description
	include Log

	def initialize(id, name, price, description=nil)
		@id = id
		@name = name
		@price = price
  		@description = description
  		log("#{name} created")
  	end

end
