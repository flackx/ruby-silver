# Quiz 5: Blocks

1. What does `p([2, 3].map { |x| x + 1 })` print? **Choose one.**
   - A. `[2, 3]`
   - B. `[3, 4]`
   - C. `4`
   - D. `nil`

2. Which statements are true? **Choose two.**
   - A. `each` normally returns its receiver.
   - B. `map` always mutates its receiver.
   - C. A block can read an existing outer local.
   - D. A method body automatically captures its caller's locals.

3. What is printed? **Choose one.**
   ```ruby
   x = 1
   [4].each { |x| p x }
   p x
   ```
   - A. `1`, then `1`
   - B. `4`, then `4`
   - C. `4`, then `1`
   - D. Syntax error

4. Which prevents an absent block from causing `LocalJumpError`? **Choose one.**
   - A. `block_given?`
   - B. `block_exists?`
   - C. `yield?`
   - D. `has_block?`

5. What is the value of the call? **Choose one.**
   ```ruby
   4.times do |x|
     next if x < 3
     break x
   end
   ```
   - A. `3`
   - B. `4`
   - C. `[0, 1, 2, 3]`
   - D. `nil`

