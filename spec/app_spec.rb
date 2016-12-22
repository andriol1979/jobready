require './app'

describe App do

  describe '#input_1' do
    specify do
      p1 = Product.new("b", "Book", 12.49, false, true)
      p2 = Product.new("m", "Music cd", 14.99, false, false)
      p3 = Product.new("c", "Chocolate bar", 0.85, false, true)

      arr = [Order.new(1, p1), Order.new(1, p2), Order.new(1, p3)]

      invoice = Invoice.new(arr)

      app = App.new

      expect(app.input_1.sales_tax).to eq 1.50
      expect(app.input_1.total).to eq 29.83
    end
  end

  describe '#input_2' do
    specify do
      p4 = Product.new("ic", "Imported box of chocolates", 10.00, true, true)
      p5 = Product.new("ip", "Imported bottle of perfume", 47.50, true, false)

      arr = [Order.new(1, p4), Order.new(1, p5)]

      Invoice.new(arr)

      app = App.new

      expect(app.input_2.sales_tax).to eq 7.63
      expect(app.input_2.total).to eq 65.13
    end
  end

  describe '#input_3' do
    specify do
      p6 = Product.new("ip", "Imported bottle of perfume", 27.99, true, false)
      p7 = Product.new("p", "Bottle of perfume", 18.99, false, false)
      p8 = Product.new("h", "Packet of headache pills", 9.75, false, true)
      p9 = Product.new("h", "box of imported chocolates", 11.25, true, true)

      arr = [Order.new(1, p6), Order.new(1, p7), Order.new(1, p8), Order.new(1, p9)]

      Invoice.new(arr)

      app = App.new

      expect(app.input_3.sales_tax).to eq 6.66
      expect(app.input_3.total).to eq 74.64
    end
  end
end