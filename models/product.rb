class Product
  
  #Constructor
  def initialize(id, name, price, is_imported, is_exempt)
    @id = id
    @name = name
    @price = price
    @is_imported = is_imported
    @is_exempt = is_exempt
  end
  
  attr_accessor :id,
                :name,
                :price,
                :is_imported,
                :is_exempt
  
  def basic_rate
    return 10 unless @is_exempt
    0
  end
    
  def imported_rate
    return 0 unless @is_imported
    5
  end

  def tax
    ((basic_rate.to_f + imported_rate.to_f)/100 * @price).round(2)
  end

  def price_include_tax
    (@price + tax).round(2)
  end
  
end