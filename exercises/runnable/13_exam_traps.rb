# Companion to exercises/13_exam_traps.md

puts 'Task 1'
x = [1, 2]
y = x.map! { |potato| potato }
p [x.equal?(y), x]

puts 'Task 2'
# TODO: Predict whether Boolean | short-circuits, then uncomment.
# true | raise('banana')

puts 'Task 3'
def banana_print_return
  3
  print 'x'
end
p banana_print_return

puts 'Task 4'
x = { banana: 1 }
p x.include?(:banana)

puts 'Task 5'
class BananaSuperRunnable
  def x(y = 1)
    y
  end
end
class PotatoSuperRunnable < BananaSuperRunnable
  def x(y = 2)
    super()
  end
end
p PotatoSuperRunnable.new.x

