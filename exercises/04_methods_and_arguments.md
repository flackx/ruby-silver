# Exercises 4: Methods and arguments

Runnable companion: [`runnable/04_methods_and_arguments.rb`](runnable/04_methods_and_arguments.rb)

1.
   ```ruby
   def banana
     4 * 2
     puts 'x'
   end
   p banana
   ```

2.
   ```ruby
   def banana(x, y = 3)
     [x, y]
   end
   p banana(2)
   ```

3.
   ```ruby
   def banana(x, *y)
     [x, y]
   end
   p banana(*[1, 2, 3])
   ```

4.
   ```ruby
   def banana(x:)
     x
   end
   p banana({ x: 2 })
   ```

5. What happens? `def banana(x:); x; end; banana`
