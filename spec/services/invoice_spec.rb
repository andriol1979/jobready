require './services/invoice'

describe Invoice do

  describe '#sales_tax' do
    context 'Input 1' do
      specify do
        p1 = Product.new("b", "Book", 12.49, false, true)
        p2 = Product.new("m", "Music cd", 14.99, false, false)
        p3 = Product.new("c", "Chocolate bar", 0.85, false, true)

        arr = [Order.new(1, p1), Order.new(1, p2), Order.new(1, p3)]

        invoice = Invoice.new(arr)

        expect(invoice.sales_tax).to eq 1.50
      end
    end
  end
end