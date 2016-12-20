require './models/product'

describe Product do
  
  describe 'basic_tax' do
    it 'when is_exempt is true' do
      product = Product.new("b", "Book", 10, false, true)
      expect(product.basic_tax).to eq 0
    end
    it 'when is_exempt is false' do
      product = Product.new("b", "Book", 10, false, false)
      expect(product.basic_tax).to eq 10
    end
  end

  describe 'imported_tax' do
    it 'when is_imported is true' do
      product = Product.new("b", "Book", 10, true, true)
      expect(product.imported_tax).to eq 5
    end
    it 'when is_imported is false' do
      product = Product.new("b", "Book", 10, false, false)
      expect(product.imported_tax).to eq 0
    end
  end

  describe 'sales_tax' do
    it 'when is_exempt is true and is_imported is true' do
      product = Product.new("b", "Book", 10, true, true)
      expect(product.sales_tax).to eq 0.5
    end
    it 'when is_exempt is false and is_imported is true' do
      product = Product.new("b", "Book", 10, true, false)
      expect(product.sales_tax).to eq 1.5
    end
    it 'when is_exempt is true and is_imported is false' do
      product = Product.new("b", "Book", 10, false, true)
      expect(product.sales_tax).to eq 0
    end
    it 'when is_exempt is false and is_imported is false' do
      product = Product.new("b", "Book", 10, false, false)
      expect(product.sales_tax).to eq 1.0
    end
  end

  describe 'price_include_tax' do
    it 'when is_exempt is true and is_imported is true' do
      product = Product.new("b", "Book", 10, true, true)
      expect(product.price_include_tax).to eq 10.5
    end
    it 'when is_exempt is false and is_imported is true' do
      product = Product.new("b", "Book", 10, true, false)
      expect(product.price_include_tax).to eq 11.5
    end
    it 'when is_exempt is true and is_imported is false' do
      product = Product.new("b", "Book", 10, false, true)
      expect(product.price_include_tax).to eq 10
    end
    it 'when is_exempt is false and is_imported is false' do
      product = Product.new("b", "Book", 10, false, false)
      expect(product.price_include_tax).to eq 11.0
    end
  end
end