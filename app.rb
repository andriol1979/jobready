#This is main class

#Required
require './controller/goods_controller'
require './controller/tax_controller'
require './controller/bill_controller'
require './utils/common_util'

class App
  
  #Load Goods to list
  GoodsController.load_data()
  #Load Tax to list
  TaxController.load_data()
  
  #Print Goods list
  puts "THE LIST OF GOODS"
  puts "Id              Name"
  puts "---------------------------------------------"
  GoodsController::goods_hashmap.each do |key, value|
    puts value.print_object
  end
  
  #Create BillController instance
  bill = BillController.new
  
  #User input
#  puts "Purchase items template: [Quantity, Goods Id, price]"
#  arrItem = gets.chomp.split(",")
#  if(arrItem.length != 3)
#    puts "Input is incorrect"
#  end
  while true do
    #Input quantity
    begin
      print "Quantity: "
      quantity = gets.chomp
      case(quantity)
      when /\A\s*[+-]?\d+\z/
        quantity = quantity.to_i
        break
      else
        puts "Quantity value is incorrect format"
      end
    end while true
    
    #Input goods id
    begin
      print "\nGoods Id: "
      goods_id = gets.chomp
      if(GoodsController::goods_hashmap.has_key?(goods_id))
        break
      else
        puts "Goods does not exist"
      end
    end while true  
    
    #Input price
    begin
      print "\nPrice: "
      price = gets.chomp
      case(price)
      when /\A\s*[+-]?\d+\.\d+\z/
        price = price.to_f
        break
      when /\A\s*[+-]?\d+\z/
        price = price.to_f
        break
      else
        puts "Price value is incorrect format"
      end
    end while true
    
    #Execute input
    goods = GoodsController::goods_hashmap[goods_id]
    goods.set_quantity(quantity)
    goods.set_price(price)
    
    #Add item into bill
    bill.bill_arr.push(goods)
    
    #Print bill
    CommonUtil.print_bill(bill.bill_arr)
  end
  
end