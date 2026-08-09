# Companion to exercises/10_classes_modules_inheritance.md

puts 'Task 1'
class BananaRunnable
  def initialize
    @x = 3
  end

  attr_reader :x
end
p BananaRunnable.new.x

puts 'Task 2'
class BananaParent
  def x(y)
    y
  end
end
class PotatoChild < BananaParent
  def x(y)
    super
  end
end
p PotatoChild.new.x(4)

puts 'Task 3'
module BananaMixin
  def x
    :banana
  end
end
class PotatoRunnable
  include BananaMixin
end
p PotatoRunnable.new.x

puts 'Task 4'
class XRunnable
  def x
    1
  end
end
class XRunnable
  def x
    2
  end
end
p XRunnable.new.x

puts 'Task 5'
module PotatoModule
end
# TODO: Predict the runtime outcome, then uncomment.
# PotatoModule.new

