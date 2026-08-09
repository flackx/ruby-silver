# Exercises 7: Enumerable and Comparable

Runnable companion: [`runnable/07_enumerable_and_comparable.rb`](runnable/07_enumerable_and_comparable.rb)

1. `p([1, 2, 3].map { |x| x.odd? })`

2. `p([1, 2, 3].select { |x| x.odd? })`

3. `p([1, 3, 4, 6].find { |x| x.even? })`

4. `p([1, 2, 3].reduce(10) { |x, y| x + y })`

5. What happens at runtime? `p([3, 1, 2].sort { |x, y| x > y })`
