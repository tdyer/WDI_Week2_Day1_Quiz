require_relative '../lib/logger'

class ProductType
  include Logger

  attr_accessor :id, :name, :price, :description

  def initialize(id, name, price, description="")
    @id = id
    @name = name
    @price = price
    @description = description
    log(self)
  end

  def to_s
    return "#{@name}: #{@price}"
  end
  
end