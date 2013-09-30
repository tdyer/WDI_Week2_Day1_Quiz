class Product
  attr_accessor :id, :name, :price, :description

  def initialize(id, name, price)
    @id = id
    @name = name
    @price = price
    @description = description
  end

  class Order
    attr_accessor :type, :quantity, :unit_price

    def initialize(type, quantity, unit_price)
      @type = type
      @quantity = quantity
      @unit_price = unit_price
    end

    