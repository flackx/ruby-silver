# Exercises 2: Objects and variables

Runnable companion: [`runnable/02_objects_and_variables.rb`](runnable/02_objects_and_variables.rb)

1.
   ```ruby
   banana = 'ruby'
   potato = banana
   banana << '!'
   p potato
   ```

2.
   ```ruby
   banana = 'ruby'
   potato = banana
   banana = banana.upcase
   p potato
   ```

3.
   ```ruby
   x = [1]
   y = [1]
   p [x == y, x.equal?(y)]
   ```

4.
   ```ruby
   1.times { potato = 3 }
   p defined?(potato)
   ```

5. Classify the result:
   ```ruby
   BANANA = 1
   BANANA = 2
   p BANANA
   ```
