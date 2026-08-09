a = "ruby"
b = a
c = "ruby"

puts "a compared with b:"
p a == b
p a.equal?(b)

puts
puts "a compared with c:"
p a == c
p a.equal?(c)

# a == b          =
# a.equal?(b)     =
#
# a == c          =
# a.equal?(c)     =