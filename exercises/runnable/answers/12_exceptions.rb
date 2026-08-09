class BananaExerciseAnswerError < StandardError; end
class PotatoExerciseAnswerError < BananaExerciseAnswerError; end
begin
  raise PotatoExerciseAnswerError
rescue BananaExerciseAnswerError
  p :banana # first matching parent rescue wins
rescue PotatoExerciseAnswerError
  p :potato
end

begin
  p :banana
rescue RuntimeError
  p :y
else
  p :potato
ensure
  p :x
end

banana_exception_class = RuntimeError
p banana_exception_class

potato_caught_by_bare_rescue = false
p potato_caught_by_bare_rescue

def banana_ensure_return_answer
  raise 'x'
ensure
  return :potato
end
p banana_ensure_return_answer # :potato

