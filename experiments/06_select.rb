numbers = [1, 2, 3, 4, 5, 6]

result = numbers.select do |number|
  number.even?
end

p numbers
p result

# Prediction:
# numbers =
# result =



















# Block result is nil or false → discard the original item
# Block result is truthy       → keep the original item