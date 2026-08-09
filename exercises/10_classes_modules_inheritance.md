# Exercises 10: Classes, modules, and inheritance

Runnable companion: [`runnable/10_classes_modules_inheritance.rb`](runnable/10_classes_modules_inheritance.rb)

1.
   ```ruby
   class Banana
     def initialize
       @x = 3
     end
     attr_reader :x
   end
   p Banana.new.x
   ```

2.
   ```ruby
   class Banana
     def x(y)
       y
     end
   end
   class Potato < Banana
     def x(y)
       super
     end
   end
   p Potato.new.x(4)
   ```

3.
   ```ruby
   module Banana
     def x
       :banana
     end
   end
   class Potato
     include Banana
   end
   p Potato.new.x
   ```

4.
   ```ruby
   class Banana
     def x
       1
     end
   end
   class Banana
     def x
       2
     end
   end
   p Banana.new.x
   ```

5. What happens? `module Banana; end; Banana.new`
