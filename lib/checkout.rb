class Shop

def initialize(pricing_rules = Array.new)
  @pricing_rules = pricing_rules
  @items = Array.new
end

def checkout(item)
  @items << item
end

def total
  checkout_total = 0
  @pricing_rules.each do |rule|
    item_name = rule.item_name #from pricing_rule.rb

    items_special = @items.select {|i| i.name == item_name}
    items_special.each{|i| @items.delete(i)}
    checkout_total += rule.price_for(items_special.count)
  end
  checkout_total += @items.inject(0) {|sum, n| sum + (n.unit_price) }
  return checkout_total
end

end
