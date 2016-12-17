class GoodsModel
  
  @quantity
  @price
  @tax_value
  
  #Constructor
  def initialize(id, name, is_imported, is_exempt)
    @id = id
    @name = name
    @is_imported = is_imported
    @is_exempt = is_exempt
  end
  
  attr_accessor :id
                :name
                :quantity
                :price
                :is_imported
                :is_exempt
  
  #public method
  def set_quantity(quantity)
    @quantity = quantity
  end
  
  def set_price(price)
    @price = price
  end
  
  def set_tax_value(tax_value)
    @tax_value = tax_value
  end
  
  def get_is_exempt
    @is_exempt
  end
  
  def get_is_imported
    @is_imported
  end
  
  #Be used to print to output
  def print_bill()
    puts "#{@quantity}, #{@name}, #{@price}"
  end
  
  def print_object()
    puts "#{@id} -------------- #{@name}"
  end
  
  #public method
  #Calculate tax = total amount * tax_value/100
  def calculate_total()
    return @quantity * (@price + @tax_value)
  end
  
  #Calculate tax = total amount * tax_value/100
  def calculate_tax(tax)
    return (@quantity * @price * tax) / 100
  end
  
end