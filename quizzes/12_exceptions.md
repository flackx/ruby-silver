# Quiz 12: Exceptions

1. What does unqualified `rescue` catch by default? **Choose one.**
   - A. `Exception` and every descendant
   - B. `StandardError` and descendants
   - C. Only `RuntimeError`
   - D. Only `SyntaxError`

2. In a `begin`/`rescue`/`else` expression with no `ensure` clause, which sections run when no exception occurs? **Choose two.**
   - A. The protected body
   - B. `rescue`
   - C. `else`
   - D. An exception handler outside the expression

3. In addition to the protected body, which section always runs when present? **Choose one.**
   - A. `rescue`
   - B. `else`
   - C. `ensure`
   - D. The first matching class definition

4. Which rescue should normally appear first? **Choose one.**
   - A. `rescue StandardError`
   - B. `rescue Exception`
   - C. `rescue ZeroDivisionError`
   - D. Order never matters

5. Which statements are true? **Choose two.**
   - A. `raise 'x'` raises `RuntimeError`.
   - B. `1 / 0` is a syntax error.
   - C. `ensure` can run while `exit` unwinds.
   - D. Bare `rescue` catches `SystemExit`.
