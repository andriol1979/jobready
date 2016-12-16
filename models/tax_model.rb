class TaxModel
  
  def initialize(id, name, tax_value)
    @id = id
    @name = name
    @tax_value = tax_value
  end
  
  attr_accessor :id
                :name
                :tax_value
end