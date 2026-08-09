# Exercises 12: Exceptions

Runnable companion: [`runnable/12_exceptions.rb`](runnable/12_exceptions.rb)

1.
   ```ruby
   begin
     1 / 0
   rescue StandardError
     p :banana
   rescue ZeroDivisionError
     p :potato
   end
   ```

2.
   ```ruby
   begin
     p :banana
   rescue RuntimeError
     p :y
   else
     p :potato
   ensure
     p :x
   end
   ```

3. What exception class does `raise 'banana'` create?

4. Does bare `rescue` catch `SystemExit` raised by `exit`?

5.
   ```ruby
   def banana
     raise 'x'
   ensure
     return :potato
   end
   p banana
   ```
