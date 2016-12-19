require './models/goods_model'
require './models/order_model'

describe OrderModel do
  
  describe 'total' do
    it 'when is_exempt is true and is_imported is true, quantity = 1' do
      good = GoodsModel.new("b", "Book", 10, true, true)
      order = OrderModel.new(1, goods)
      expect(order.total).to eq 10.5
    end
    it 'when is_exempt is false and is_imported is true, quantity = 2' do
      good = GoodsModel.new("b", "Book", 10, true, false)
      order = OrderModel.new(2, goods)
      expect(order.total).to eq (11.5 * 2)
    end
    it 'when is_exempt is true and is_imported is false, quantity = 1' do
      good = GoodsModel.new("b", "Book", 10, false, true)
      order = OrderModel.new(1, goods)
      expect(order.total).to eq 10
    end
    it 'when is_exempt is false and is_imported is false, quantity = 1' do
      good = GoodsModel.new("b", "Book", 10, false, false)
      order = OrderModel.new(1, goods)
      expect(order.total).to eq 11.0
    end
  end

end