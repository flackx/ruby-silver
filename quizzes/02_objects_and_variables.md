# Quiz 2: Objects and variables

1. What is printed? **Choose one.**
   ```ruby
   x = ['a']
   y = x
   y << 'b'
   p x
   ```
   - A. `["a"]`
   - B. `["a", "b"]`
   - C. `["b"]`
   - D. A runtime exception

2. Which expressions specifically test object identity? **Choose one.**
   - A. `x == y`
   - B. `x.eql?(y)`
   - C. `x.equal?(y)`
   - D. `x === y`

3. Which operations mutate their receiver? **Choose two.**
   - A. `x.upcase`
   - B. `x.upcase!`
   - C. `x.concat('a')`
   - D. `x + 'a'`

4. What is printed? **Choose one.**
   ```ruby
   x = 1
   1.times do
     x = 2
   end
   p x
   ```
   - A. `1`
   - B. `2`
   - C. `nil`
   - D. `NameError`

5. Which statement is true? **Choose one.**
   - A. Constants make referenced objects immutable.
   - B. Constant reassignment is always a syntax error.
   - C. Constant reassignment normally warns, while mutating the referenced object is different.
   - D. Constants must contain only numbers.

