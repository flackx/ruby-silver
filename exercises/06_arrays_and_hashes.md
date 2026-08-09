# Exercises 6: Arrays and hashes

Runnable companion: [`runnable/06_arrays_and_hashes.rb`](runnable/06_arrays_and_hashes.rb)

1. `p([9, 7, 5, 3, 1][-4..-2])`

2.
   ```ruby
   x = [1, 2, 3, 4]
   y = x
   x.reject! { |potato| potato.even? }
   p [x, y]
   ```

3.
   ```ruby
   x = Array.new(2, [])
   x[0] << :banana
   p x
   ```

4.
   ```ruby
   x = Hash.new([])
   x[:banana] << 1
   p [x, x[:potato]]
   ```

5. What happens? `p({ banana: 1 }.fetch(:potato))`
