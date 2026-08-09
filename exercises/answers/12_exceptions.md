# Answers 12: Exceptions

1. `:banana`. `ZeroDivisionError` inherits from `StandardError`, and the first matching rescue wins.
2. `:banana`, `:potato`, and `:x` on separate lines. No exception means `else` runs; `ensure` always runs.
3. `RuntimeError`.
4. No. Bare `rescue` catches `StandardError` descendants; `SystemExit` is outside that subtree.
5. `:potato`. The `return` in `ensure` suppresses the pending `RuntimeError`. This is valid but dangerous style.

