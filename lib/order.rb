require_relative 'product_type'
require_relative 'order_item'

class Order
  attr_accessor :id, :items

  def initialize(id, items)
    @id    = id
    @items = items
  end

  def complete_xaction
  end
end
