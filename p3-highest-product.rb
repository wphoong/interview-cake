# Given an array of integers, find the highest product
# you can get from three of the integers.
# The input array_of_ints will always have at least 
# three integers.

array = [-100, -20, 4, 3, 5, 6, 2]
# array = [-100, -20]


def highest_product(arr)
  product = {}
    
  arr.map { |x| x.abs }.sort.each_with_index do |y,i|
    product[i] = y
  end

  product[arr.length-1] * product[arr.length-2] * product[arr.length-3]

end


def highest_product2(arr)
  raise Exception, 'Less than 3 items!' if arr.length < 3

  lowest = [arr[0], arr[1]].min
  highest = [arr[0], arr[1]].max

  highest_product_of_2 = [arr[0] * arr[1]].max
  highest_product_of_3 = [arr[0] * arr[1] * arr[2]].max

  lowest_product_of_2 = [arr[0] * arr[1]].min

  arr.each_with_index do |current, index|
    next if index < 2

    highest_product_of_3 = [ 
      highest_product_of_3,
      highest_product_of_2 * current,
      lowest_product_of_2 * current
    ].max

    highest_product_of_2 = [
      highest_product_of_2,
      lowest * current,
      highest * current
    ].max

    lowest_product_of_2 = [
      lowest_product_of_2,
      lowest * current,
      highest * current
    ].min

    highest = [highest, current].max
    lowest = [lowest, current].min

  end

  highest_product_of_3

end

def highest_product3(arr)
  raise Error if arr.length < 3

  highest = [arr[0], arr[1]].max
  lowest = [arr[0], arr[1]].min

  highest_product_of_2 = arr[0] * arr[1]
  lowest_product_of_2 = arr[0] * arr[1]

  highest_product_of_3 = arr[0] * arr[1] * arr[2]

  arr.each_with_index do |current, index|
    next if index < 2

    highest_product_of_3 = [
      highest_product_of_3, 
      current * highest_product_of_2,
      current * lowest_product_of_2
    ].max

    highest_product_of_2 = [
      highest_product_of_2,
      current * highest,
      current * lowest
    ].max

    lowest_product_of_2 = [
      lowest_product_of_2,
      current * highest,
      current * lowest
    ].min

    highest = [highest, current].max

    lowest = [lowest, current].min

  end

  highest_product_of_3

end

puts highest_product2(array)
