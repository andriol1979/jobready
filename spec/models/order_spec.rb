require './models/product'
require './models/order'

describe Order do
  
  describe '#total' do
    it 'total of product with quantity = 2' do
      product = Product.new("b", "Book", 10, true, true)
      order = Order.new(2, product)
      expect(order.total).to eq 21.00
    end
  end

end