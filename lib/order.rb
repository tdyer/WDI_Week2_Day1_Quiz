require_relative 'order_item'
require_relative 'log'

class Order
	include Log

	@@total_sales = 0
	@@order_count = 0

	attr_accessor :order_id, :customer, :order_items, :total_sales, :order_count, :customers

  def initialize(order_id, customer)
  	@order_id = order_id
  	@customer = customer
  	@customers = []
  	@customers << @customer
  	@order_items = []
  	@@order_count += 1
  end

  def to_s
  	@description = "#{@order_id}: #{@order_items}, total price: $#{@price}"
  	return @description
  end

  def complete_xaction
  	calculate_price
  	Log::entry(@description)
  end

  def calculate_price
  	@price = 0
  	@order_items.each do |item|
  		@price += item.unit_price
  	end
  	@@total_sales += @price
  	return @price
  end


end
