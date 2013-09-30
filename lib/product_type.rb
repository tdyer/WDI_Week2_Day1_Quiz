
# This is a description of a *type* of product
class ProductType
  attr_accessor :id, :name, :price, :description

  def initialize(id, name, price, description = 'item')
    @id          = id
    @name        = name
    @price       = price
    @description = description
  end

  def to_s
    "Product #{@id}: #{name}: #{description}: $#{price}"
  end
end
