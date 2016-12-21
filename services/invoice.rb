class Invoice

  def initialize(orders)
    @orders = orders
  end

  def sales_tax
    # @orders.each do |order|
    #   sales_tax += order.product.tax
    # end
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
    puts "Sales Taxes: #{sales_tax}"
    puts "Total: #{total}"
  end

  private

  def print_order(order)
    puts "#{order.quantity}, #{order.product.name}, #{'%.2f' % order.product.price_include_tax}"
  end

end