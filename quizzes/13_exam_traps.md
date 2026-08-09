# Quiz 13: Exam traps

1. What is printed? **Choose one.**
   ```ruby
   x = false
   x ||= 3
   p x
   ```
   - A. `false`
   - B. `3`
   - C. `nil`
   - D. Syntax error

2. Which return a new collection without changing the receiver? **Choose two.**
   - A. `map`
   - B. `reject`
   - C. `map!`
   - D. `delete_if`

3. What is printed? **Choose one.**
   ```ruby
   p({ a: 1 }.include?(:a))
   ```
   - A. `true`
   - B. `false`
   - C. `nil`
   - D. `NoMethodError`

4. Which outcome is correct? **Choose one.**
   ```ruby
   X = 'a'
   X << 'b'
   p X
   ```
   - A. Constant-reassignment warning and `"ab"`
   - B. No constant-reassignment warning and `"ab"`
   - C. `FrozenError`
   - D. Syntax error

5. Which are runtime exceptions rather than syntax errors? **Choose two.**
   - A. Calling an undefined method
   - B. Writing `09` as an integer literal
   - C. Dividing an Integer by zero
   - D. Omitting `end` from a class definition

