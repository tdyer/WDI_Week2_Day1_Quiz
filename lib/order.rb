require_relative '../lib/order_item'
require_relative '../lib/logger'
require_relative '../lib/product_type'
include Logger

class Order
  attr_accessor :id, :customer, :order_items

  def initialize(id, customer)
    @id = id
    @customer = customer
    @order_items = []
    log(self)
  end

  def complete_xaction
    log(self)
  end

  def total_sales
    sum = 0.0
    @order_items.each do |item|
      sum +=item.quantity * item.unit_price
    end
    return sum
  end

  def to_s
    "Order #{self.id} from #{self.customer}"
  end
end
