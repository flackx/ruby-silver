# Exercises 11: `self`, constants, and scope

Runnable companion: [`runnable/11_self_constants_scope.rb`](runnable/11_self_constants_scope.rb)

1.
   ```ruby
   class Banana
     p self
   end
   ```

2.
   ```ruby
   class Banana
     attr_reader :x
     def x=(value)
       @x = value
     end
     def change
       x = 4
     end
   end
   banana = Banana.new
   banana.change
   p banana.x
   ```

3.
   ```ruby
   x = 3
   class Banana
     p x
   end
   ```

4.
   ```ruby
   BANANA = []
   BANANA << 1
   p BANANA
   ```

5.
   ```ruby
   module Banana
     X = 3
   end
   p Banana::X
   ```
