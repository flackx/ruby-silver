# p Integer('42x') # ArgumentError: invalid integer text

p(('a'...'d').to_a) # ["a", "b", "c"]
p ['x'.is_a?(Object), 'x'.instance_of?(Object)] # [true, false]

potato = %w[w w+]
p potato

# p Dir.basename('a/b') # NoMethodError; basename belongs to File

