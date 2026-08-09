x = [1, 2]
y = x.map! { |potato| potato }
p [x.equal?(y), x] # [true, [1, 2]]

# true | raise('banana') # RuntimeError; | does not short-circuit

def banana_print_return_answer
  3
  print 'x'
end
p banana_print_return_answer # prints xnil and a newline

x = { banana: 1 }
p x.include?(:banana) # true

class BananaSuperRunnableAnswer
  def x(y = 1)
    y
  end
end
class PotatoSuperRunnableAnswer < BananaSuperRunnableAnswer
  def x(y = 2)
    super()
  end
end
p PotatoSuperRunnableAnswer.new.x # 1

