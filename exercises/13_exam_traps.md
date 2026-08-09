# Exercises 13: Exam traps

Runnable companion: [`runnable/13_exam_traps.rb`](runnable/13_exam_traps.rb)

1.
   ```ruby
   x = [1, 2]
   y = x.map! { |potato| potato }
   p [x.equal?(y), x]
   ```

2.
   ```ruby
   x = true
   x | raise('banana')
   ```

3.
   ```ruby
   def banana
     3
     print 'x'
   end
   p banana
   ```

4.
   ```ruby
   x = { banana: 1 }
   p x.include?(:banana)
   ```

5.
   ```ruby
   class Banana
     def x(y = 1)
       y
     end
   end
   class Potato < Banana
     def x(y = 2)
       super()
     end
   end
   p Potato.new.x
   ```
