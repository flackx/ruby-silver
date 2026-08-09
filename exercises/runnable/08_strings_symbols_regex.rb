# Companion to exercises/08_strings_symbols_regex.md

puts 'Task 1'
x = 3
p ['#{x}', "#{x}"]

puts 'Task 2'
x = 'bat'
x[1, 1] = 'oo'
p x

puts 'Task 3'
p(/na/ =~ 'banana')

puts 'Task 4'
# TODO: Predict the runtime outcome, then uncomment.
# p 'banana'.sub('a')

puts 'Task 5'
p ['42x'.to_i, 'x42'.to_i]

