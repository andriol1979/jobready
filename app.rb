#This is main class

#Required
require './models/product'
require './models/order'

class App
  
  ## Input 1
  # Quantity, Product, Price
  # 1, book, 12.49
  # 1, music cd, 14.99
  # 1, chocolate bar, 0.85
  p1 = Product.new("b", "Book", 12.49, false, true)
  p2 = Product.new("m", "Music cd", 14.99, false, false)
  p3 = Product.new("c", "Chocolate bar", 0.85, false, true)

  ## Input 2
  # Quantity, Product, Price
  # 1, imported box of chocolates, 10.00
  # 1, imported bottle of perfume, 47.50
  p4 = Product.new("ic", "Imported box of chocolates", 10.00, true, true)
  p5 = Product.new("ip", "Imported bottle of perfume", 47.50, true, false)

  ## Input 3
  # Quantity, Product, Price
  # 1, imported bottle of perfume, 27.99
  # 1, bottle of perfume, 18.99
  # 1, packet of headache pills, 9.75
  # 1, box of imported chocolates, 11.25
  p6 = Product.new("ip", "Imported bottle of perfume", 27.99, true, false)
  p7 = Product.new("p", "Bottle of perfume", 18.99, false, false)
  p8 = Product.new("h", "Packet of headache pills", 9.75, false, true)
  p9 = Product.new("h", "box of imported chocolates", 11.25, true, true)

  arr1 = [Order.new(1, p1), Order.new(1, p2), Order.new(1, p3)]
  arr2 = [Order.new(1, p4), Order.new(1, p5)]
  arr3 = [Order.new(1, p6), Order.new(1, p7), Order.new(1, p8), Order.new(1, p9)]

  # OUTPUT

  ## Output 1
  # 1, book, 12.49
  # 1, music CD, 16.49
  # 1, chocolate bar, 0.85

  # Sales Taxes: 1.50
  # Total: 29.83
  sales_tax1 = 0
  total1 = 0

  puts "## Output 1"
  arr1.each do |order|
    puts "#{order.quantity}, #{order.product.name}, #{'%.2f' % order.product.price_include_tax}"
    sales_tax1 += order.product.tax
    total1 += order.total
  end
  puts ""
  puts "Sales Taxes: #{sales_tax1}"
  puts "Total: #{total1}"

  ## Output 2
  # 1, imported box of chocolates, 10.50
  # 1, imported bottle of perfume, 54.65

  # Sales Taxes: 7.65
  # Total: 65.15
  sales_tax2 = 0
  total2 = 0

  puts "----------------------------"

  puts "## Output 2"
  arr2.each do |order|
    puts "#{order.quantity}, #{order.product.name}, #{'%.2f' % order.product.price_include_tax}"
    sales_tax2 += order.product.tax
    total2 += order.total
  end
  puts ""
  puts "Sales Taxes: #{sales_tax2}"
  puts "Total: #{total2}"

  ## Output 3
  # 1, imported bottle of perfume, 32.19
  # 1, bottle of perfume, 20.89
  # 1, packet of headache pills, 9.75
  # 1, imported box of chocolates, 11.85

  # Sales Taxes: 6.70
  # Total: 74.68
  sales_tax3 = 0
  total3 = 0

  puts "----------------------------"

  puts "## Output 3"
  arr3.each do |order|
    puts "#{order.quantity}, #{order.product.name}, #{'%.2f' % order.product.price_include_tax}"
    sales_tax3 += order.product.tax
    total3 += order.total
  end
  puts ""
  puts "Sales Taxes: #{sales_tax3}"
  puts "Total: #{total3}"

end
