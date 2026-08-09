numbers = [1, 2, 3, 4, 5, 6]

result = numbers.reject do |number|
  number.even?
end

p numbers
p result

# Prediction:
# numbers =
# result =




















# select → keep items when the block is truthy
# reject → discard items when the block is truthy