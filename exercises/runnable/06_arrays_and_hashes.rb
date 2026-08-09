# Companion to exercises/06_arrays_and_hashes.md

puts 'Task 1'
p([9, 7, 5, 3, 1][-4..-2])

puts 'Task 2'
x = [1, 2, 3, 4]
y = x
x.reject! { |potato| potato.even? }
p [x, y]

puts 'Task 3'
x = Array.new(2, [])
x[0] << :banana
p x

puts 'Task 4'
x = Hash.new([])
x[:banana] << 1
p [x, x[:potato]]

puts 'Task 5'
# TODO: Predict the runtime outcome, then uncomment.
# p({ banana: 1 }.fetch(:potato))

