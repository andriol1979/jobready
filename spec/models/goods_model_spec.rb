require './models/goods_model'

describe GoodsModel do
  #Book
  describe 'calculate_book' do
    book = GoodsModel.new("b", "Book", false, true)
    book.set_quantity(1)
    book.set_price(12.49)

    it 'when calculate_tax' do
      expect(book.calculate_tax(0)).to eq 0
    end

    it 'when calculate_total' do
      book.set_tax_value(0)
      expect(book.calculate_total).to eq 12.49
    end
  end
  #Music CD
  describe 'calculate_music_cd' do
    music = GoodsModel.new("m", "Music cd", false, false)
    music.set_quantity(1)
    music.set_price(14.99)

    it 'when calculate_tax' do
      expect(music.calculate_tax(10)).to eq 1.499
    end

    it 'when calculate_total' do
      music.set_tax_value(1.499)
      expect(music.calculate_total).to eq 16.489
    end
  end
  #chocolate bar
  describe 'calculate_chocolate_bar' do
    chocolate = GoodsModel.new("c", "Chocolate bar", false, true)
    chocolate.set_quantity(1)
    chocolate.set_price(0.85)

    it 'when calculate_tax' do
      expect(chocolate.calculate_tax(0)).to eq 0
    end

    it 'when calculate_total' do
      chocolate.set_tax_value(0)
      expect(chocolate.calculate_total).to eq 0.85
    end
  end
  #packet of headache pills
  describe 'calculate_packet of headache pills' do
    headache_pills = GoodsModel.new("h", "Packet of headache pills", false, true)
    headache_pills.set_quantity(1)
    headache_pills.set_price(9.75)

    it 'when calculate_tax' do
      expect(headache_pills.calculate_tax(0)).to eq 0
    end

    it 'when calculate_total' do
      headache_pills.set_tax_value(0)
      expect(headache_pills.calculate_total).to eq 9.75
    end
  end
end