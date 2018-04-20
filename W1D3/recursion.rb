#Problem 1: You have array of integers. Write a recursive solution to find the
#sum of the integers.

def sum_recur(array)
  return 0 if array.empty?
  return array.first if array.length == 1
  array.first + sum_recur(array[1..-1])
end

#Problem 2: You have array of integers. Write a recursive solution to determine
#whether or not the array contains a specific value.

def includes?(array, target)
  return false if array.empty?
  if array.length == 1
    return true if array.first == target
    return false
  end
  includes?(array[0...1], target) || includes?(array[1..-1], target)
end

# Problem 3: You have an unsorted array of integers. Write a recursive solution
# to count the number of occurrences of a specific value.

def num_occur(array, target)
  return 0 if array.empty?
  if array.length == 1
    return 1 if array[0] == target
    return 0
  end
  num_occur(array[0...1], target) + num_occur(array[1..-1], target)
end

# Problem 4: You have array of integers. Write a recursive solution to determine
# whether or not two adjacent elements of the array add to 12.

def add_to_twelve?(arr)
  return false if arr.length <= 1
  if arr.length == 2
    return arr[0] + arr[1] == 12 ?  true : false
  end
  add_to_twelve?(arr[0..1]) || add_to_twelve?(arr[1..-1])
end

# Problem 5: You have array of integers. Write a recursive solution to determine
# if the array is sorted.

def sorted?(array)
  return false if array.empty?
  return true if array.length == 1
  if array.length == 2
    return array[0] <= array[1] ? true : false
  end
  sorted?(array[0..1]) && sorted?(array[1..-1])
end

# Problem 6: Write a recursive function to reverse a string. Don't use any
# built-in #reverse methods!

def reverse(string)
  return string if string.length <= 1
  string[-1] + reverse(string[0...-1])
end
