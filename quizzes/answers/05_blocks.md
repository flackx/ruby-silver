# Answers 5

1. **B.** `map` collects the two block values.
2. **A, C.** `each` returns the receiver and blocks close over existing locals.
3. **C.** The block parameter shadows rather than overwrites outer `x`.
4. **A.** `block_given?` reports whether the method received a block.
5. **A.** The first three iterations use `next`; at 3, `break 3` supplies the call value.

