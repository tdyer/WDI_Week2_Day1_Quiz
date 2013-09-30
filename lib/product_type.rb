require_relative 'log'
# This is a description of a *type* of product
class ProductType
	include Log

  attr_accessor :id, :name, :price, :description

	def initialize(id, name, price, description=nil)
		@id = id
		@name = name
		@price = price
		@description = description

	end

	def to_s
		@description = "#{@id}, #{@name}, #{@price}, #{@description}"
	    return @description
	end

	def log
		Log::entry("Product Type created: #{@description})
	end
  
end
