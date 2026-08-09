# Answers 12

1. **B.** Bare rescue defaults to StandardError.
2. **A, C.** The body runs and successful completion selects `else`; the rescue path is skipped.
3. **C.** `ensure` is the cleanup path.
4. **C.** Specific children precede broad parents so they remain reachable.
5. **A, C.** A String message creates RuntimeError, and ensure runs during SystemExit unwinding.
