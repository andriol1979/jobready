class OrderModel
  @quantity
  @goods
  @total

  #Constructor
  def initialize(quantity, goods)
    @quantity = quantity
    @goods = goods
  end
  
  attr_accessor :quantity
                :goods

  def quantity=(value)
    @quantity = value
  end

  def goods=(value)
    @goods = value
  end

  def total
    @total = @quantity * @goods.price_include_tax
  end


end