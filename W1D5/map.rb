class Map
  def initialize
    @map = []
  end

  def assign(key,value)
    unless in_map?(key)
      map.push([key,value])
    else
      map.each {|el| el[1] = value if el.first == key}
    end
  end

  def lookup(key)
    map.select{|el| el.first == key}.first.last
  end

  def remove(key)
    map.reject! {|el| el.first == key}
  end

  def show
    map
  end

  private
  attr_accessor :map

  def in_map?(key)
    map.any? {|el| el.first == key}
  end

end
