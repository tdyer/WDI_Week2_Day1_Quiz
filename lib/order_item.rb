require_relative 'product_type'

class OrderItem
  attr_accessor :product, :quantity, :unit_price

  def initialize(product, quantity, unit_price)
    @product    = product
    @quantity   = quantity
    @unit_price = unit_price
  end

  def to_s
    "product type: #{@product}, quantity: #{@quantity}, unit_price: #{@unit_price}"
  end
  
end
