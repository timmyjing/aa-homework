class LRUCache
  def initialize(size)
    @size = size
    @cache = []
  end

  def count
    # returns number of elements currently in cache
    cache.count
  end

  def add(el)
    # adds element to cache according to LRU principle
    if has?(el)
      cache.delete(el)
      add(el)
      return
    end
    cache.shift if full?
    cache.push(el)
  end

  def show
    # shows the items in the cache, with the LRU item first
    print cache
    nil
  end

  private
  # helper methods go here!
  attr_reader :cache, :size

  def full?
    count == size
  end

  def has?(el)
    cache.include?(el)
  end
end

if __FILE__ == $PROGRAM_NAME
  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  johnny_cache.show

end
