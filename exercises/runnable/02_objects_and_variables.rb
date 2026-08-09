# Companion to exercises/02_objects_and_variables.md
# Predict identity, mutation, and warnings before running.

puts 'Task 1'
banana = 'ruby'
potato = banana
banana << '!'
p potato

puts 'Task 2'
banana = 'ruby'
potato = banana
banana = banana.upcase
p potato

puts 'Task 3'
x = [1]
y = [1]
p [x == y, x.equal?(y)]

puts 'Task 4'
1.times { potato = 3 }
p defined?(potato)

puts 'Task 5'
# TODO: Before running, decide whether this is an error, a warning, or ordinary output.
BANANA_OBJECTS = 1
BANANA_OBJECTS = 2
p BANANA_OBJECTS

