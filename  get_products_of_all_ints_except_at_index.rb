#You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
#Write a function get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.

#For example, given:

def get_products_of_all_ints_except_at_index(arr)
  length = arr.length
  i = 0
  products = []
  length.times do
    multiple = arr.dup
    multiple.delete_at(i)
    products << multiple.inject(:*)
    i += 1
  end
end

get_products_of_all_ints_except_at_index([1, 7, 3, 4])