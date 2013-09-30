require_relative ''
require_relative ''

module Logger
  def log
  end
end

class Order
  attr_accessor :id
  include Logger

  def initialize(id)
    @id = id
    @order_items = []
  end

  def complete_xaction
    log
  end

end
