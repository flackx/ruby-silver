class BananaRunnableAnswer
  def initialize
    @x = 3
  end
  attr_reader :x
end
p BananaRunnableAnswer.new.x # 3

class BananaParentAnswer
  def x(y)
    y
  end
end
class PotatoChildAnswer < BananaParentAnswer
  def x(y)
    super
  end
end
p PotatoChildAnswer.new.x(4) # 4

module BananaMixinAnswer
  def x
    :banana
  end
end
class PotatoRunnableAnswer
  include BananaMixinAnswer
end
p PotatoRunnableAnswer.new.x # :banana

class XRunnableAnswer
  def x
    1
  end
end
class XRunnableAnswer
  def x
    2
  end
end
p XRunnableAnswer.new.x # 2

module PotatoModuleAnswer
end
# PotatoModuleAnswer.new # NoMethodError

