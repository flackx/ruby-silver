# Companion to exercises/12_exceptions.md

puts 'Task 1'
class BananaExerciseError < StandardError; end
class PotatoExerciseError < BananaExerciseError; end
begin
  raise PotatoExerciseError
rescue BananaExerciseError
  p :banana
rescue PotatoExerciseError
  p :potato
end

puts 'Task 2'
begin
  p :banana
rescue RuntimeError
  p :y
else
  p :potato
ensure
  p :x
end

puts 'Task 3'
# TODO: Replace nil with the exception class raised by: raise 'banana'
banana_exception_class = nil
p banana_exception_class

puts 'Task 4'
# TODO: Replace nil with true or false: does bare rescue catch SystemExit?
potato_caught_by_bare_rescue = nil
p potato_caught_by_bare_rescue

puts 'Task 5'
def banana_ensure_return
  raise 'x'
ensure
  return :potato
end
p banana_ensure_return

