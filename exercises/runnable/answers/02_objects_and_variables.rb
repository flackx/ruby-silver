banana = 'ruby'
potato = banana
banana << '!'
p potato # 'ruby!'

banana = 'ruby'
potato = banana
banana = banana.upcase
p potato # 'ruby'

x = [1]
y = [1]
p [x == y, x.equal?(y)] # [true, false]

1.times { potato = 3 }
p defined?(potato) # nil

BANANA_OBJECTS_ANSWER = 1
BANANA_OBJECTS_ANSWER = 2 # warning: already initialized constant
p BANANA_OBJECTS_ANSWER # 2

