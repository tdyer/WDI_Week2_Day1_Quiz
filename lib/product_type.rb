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
		@string = "ID: #{@id}, #{@name}, #{@description}, $#{@price}"
		return @string
	end

	def log
		log_entry("Product Type created: #{@string}")
	end
  
end
