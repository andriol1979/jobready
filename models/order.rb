class Order
  
  #Constructor
  def initialize(quantity, product)
    @quantity = quantity
    @product = product
  end
  
  attr_accessor :quantity,
                :product

  def total
    (@quantity * @product.price_include_tax).round(2)
  end

end