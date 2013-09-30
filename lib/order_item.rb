require_relative './product_type'

class OrderItem
  attr_accessor :quantity, :unit_price, :product

  def initialize(quantity, product, unit_price)
    @quantity = quantity
    @unit_price = unit_price
    @product = product
  end

  def to_s
    "product type: #{@product}, quantity: #{@quantity}, unit_price: #{@unit_price}"
  end
  
end
