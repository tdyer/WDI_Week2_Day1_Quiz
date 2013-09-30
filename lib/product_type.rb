

class ProductType
  attr_accessor :id, :name, :price, :description

  def initialize(id, name, price, *description)
  	@id = id
  	@name = name
  	@price = price
  	@description = description
  end

end
