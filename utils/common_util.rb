class CommonUtil
  
  def self.print_bill(bill_arr)
    puts "----------BILL OF ITEMS----------"
    sales_tax = 0
    total = 0
    bill_arr.each do |goods|
      goods.print_bill()
      
      tax = TaxController.apply_tax_to_goods(goods)
      sales_tax += goods.calculate_tax(tax)
      total += goods.calculate_total()
    end
    puts "------------"
    puts "Sales Taxes: #{sales_tax}"
    puts "Total: #{total}"
    puts "---------------------------------"
  end
end