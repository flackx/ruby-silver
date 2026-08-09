p([nil, false, 0, ''].count { |x| x }) # 2

x = ['b', 'a', 'c']
p x.sort { |banana, potato| potato <=> banana } # ["c", "b", "a"]

BANANA_READINESS_ANSWER = 'x'
BANANA_READINESS_ANSWER.upcase!
p BANANA_READINESS_ANSWER # 'X', no reassignment warning

begin
  p({}.fetch(:x))
rescue KeyError
  p :banana
ensure
  p :potato
end

def banana_readiness_answer(x:)
  x
end
# banana_readiness_answer({ x: 1 }) # ArgumentError in Ruby 3.1

