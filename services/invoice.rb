class Invoice

  def initialize(orders)
    @orders = orders
  end

  def sales_tax
    @orders.map { |order| order.product.tax }.inject(:+)
  end

  def total
    @orders.map { |order| order.total }.inject(:+)
  end

  def print
    puts "## Output"
    @orders.each do |order|
      print_order(order)
    end
    puts ""
    puts "Sales Taxes: #{'%.2f' % sales_tax}"
    puts "Total: #{'%.2f' % total}"
  end

  private

  def print_order(order)
    puts "#{order.quantity}, #{order.product.name}, #{'%.2f' % order.product.price_include_tax}"
  end

end