# Quiz 4: Methods and arguments

1. What is returned? **Choose one.**
   ```ruby
   def banana
     x = 2
     x + 3
   end
   ```
   - A. `2`
   - B. `3`
   - C. `5`
   - D. `nil`

2. Which call supplies required keywords correctly? **Choose one.**
   ```ruby
   def banana(x:, y:)
     [x, y]
   end
   potato = { x: 1, y: 2 }
   ```
   - A. `banana(*potato)`
   - B. `banana(**potato)`
   - C. `banana(&potato)`
   - D. `banana(potato)`

3. Which definition accepts zero or more positional arguments? **Choose one.**
   - A. `def banana(x:)`
   - B. `def banana(&x)`
   - C. `def banana(*x)`
   - D. `def banana(**x)`

4. What is printed? **Choose one.**
   ```ruby
   def banana(x = 1, y = 2)
     p [x, y]
   end
   banana(5)
   ```
   - A. `[1, 2]`
   - B. `[5, 2]`
   - C. `[5, nil]`
   - D. `ArgumentError`

5. Which situations raise `ArgumentError`? **Choose two.**
   - A. Omitting a required keyword
   - B. Omitting an optional positional argument with a default
   - C. Passing two positional arguments to a method requiring exactly one
   - D. Returning no explicit value

