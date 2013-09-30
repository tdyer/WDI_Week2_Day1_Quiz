require_relative 'product_type'

class OrderItem
  attr_accessor :quantity, :product, :unit_price

  def initialize(quantity, product, unit_price)
    @quantity   = quantity
    @product    = product
    @unit_price = unit_price
  end

  def to_s
    "product type: #{@product}, quantity: #{@quantity}, unit_price: #{@unit_price}"
  end
  
end
