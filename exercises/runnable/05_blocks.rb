# Companion to exercises/05_blocks.md
# Write predictions beside each TODO before running.

puts 'Task 1'
# TODO: Prediction:
p([1, 2].each { |x| x * 5 })

puts 'Task 2'
# TODO: Prediction:
p([1, 2].map { |x| x * 5 })

puts 'Task 3'
x = 8
[1].each { |x| x = 3 }
p x

puts 'Task 4'
x = 5.times do |y|
  break :potato if y == 2
end
p x

puts 'Task 5'
def banana_yield
  yield
end
# TODO: Predict the runtime outcome, then uncomment.
# banana_yield

