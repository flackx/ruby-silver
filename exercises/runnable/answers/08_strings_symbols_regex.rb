x = 3
p ['#{x}', "#{x}"] # ["#{x}", "3"]

x = 'bat'
x[1, 1] = 'oo'
p x # 'boot'

p(/na/ =~ 'banana') # 2

# p 'banana'.sub('a') # ArgumentError: missing replacement and no block

p ['42x'.to_i, 'x42'.to_i] # [42, 0]

