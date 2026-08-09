# Answers 5: Blocks

1. `[1, 2]`. `each` returns its receiver.
2. `[5, 10]`. `map` collects the block values.
3. `8`. The block parameter shadows the outer `x`.
4. `:potato`. `break` terminates `times` and supplies the call's value.
5. `LocalJumpError` at runtime because `yield` has no attached block.

