require './lib/bulk_pricing_rule.rb'

describe 'bulk pricing rules' do
  let(:item_price) { 3.4 }
  let(:package_price) { 12.3 }
  let(:subject) { BulkPricingRule.new 'item name', item_price, 4, package_price}

  it 'calculates correct price for 4 items' do
    expect(subject.price_for(4)).to eq(package_price)
  end

  it 'calculates the correct price for 8 items' do
    expect(subject.price_for(8)).to eq(2*package_price)
  end

  it 'calculates the correct price for 9 items' do
    expect(subject.price_for(9)).to eq(2*package_price + item_price)
  end

end
