# frozen_string_literal: true

puts "TEST 1: MUTATION"

a = String.new("ruby")
b = a

a.upcase!

p a
p b

puts
puts "TEST 2: REASSIGNMENT"

x = String.new("ruby")
y = x

x = x.upcase

p x
p y