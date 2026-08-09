# Answers 3: Operators

1. `[3, 3.5]`. Integer division returns an Integer; `fdiv` returns a Float.
2. `[false, true]`. `or` is below assignment, while `||` is above assignment.
3. `nil`. Short-circuiting skips the assignment, but parsing has established `potato` as a local variable.
4. `[1, 2, 3]`. Array union removes duplicates while preserving first-seen order.
5. `TypeError`. The receiver is Integer, and numeric coercion cannot coerce the String. The reverse order, `'x' * 3`, works.

