require_relative 'order_item'
require_relative 'product_type'
require_relative 'log'

class Order
	include Log

	@@sum_of_all_orders = 0
	@@order_count = 0

	attr_accessor :order_id, :order_items

  def initialize(*order_items)
  	order_id_generator
  	@order_items = []
  	@@sum_of_all_orders += @price
  end

  def order_id_generator
  	@order_id = @@order_count + 1
  end

  def to_s
  	@string = "#{@order_id}: #{@order_items}"
  end

  def complete_xaction()
  	Log::entry(@string)
  end

  def price
  	return @price
  end


end
