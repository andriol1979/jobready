class Product
  
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
  
  def name
    @name
  end

  def is_exempt
    @is_exempt
  end
  
  def is_imported
    @is_imported
  end
  
  #public method
  def sales_tax
    return @sales_tax = ((basic_tax.to_f + imported_tax.to_f)/100 * @price).round(2)
  end

  def price_include_tax
    return @price_include_tax = (@price + ((basic_tax.to_f + imported_tax.to_f)/100 * @price)).round(2)
  end
  
end