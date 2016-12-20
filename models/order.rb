class Order
  @quantity
  @product

  #Constructor
  def initialize(quantity, product)
    @quantity = quantity
    @product = product
  end
  
  attr_accessor :quantity
                :product

  def quantity=(value)
    @quantity = value
  end

  def product=(value)
    @product = value
  end

  def product
    return @product
  end

  def total
    return (@quantity * @product.price_include_tax).round(2)
  end

end