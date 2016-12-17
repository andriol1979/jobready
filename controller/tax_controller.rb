#Required
require './models/tax_model'

class TaxController
  
  @@tax_hashmap
  
  def self.tax_hashmap
    @@tax_hashmap
  end
  
  def self.load_data()
    basic_tax = TaxModel.new("basic", "Basic sales tax - 10%", 10)
    import_tax = TaxModel.new("import", "Import additional sales tax - 5%", 5)
    
    @@tax_hashmap = { basic_tax.id => basic_tax, import_tax.id => import_tax}
  end
  
  def self.apply_tax_to_goods(goods)
    #Apply tax to all goods, except the exempt goods
    tax = 0
    if(goods.get_is_exempt == false)
      tax = tax_hashmap["basic"].get_tax_value
    end
    
    #Apply additional sales tax to imported goods
    if(goods.get_is_imported)
      tax += tax_hashmap["import"].get_tax_value
    end
    
    return tax
  end
end