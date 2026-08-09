# Quiz 10: Classes, modules, and inheritance

1. Which method is automatically called during `Banana.new`? **Choose one.**
   - A. `new`
   - B. `initialize`
   - C. `create`
   - D. `init`

2. What is the normal superclass of a class declared without `< ...`? **Choose one.**
   - A. `Class`
   - B. `Module`
   - C. `Object`
   - D. No superclass

3. Which statements about `include Banana` are true? **Choose two.**
   - A. It makes Banana's instance methods available through lookup.
   - B. It instantiates Banana.
   - C. Banana appears in the ancestor chain.
   - D. It copies Banana's constants into local variables.

4. What is printed? **Choose one.**
   ```ruby
   class Banana
     def x(y = 1)
       y
     end
   end
   class Potato < Banana
     def x(y = 2)
       super
     end
   end
   p Potato.new.x
   ```
   - A. `1`
   - B. `2`
   - C. `nil`
   - D. `ArgumentError`

5. Which define readable and writable `x` instance attributes? **Choose one.**
   - A. `attr_reader :x`
   - B. `attr_writer :x`
   - C. `attr_accessor :x`
   - D. `attribute :x`

