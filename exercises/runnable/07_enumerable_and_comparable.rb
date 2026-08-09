# Companion to exercises/07_enumerable_and_comparable.md

puts 'Task 1'
p([1, 2, 3].map { |x| x.odd? })

puts 'Task 2'
p([1, 2, 3].select { |x| x.odd? })

puts 'Task 3'
p([1, 3, 4, 6].find { |x| x.even? })

puts 'Task 4'
p([1, 2, 3].reduce(10) { |x, y| x + y })

puts 'Task 5'
# TODO: Predict the runtime outcome of a boolean sort comparator, then uncomment.
# p([3, 1, 2].sort { |x, y| x > y })

