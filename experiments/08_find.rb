numbers = [1, 3, 4, 6, 8]

result = numbers.find do |number|
  number.even?
end

p numbers
p result

# Prediction:
# numbers =
# result =



















# 1.even? → false
# 3.even? → false
# 4.even? → true → return 4 and stop