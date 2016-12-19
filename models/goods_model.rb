class GoodsModel
  
  @sales_tax
  @price_include_tax

  #Constructor
  def initialize(id, name, price, is_imported, is_exempt)
    @id = id
    @name = name
    @price = price
    @is_imported = is_imported
    @is_exempt = is_exempt
  end
  
  attr_accessor :id
                :name
                :price
                :is_imported
                :is_exempt
  
  #public method
  #Apply tax to all goods, except the exempt goods

  def basic_tax
    return 10 unless @is_exempt
    0
  end
    
  def imported_tax
    return 0 unless @is_imported
    5
  end

  def price=(value)
    @price = value
  end
  
  def is_exempt
    @is_exempt
  end
  
  def is_imported
    @is_imported
  end
  
  #public method
  def sales_tax
    @sales_tax ||= (basic_tax.to_f + imported_tax.to_f)/100 * @price
  end

  def price_include_tax
    @price_include_tax = @price + (sales_tax if @sales_tax == nil)
  end
  
  #Be used to print to output
  def print_bill()
    puts "#{@quantity}, #{@name}, #{(@price + tax_value).round(2)}"
  end
  
  def print_object()
    puts "#{@id} -------------- #{@name}"
  end
  
end