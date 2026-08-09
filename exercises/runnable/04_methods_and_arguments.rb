# Companion to exercises/04_methods_and_arguments.md

puts 'Task 1'
def banana_return
  4 * 2
  puts 'x'
end
p banana_return

puts 'Task 2'
def banana_default(x, y = 3)
  [x, y]
end
p banana_default(2)

puts 'Task 3'
def banana_rest(x, *y)
  [x, y]
end
p banana_rest(*[1, 2, 3])

puts 'Task 4'
def banana_keyword(x:)
  x
end
# TODO: Predict the Ruby 3.1 runtime outcome, then uncomment.
# p banana_keyword({ x: 2 })

puts 'Task 5'
# TODO: Predict the outcome when the required keyword is omitted, then uncomment.
# banana_keyword

