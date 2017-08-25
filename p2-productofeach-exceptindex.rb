# Write a function get_products_of_all_ints_except_at_index() 
# that takes an array of integers and returns an array of the products.

array = [1, 7, 3, 4]

def get_products_of_all_ints_except_at_index(arr)
  raise IndexError, 'Need more than two integers' if arr.length < 2

  product_arr = []

  product = 1

  arr.each_with_index do |current, index|
    product_arr[index] = product
    product *= arr[index]
  end

  product = 1

  i = arr.length - 1
  while i >= 0
    product_arr[i] *= product
    product *= arr[i]
    i -= 1
  end

  product_arr

end

puts get_products_of_all_ints_except_at_index(array)







