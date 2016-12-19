require './models/goods_model'

describe GoodsModel do
  
  describe 'basic_tax' do
    it 'when is_exempt is true' do
      good = GoodsModel.new("b", "Book", 10, false, true)
      expect(good.basic_tax).to eq 0
    end
    it 'when is_exempt is false' do
      good = GoodsModel.new("b", "Book", 10, false, false)
      expect(good.basic_tax).to eq 10
    end
  end

  describe 'imported_tax' do
    it 'when is_imported is true' do
      good = GoodsModel.new("b", "Book", 10, true, true)
      expect(good.imported_tax).to eq 5
    end
    it 'when is_imported is false' do
      good = GoodsModel.new("b", "Book", 10, false, false)
      expect(good.imported_tax).to eq 0
    end
  end

  describe 'sales_tax' do
    it 'when is_exempt is true and is_imported is true' do
      good = GoodsModel.new("b", "Book", 10, true, true)
      expect(good.sales_tax).to eq 0.5
    end
    it 'when is_exempt is false and is_imported is true' do
      good = GoodsModel.new("b", "Book", 10, true, false)
      expect(good.sales_tax).to eq 1.5
    end
    it 'when is_exempt is true and is_imported is false' do
      good = GoodsModel.new("b", "Book", 10, false, true)
      expect(good.sales_tax).to eq 0
    end
    it 'when is_exempt is false and is_imported is false' do
      good = GoodsModel.new("b", "Book", 10, false, false)
      expect(good.sales_tax).to eq 1.0
    end
  end

  describe 'price_include_tax' do
    it 'when is_exempt is true and is_imported is true' do
      good = GoodsModel.new("b", "Book", 10, true, true)
      expect(good.price_include_tax).to eq 10.5
    end
    it 'when is_exempt is false and is_imported is true' do
      good = GoodsModel.new("b", "Book", 10, true, false)
      expect(good.price_include_tax).to eq 11.5
    end
    it 'when is_exempt is true and is_imported is false' do
      good = GoodsModel.new("b", "Book", 10, false, true)
      expect(good.price_include_tax).to eq 10
    end
    it 'when is_exempt is false and is_imported is false' do
      good = GoodsModel.new("b", "Book", 10, false, false)
      expect(good.price_include_tax).to eq 11.0
    end
  end
end