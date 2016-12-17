class CommonUtil
  
  def self.print_bill(bill)
    puts "----------BILL OF ITEMS----------"
    bill.bill_arr.each do |goods|
      goods.print_bill()
    end
    puts "------------"
    puts "Sales Taxes: #{bill.get_sales_taxes.round(2)}"
    puts "Total: #{bill.get_total.round(2)}"
    puts "---------------------------------"
    
    puts "Type [clear] to clear bill or hit enter to ignore and purchase more items"
    command = gets.chomp
    if(command == "clear")
      bill.clear_bill()
    end
  end
end