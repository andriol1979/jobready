class GoodsModel
  
  @quantity
  @price
  
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
  #Be used to print to output
  def print_bill()
    puts "#{@quantity}, #{@name}, #{@price}"
  end
  
  def print_object()
    puts "#{@id} -------------- #{@name}"
  end
  
  #public method
  #Calculate tax = total amount * tax_value/100
  def calculate_tax(tax_value)
    return (@quantity * @price * tax_value) / 100
  end
  
end