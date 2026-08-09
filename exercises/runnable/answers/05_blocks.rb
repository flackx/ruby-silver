p([1, 2].each { |x| x * 5 }) # [1, 2]
p([1, 2].map { |x| x * 5 })  # [5, 10]

x = 8
[1].each { |x| x = 3 }
p x # 8

x = 5.times do |y|
  break :potato if y == 2
end
p x # :potato

def banana_yield
  yield
end
# banana_yield # LocalJumpError: no block given

