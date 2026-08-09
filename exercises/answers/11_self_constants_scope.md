# Answers 11: `self`, constants, and scope

1. `Banana`. In the class body, `self` is the class object.
2. `nil`. `x = 4` creates a local variable; it does not call `x=`. `self.x = 4` would call the setter.
3. `NameError`. A class body is a new local-variable scope and cannot see outer `x`.
4. `[1]` with no constant-reassignment warning. The referenced Array is mutated; the constant is not rebound.
5. `3`. `::` accesses the constant through the module namespace.

