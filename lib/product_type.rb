require_relative 'log'
# This is a description of a *type* of product
class ProductType
  include Log
  
  attr_accessor :id, :name, :price, :description

  def initialize(id, name, price, description = 'N/A')
    @id          = id
    @name        = name
    @price       = price
    @description = description
    log "Creating product type: #{self}"
  end

  def to_s
    "Product #{@id}: #{@name}: #{@description}: $#{@price}"
  end
end
