#This is main class

#Required
require './controller/goods_controller'
require './controller/tax_controller'

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
  
  
end