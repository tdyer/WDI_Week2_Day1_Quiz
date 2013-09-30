require_relative '<fill_me_in>'

class OrderItem
  attr_accessor :product, :quantity, :unit_price

  def initialize
    @product = product
    @quantity = quantity
    @unit_price = unit_price  
  end

  def to_s
    "product type: #{@product}, quantity: #{@quantity}, unit_price: #{@unit_price}"
  end
  
end
