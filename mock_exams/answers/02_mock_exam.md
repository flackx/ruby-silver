# Mock Exam 2 answers

1. **A.** Everything after `#` on the line is a comment.
2. **B.** `nil` is falsey, so the `else` value 2 becomes the `if` expression's value.
3. **D.** A leading-zero integer is octal and digit 8 is invalid.
4. **A, D.** Zero and an empty Array are truthy.
5. **B.** A local first introduced only inside the block is not defined outside it.
6. **B.** `dup` is shallow, so both outer Arrays contain the same inner Array.
7. **B, D.** Repeated occurrences of the same Symbol share identity, and `nil` is the single `nil` object; separately created mutable literals do not.
8. **B.** Constant reassignment warns but succeeds.
9. **B.** The left side is false, so `and` short-circuits before the second assignment.
10. **A.** Array difference removes every element equal to an element in the right Array.
11. **C.** `**` is exponentiation.
12. **A, D.** Numeric value equality crosses these numeric classes; equal-content Arrays compare with `==`.
13. **A.** Zero is truthy, so the first branch's value is returned.
14. **C.** Both explicit positional arguments replace the defaults.
15. **A.** `*y` gathers remaining positional arguments.
16. **C.** The method does not accept the unknown keyword `y`.
17. **B.** `block_given?` checks before yielding.
18. **C.** The block result is ignored and the method's final expression is `:x`.
19. **B.** `next 0` supplies zero as that iteration's mapped value.
20. **B.** Index -3 is the element 4, and length 2 selects 4 and 6.
21. **C.** `concat` mutates and returns its Array receiver.
22. **C.** The default block inserts a new Array for `:a`, then it is mutated.
23. **C.** `filter_map` discards falsey results and keeps the transformed 4.
24. **C.** Without an initial value, 2 is the first accumulator: 2 × 3 × 4.
25. **B, C.** At least one element is even, and no element is zero.
26. **B.** Negated numeric keys sort larger numbers first.
27. **B.** `%q` is non-interpolating.
28. **B.** `gsub` replaces the two non-overlapping `aa` matches.
29. **A.** `delete` removes every dollar-sign character.
30. **B.** The anchored match begins at index zero; `=~` returns the index.
31. **B.** A Ruby 3.1 character literal evaluates to a one-character String.
32. **C.** `Integer()` rejects a partial conversion.
33. **B.** The three-dot Range excludes 5.
34. **A, C.** String is an Object descendant and exactly a String instance.
35. **B.** `File.join` inserts the platform path separator.
36. **C.** `write` returns the number of bytes written; these ASCII characters occupy three bytes.
37. **C.** Reading an uninitialized instance variable returns `nil`.
38. **A, C.** `attr_reader` and `attr_accessor` both define a reader named `x`; only the accessor also defines `x=`.
39. **C.** A named module does not have the class-instance constructor behavior.
40. **B.** The second class body reopens Banana and replaces method `x`.
41. **A.** `super()` passes no argument, so the superclass default 5 applies.
42. **B.** Inside the class body, `self` is Banana.
43. **C.** A class body cannot capture the outer local variable.
44. **A.** `::` selects constant `X` from module Banana.
45. **A, B.** NoMethodError and RuntimeError descend from StandardError; the system-level choices do not.
46. **B.** The body prints `a`, successful `else` prints `c`, and ensure prints `d`.
47. **A.** The specific child rescue appears first and matches.
48. **A.** Hash `include?` checks keys.
49. **C.** `reject!` returns `nil` when it makes no change.
50. **C.** `print` writes `x` and returns `nil`, which `p` then writes with a newline.
