# Answers 14: Mock-exam readiness

1. `2`. `count` keeps values whose block result is truthy; zero and the empty String are truthy.
2. `["c", "b", "a"]`. Reversing the operands to `<=>` sorts descending.
3. `"X"` with no constant-reassignment warning; the String object is mutated.
4. `:banana` and then `:potato`. `fetch` raises `KeyError`; `ensure` still runs.
5. Runtime `ArgumentError`: Ruby 3.1 does not convert the positional Hash to required keywords automatically.

