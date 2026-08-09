# Quiz 11: `self`, constants, and scope

1. What is `self` inside an instance method? **Choose one.**
   - A. The class object
   - B. The receiving instance
   - C. Always `main`
   - D. The method Symbol

2. Which defines a class method while inside `class Banana`? **Choose one.**
   - A. `def Banana#x`
   - B. `def self.x`
   - C. `def @x`
   - D. `class_method :x`

3. Which boundaries create new local-variable scopes? **Choose two.**
   - A. `def`
   - B. `class`
   - C. `times` block
   - D. `each` block

4. Inside an instance method with an `x=` writer, which invokes the writer? **Choose one.**
   - A. `x = 3`
   - B. `self.x = 3`
   - C. `@x=(3)`
   - D. `x := 3`

5. What normally happens here? **Choose one.**
   ```ruby
   X = 1
   X = 2
   ```
   - A. Syntax error
   - B. Runtime `NameError`
   - C. Warning, with `X` rebound to 2
   - D. No warning, and `X` remains 1

