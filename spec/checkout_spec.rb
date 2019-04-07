require './lib/checkout.rb'

describe 'Shop checkout' do

it 'can calculate the correct price for items without any special offers - 4 A and 3 Bs' do
  items = Array.new
  4.times do
    items << Item.new('A', 50)
  end

  4.times do
    items << Item.new('B', 30)
  end
  shop = Shop.new
  items.each do |i|
    shop.checkout(i)
  end
  expect(shop.total).to be(50*4 + 30*4)
end

end
