p([9, 7, 5, 3, 1][-4..-2]) # [7, 5, 3]

x = [1, 2, 3, 4]
y = x
x.reject! { |potato| potato.even? }
p [x, y] # [[1, 3], [1, 3]]

x = Array.new(2, [])
x[0] << :banana
p x # [[:banana], [:banana]]

x = Hash.new([])
x[:banana] << 1
p [x, x[:potato]] # [{}, [1]]

# p({ banana: 1 }.fetch(:potato)) # KeyError

