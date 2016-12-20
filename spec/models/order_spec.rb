require './models/product'
require './models/order'

describe Order do
  
  describe 'total' do
    it 'when is_exempt is true and is_imported is true, quantity = 1' do
      product = Product.new("b", "Book", 10, true, true)
      order = Order.new(1, product)
      expect(order.total).to eq 10.5
    end
    it 'when is_exempt is false and is_imported is true, quantity = 2' do
      product = Product.new("b", "Book", 10, true, false)
      order = Order.new(2, product)
      expect(order.total).to eq (11.5 * 2)
    end
    it 'when is_exempt is true and is_imported is false, quantity = 1' do
      product = Product.new("b", "Book", 10, false, true)
      order = Order.new(1, product)
      expect(order.total).to eq 10
    end
    it 'when is_exempt is false and is_imported is false, quantity = 1' do
      product = Product.new("b", "Book", 10, false, false)
      order = Order.new(1, product)
      expect(order.total).to eq 11.0
    end
  end

end