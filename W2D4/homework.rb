fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']


# O(n^2)
def sluggish_octopus(fishes)
  largest = fishes.first
  fishes.each do |fish|
    fishes.each do |fish2|
      largest = fish if fish.length > fish2.length && fish2.length > largest.length
    end
  end
  largest
end

# O(nlogn)

def dominant_octopus(fish)
  merge_sort(fish).last
end

def merge_sort(arr)
  return arr if arr.length <= 1
  mid = arr.length / 2
  left = merge_sort(arr.drop(mid))
  right = merge_sort(arr.take(mid))
  merge(left, right)
end

def merge(left, right)
  return left if right.empty?
  return right if left.empty?
  if left.first.length > right.first.length
    [right.first] + merge(left, right.drop(1))
  else
    [left.first] + merge(left.drop(1), right)
  end
end

# O(n)
def clever_octopus(fish)
  largest = fish.first
  fish.drop(1).each do |f|
    largest = f if f.length > largest.length
  end
  largest
end


def slow_dance(direction, tiles)
  tiles.length.times do |i|
    return i if tiles[i] == direction
  end
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

tiles_hash = Hash.new

tiles_array.each_with_index do |dir, idx|
  tiles_hash[dir] = idx
end

def fast_dance(direction, tiles)
  tiles[direction]
end
