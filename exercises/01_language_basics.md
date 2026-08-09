# Exercises 1: Language basics

Runnable companion: [`runnable/01_language_basics.rb`](runnable/01_language_basics.rb)

Predict before running. Give exact `p`/`puts` output, or state **syntax error**, **warning**, or the runtime exception class.

1. `p(nil || 0)`

2.
   ```ruby
   x = 4
   p case x
     when 1..4 then :banana
     when 4..6 then :potato
     end
   ```

3.
   ```ruby
   x = 3.times { |y| y * 10 }
   p x
   ```

4. What happens when Ruby parses `potato = 09`?

5.
   ```ruby
   if []
     puts 'banana'
   end
   ```
