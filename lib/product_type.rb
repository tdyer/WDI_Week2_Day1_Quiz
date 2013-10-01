require_relative 'log'
# This is a description of a *type* of product
class ProductType
	include Log

  attr_accessor :id, :name, :price, :description, :string

	def initialize(id, name, price, description=nil)
		@id = id
		@name = name
		@price = price
		@description = description
		log
	end

	def to_s
		"#{@name}, #{@description}, $#{@price}"
	end

	def log
		log_entry("Product Type created: #{to_s}")
	end
  
end
