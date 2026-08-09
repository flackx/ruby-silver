# 13. Exam traps and integration review

This section combines rules already introduced. It does not add Gold-level features.

## Classify before calculating

For every code question, decide which outcome family applies:

1. Valid code with ordinary output
2. Valid code with a warning and output
3. Syntax error before execution
4. Runtime exception after execution begins
5. No output or `nil`

Then trace objects, scope, and return values.

## High-value checklist

- Only `nil` and `false` are falsey.
- Variables hold references; mutation is visible through aliases.
- A final `puts` returns `nil`.
- Block parameters shadow; captured outer locals can change.
- `&&`/`||` differ in precedence from `and`/`or`.
- `&`/`|` do not short-circuit.
- `*`, `**`, and `&` have distinct argument roles.
- `each`, `map`, `select`, `reject`, and `find` return different shapes.
- Bang and non-bang methods can differ both in mutation and in return value.
- `Array#[]` start/length differs from range indexing.
- String substitution, deletion, and indexing methods are easy distractor targets.
- A `sort` block returns a three-way comparison, not a boolean.
- `new`, `initialize`, `include`, and `super` have precise roles.
- Constants can be reassigned with a warning and can refer to mutable objects.
- Rescue order follows the exception hierarchy; `ensure` still runs.
- File modes and `File` versus `Dir` APIs are memorization points.

## Exam workflow

1. Mark whether the prompt says **choose one** or **choose two**.
2. Read the requested representation: `puts` output differs from `p` output.
3. Track receiver class for every operator or method.
4. Mark every mutation and every shared reference.
5. Identify scope boundaries before tracing assignments.
6. Check method existence and arity before computing output.
7. For exceptions, find the first matching rescue and then process `ensure`.
8. Revisit questions that depend on a tiny API fact after completing easier reasoning questions.

## Scope guardrail

Do not divert preparation into Rails, gems, pattern matching, advanced `Proc`/lambda differences, refinements, `prepend`, metaprogramming, concurrency, or Gold standard-library topics. Silver rewards exact mastery of a smaller core.

