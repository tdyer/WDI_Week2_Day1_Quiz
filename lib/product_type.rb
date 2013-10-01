require_relative 'mixin'


# This is a description of a *type* of product
class ProductType

	include Log

	attr_accessor :id, :name, :price, :description

	def initialize(id,name,price,description)
		@id = id
		@name = name
		@price = price
		@description = description
		log("New product '#{name}' successfully created")
	end

	def to_s
		"#{@name}"
	end
  
end


# - Product Type:
# 	- A product type should have an id.
# 	- A product type should have a name.
# 	- A product type should have a price.
# 	- A product type should have a description (optional).