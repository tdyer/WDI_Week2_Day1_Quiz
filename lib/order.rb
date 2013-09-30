require_relative 'order_item'
require_relative 'product_type'

class Order

  def initialize(order_id, *order_items)
  	@order_id = order_id
  	@order_items = []
  end

  def complete_xaction
  end

end
