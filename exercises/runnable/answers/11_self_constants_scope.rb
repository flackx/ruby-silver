class BananaSelfRunnableAnswer
  p self # BananaSelfRunnableAnswer
end

class PotatoSetterRunnableAnswer
  attr_reader :x
  def x=(value)
    @x = value
  end
  def change
    x = 4
  end
end
potato = PotatoSetterRunnableAnswer.new
potato.change
p potato.x # nil; x is a local variable inside change

# x = 3
# class BananaScopeRunnableAnswer
#   p x # NameError: class bodies do not close over outer locals
# end

BANANA_SCOPE_RUNNABLE_ANSWER = []
BANANA_SCOPE_RUNNABLE_ANSWER << 1
p BANANA_SCOPE_RUNNABLE_ANSWER # [1], no reassignment warning

module PotatoNamespaceRunnableAnswer
  X = 3
end
p PotatoNamespaceRunnableAnswer::X # 3

