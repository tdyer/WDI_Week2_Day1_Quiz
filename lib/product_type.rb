require_relative 'log'

class ProductType
  include Log
  attr_accessor :id, :name, :price, :description

  def initialize(id, name, price, description)
    @id = id
    @name = name
    @price = price
    @description = description
    log self
  end

  def to_s
    "id: #{@id}, name: #{@name}, price: #{@price}, description: #{@description}"
  end
end
