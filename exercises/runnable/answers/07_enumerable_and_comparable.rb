p([1, 2, 3].map { |x| x.odd? })       # [true, false, true]
p([1, 2, 3].select { |x| x.odd? })    # [1, 3]
p([1, 3, 4, 6].find { |x| x.even? }) # 4
p([1, 2, 3].reduce(10) { |x, y| x + y }) # 16

# On Ruby 3.1.7 this raises NoMethodError because sort expects a three-way
# comparison value rather than true/false.
# p([3, 1, 2].sort { |x, y| x > y })

