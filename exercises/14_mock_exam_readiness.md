# Exercises 14: Mock-exam readiness

Runnable companion: [`runnable/14_mock_exam_readiness.rb`](runnable/14_mock_exam_readiness.rb)

Complete these without notes. They sample several sections rather than introducing new material.

1. `p([nil, false, 0, ''].count { |x| x })`

2.
   ```ruby
   x = ['b', 'a', 'c']
   p x.sort { |banana, potato| potato <=> banana }
   ```

3.
   ```ruby
   BANANA = 'x'
   BANANA.upcase!
   p BANANA
   ```

4.
   ```ruby
   begin
     p({}.fetch(:x))
   rescue KeyError
     p :banana
   ensure
     p :potato
   end
   ```

5. State the outcome category: `def banana(x:); x; end; banana({x: 1})`
