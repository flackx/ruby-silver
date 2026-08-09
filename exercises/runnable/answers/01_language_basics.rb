p(nil || 0) # 0

x = 4
p(case x
  when 1..4 then :banana
  when 4..6 then :potato
end) # :banana

p(3.times { |y| y * 10 }) # 3

# potato = 09 # SyntaxError: invalid octal digit

puts 'banana' if [] # banana

