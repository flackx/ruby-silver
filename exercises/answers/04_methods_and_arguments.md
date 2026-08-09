# Answers 4: Methods and arguments

1. It prints `x`, then `nil` through `p`. The final `puts` returns `nil`.
2. `[2, 3]`. The omitted positional argument uses its default.
3. `[1, [2, 3]]`. Call-side `*` expands the array and definition-side `*y` gathers the remainder.
4. `ArgumentError` in Ruby 3.1. A positional Hash is not automatically treated as keywords; call `banana(**{ x: 2 })` or `banana(x: 2)`.
5. `ArgumentError` for a missing required keyword `x`.

