#Required
require './models/goods_model'

class GoodsController
  @@goods_hashmap
  
  def self.goods_hashmap
    @@goods_hashmap
  end
  
  def self.load_data()
    book = GoodsModel.new("b", "Book", false, true)
    music_cd = GoodsModel.new("m", "Music cd", false, false)
    chocolate_bar = GoodsModel.new("c", "Chocolate bar", false, true)
    perfume = GoodsModel.new("p", "Bottle of perfume", false, false)
    headache_pills = GoodsModel.new("h", "Packet of headache pills", false, true)
    
    #Imported goods
    im_chocolate = GoodsModel.new("ic", "Imported box of chocolates", true, true)
    im_perfume = GoodsModel.new("ip", "Imported bottle of perfume", true, false)
    
    @@goods_hashmap = { book.id => book, music_cd.id => music_cd, chocolate_bar.id => chocolate_bar,
                        perfume.id => perfume, headache_pills.id => headache_pills,
                        im_chocolate.id => im_chocolate, im_perfume.id => im_perfume}
  end
end