class Item
attr_reader :name, :unit_price, :unit

  def initialize(name, unit_price, unit = :unity)
    @name = name
    @unit_price = unit_price
    @unit = unit
  end

end
