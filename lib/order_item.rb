require_relative '<fill_me_in>'

class OrderItem
  attr_accessor :type, :quantity, :unit_price

  def initialize(type, quantity, unit_price)
    @type = type
    @quantity = quantity
    @unit_price = unit_price
  end

  def to_s
    "product type: #{@product}, quantity: #{@quantity}, unit_price: #{@unit_price}"
  end
  
end
