require 'pry'

def persistence(num)
  return 0 if num.to_s.split('').length == 1
  count = 1
  product = split_num_product(num)
  while product.to_s.length > 1
    count += 1
    product = split_num_product(product)
  end
  count
end

def split_num_product(num)
  num.to_s.split('').inject(1){|product, n| product * n.to_i}
end
