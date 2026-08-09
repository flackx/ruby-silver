# 12. Exceptions

## Raising and rescuing

`raise` creates or raises an exception. With a message only, it raises `RuntimeError`. Application-style exceptions normally inherit from `StandardError`.

```ruby
class BananaError < StandardError; end

begin
  raise BananaError, "x"
rescue BananaError => potato
  p potato.message          # "x"
end
```

Rescue clauses are checked from top to bottom, and an exception matches a clause for its class or an ancestor. Put specific subclasses before general parents.

An unqualified `rescue` catches `StandardError` and descendants, not every `Exception` descendant. `SystemExit`, `Interrupt`, and similar system-level exceptions are intentionally outside that default.

## `else` and `ensure`

`else` runs only when the protected body finishes without an exception. `ensure` runs whether execution succeeds, raises, returns, or exits.

```ruby
begin
  p :banana
rescue
  p :x
else
  p :potato
ensure
  p :done
end
```

This prints `:banana`, `:potato`, and `:done` on separate lines.

## Method-level rescue

A method body can contain `rescue`, `else`, and `ensure` without an explicit `begin`.

```ruby
def banana
  1 / 0
rescue ZeroDivisionError
  :potato
end
```

## Return values

A `begin` expression normally takes the value of the executed body, rescue, or else section. A `return` in `ensure` overrides an earlier value or exception, but this is dangerous style and an exam-worthy control-flow trap.

## Common traps

- `ZeroDivisionError` is a runtime exception, not a syntax error.
- A parent rescue before a child rescue captures the child.
- Bare `rescue` means `StandardError`, not `Exception`.
- `else` is the no-exception path; `ensure` is the always-run path.
- `exit` raises `SystemExit`, but `ensure` still runs while unwinding.
- Returning from `ensure` suppresses an outstanding exception or earlier return.

