require './lib/item.rb'

describe 'Item has a name and price' do

  it 'has a name and a unit price' do
    item = Item.new('test', 6.99)
    expect(item.unit_price).to eq 6.99
    expect(item.name).to eq 'test'
  end

  it 'has :unity as a default unit' do
    item = Item.new('test', 6.99)
    expect(item.unit).to eq :unity
  end

end
