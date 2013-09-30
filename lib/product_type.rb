require_relative './log'

# This is a description of a *type* of product
class ProductType
  include Log
  
  attr_accessor :id, :name, :price, :description
  
  def initialize(id, name, price, description = "")
    @id = id.to_i
    @name = name
    @price = price.to_f
    @description = description
    log "Creating a product type =>  #{self}"
  end

  def to_s
    "id: #{id}, name: #{name}, price: #{price}, description: #{description}"
  end
  
end
