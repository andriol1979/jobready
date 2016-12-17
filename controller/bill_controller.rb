
class BillController
  
  def initialize()
    @bill_arr = Array.new
    @sales_taxes = 0.0
    @total = 0.0
  end
  
  attr_accessor :bill_arr
                :sales_taxes
                :total
  
  #Setter
  def set_sales_taxes(tax_value)
    @sales_taxes += tax_value
  end
  
  def set_total(total)
    @total += total
  end
  
  #Getter
  def get_sales_taxes
    @sales_taxes
  end
  
  def get_total
    @total
  end
  
  def clear_bill()
    @bill_arr = Array.new
    @sales_taxes = 0.0
    @total = 0.0
  end
end