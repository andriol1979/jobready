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
end