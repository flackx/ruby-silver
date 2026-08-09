# Answers 10: Classes, modules, and inheritance

1. `3`. `.new` invokes `initialize`, and the reader returns the instance variable.
2. `4`. Bare `super` forwards the current method's argument.
3. `:banana`. `include` places the module's instance methods in the lookup chain.
4. `2`. Reopening the same class and redefining `x` replaces the earlier method.
5. `NoMethodError`. Modules cannot be instantiated with `.new`.

