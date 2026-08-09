def banana_return
  4 * 2
  puts 'x'
end
p banana_return # prints x, then nil

def banana_default(x, y = 3)
  [x, y]
end
p banana_default(2) # [2, 3]

def banana_rest(x, *y)
  [x, y]
end
p banana_rest(*[1, 2, 3]) # [1, [2, 3]]

def banana_keyword(x:)
  x
end
# banana_keyword({ x: 2 }) # ArgumentError: positional Hash is not keywords
# banana_keyword             # ArgumentError: missing keyword x

