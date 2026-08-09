# Exercises 5: Blocks

Runnable companion: [`runnable/05_blocks.rb`](runnable/05_blocks.rb)

1. `p([1, 2].each { |x| x * 5 })`

2. `p([1, 2].map { |x| x * 5 })`

3.
   ```ruby
   x = 8
   [1].each { |x| x = 3 }
   p x
   ```

4.
   ```ruby
   x = 5.times do |y|
     break :potato if y == 2
   end
   p x
   ```

5.
   ```ruby
   def banana
     yield
   end
   banana
   ```
