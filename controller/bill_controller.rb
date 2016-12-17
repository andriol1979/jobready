
class BillController
  
  def initialize()
    @bill_arr = Array.new
    @sales_taxes = 0.0
    @total = 0.0
  end
  
  attr_accessor :bill_arr
                :sales_taxes
                :total
  
  def sales_taxs(tax_value)
    @sales_taxs += tax_value
  end
  
  def total(total)
    @total += total
  end
  
end