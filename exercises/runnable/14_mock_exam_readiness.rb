# Companion to exercises/14_mock_exam_readiness.md
# Treat this as a closed-book mini-check before running.

puts 'Task 1'
p([nil, false, 0, ''].count { |x| x })

puts 'Task 2'
x = ['b', 'a', 'c']
p x.sort { |banana, potato| potato <=> banana }

puts 'Task 3'
BANANA_READINESS = 'x'
BANANA_READINESS.upcase!
p BANANA_READINESS

puts 'Task 4'
begin
  p({}.fetch(:x))
rescue KeyError
  p :banana
ensure
  p :potato
end

puts 'Task 5'
def banana_readiness(x:)
  x
end
# TODO: Classify the outcome, then uncomment.
# banana_readiness({ x: 1 })

