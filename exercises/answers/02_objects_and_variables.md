# Answers 2: Objects and variables

1. `"ruby!"`. Both variables reference the mutated String.
2. `"ruby"`. Reassignment points `banana` at a new String; it does not mutate the old object.
3. `[true, false]`. The arrays have equal contents but distinct identities.
4. `nil`. A local first introduced inside the block does not exist in the outer scope.
5. Ruby warns that the constant was already initialized, then prints `2`. This is not a syntax error.

