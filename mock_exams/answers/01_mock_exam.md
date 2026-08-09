# Mock Exam 1 answers

1. **C, D.** Only `nil` and `false` are falsey.
2. **A, C.** `class` and `true` are keywords; the others are methods.
3. **B.** An underscore may start a local name and digits may follow.
4. **A.** Double quotes support the global-variable interpolation shorthand.
5. **B.** Leading-zero `031` is octal, decimal 25.
6. **B.** The nonempty String is not empty, so the false branch is selected.
7. **B.** `1...5` excludes 5; `5..8` includes it.
8. **A.** The block parameter shadows outer `x`.
9. **C.** The yielded values 0, 1, 2, 3 add 6 to the initial 1.
10. **C.** `each_char` yields Strings and String `*` repeats them.
11. **A.** `tally` counts equal String elements into a Hash.
12. **B.** `gsub` replaces every match.
13. **C.** No digit substring is found, and safe navigation preserves `nil`.
14. **B.** Omitted `x` uses 1 and supplied `y` uses 7.
15. **B.** `**` expands the Hash as keywords.
16. **A, C.** Both anchor the entire alternative correctly.
17. **B.** `+=` rebinds the constant, producing a warning and value 6.
18. **B.** The referenced Array is mutated; the constant is not rebound.
19. **A, C.** Instance variables use `@`; globals use `$`.
20. **A.** Assignment shared one Array and `delete_if` mutated it.
21. **B.** `shift` removes 1 and `push` adds 4.
22. **C.** Truthy left `||` skips its right operand.
23. **C.** The assignment is skipped but parsing establishes local `x` as `nil`.
24. **A, B.** Both select indexes 1 and 2.
25. **A, B.** `filter` aliases `select`.
26. **A.** `to_i` stops at the first invalid base-10 character.
27. **A, B.** Both alias Hash key membership.
28. **A, C.** `reject!` and `delete_if` mutate; `delete_if!` does not exist.
29. **B.** Array `|` is an ordered union without duplicates.
30. **B.** `%i` creates a non-interpolated Symbol array.
31. **A.** The parent rescue appears first and matches the child exception.
32. **C.** Rescue prints `a`; ensure then prints `b`.
33. **C.** Ordinary classes inherit from Object.
34. **A.** Reopening Object makes the instance method available to its descendants.
35. **B.** Class `new` calls instance method `initialize`.
36. **C.** `.new` is called on the class object.
37. **C.** `super` returns 1, then 2 is added.
38. **B.** `delete_prefix` removes only the leading dollar sign.
39. **C.** `to_a` converts the Range into an Array.
40. **B.** `find` returns the first matching element.
41. **A, C.** Both produce descending numeric order.
42. **B.** Reversing `<=>` operands reverses the ordering.
43. **B.** Offset 2 is before `c`; `gets` reads through the line ending.
44. **A.** Read-only from the beginning is the default.
45. **B, C.** Both write modes beginning with `w` truncate.
46. **C, D.** `basename` and `rename` are File methods, not Dir methods.
47. **A.** Index 7 begins at `r` and length 4 selects `ruby`.
48. **B.** One character is replaced by the two-character String `oo`.
49. **C.** Integer multiplication cannot coerce a String; receiver order matters.
50. **A.** Included module instance methods participate in lookup.

