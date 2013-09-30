class OrderItem
  attr_accessor :type, :quantity, :unit_price

  def initialize(quantity, type, unit_price)
    @quantity = quantity
    @type = type
    @unit_price = unit_price
  end

  def to_s
    "product type: #{@product}, quantity: #{@quantity}, unit_price: #{@unit_price}"
  end
  
end
