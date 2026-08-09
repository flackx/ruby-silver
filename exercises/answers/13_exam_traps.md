# Answers 13: Exam traps

1. `[true, [1, 2]]`. `map!` mutates and returns the same Array receiver.
2. `RuntimeError`. Boolean `|` does not short-circuit, so `raise` executes.
3. It prints `xnil` with no newline between them. `print` returns `nil`, then `p` prints `nil` and a newline.
4. `true`. For Hash, `include?` is an alias of `key?`.
5. `1`. `super()` forwards no arguments, so the superclass default is used.

