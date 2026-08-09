# Companion to exercises/11_self_constants_scope.md

puts 'Task 1'
class BananaSelfRunnable
  p self
end

puts 'Task 2'
class PotatoSetterRunnable
  attr_reader :x

  def x=(value)
    @x = value
  end

  def change
    x = 4
  end
end
potato = PotatoSetterRunnable.new
potato.change
p potato.x

puts 'Task 3'
# TODO: Predict the runtime outcome, then uncomment this complete snippet.
# x = 3
# class BananaScopeRunnable
#   p x
# end

puts 'Task 4'
BANANA_SCOPE_RUNNABLE = []
BANANA_SCOPE_RUNNABLE << 1
p BANANA_SCOPE_RUNNABLE

puts 'Task 5'
module PotatoNamespaceRunnable
  X = 3
end
p PotatoNamespaceRunnable::X

