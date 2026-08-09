# Companion to exercises/01_language_basics.md
# Predict each result before running this file.

puts 'Task 1'
# TODO: Write your prediction in a comment here.
p(nil || 0)

puts 'Task 2'
x = 4
p case x
  when 1..4 then :banana
  when 4..6 then :potato
end

puts 'Task 3'
x = 3.times { |y| y * 10 }
p x

puts 'Task 4'
# TODO: Predict what Ruby does before executing this intentionally invalid literal.
# Uncomment only when you want RubyMine to show the parser error, then comment it again.
# potato = 09

puts 'Task 5'
if []
  puts 'banana'
end

