# 1. Language basics

## What Ruby executes

Ruby source is made of expressions. An expression produces a value, including assignment, `if`, `case`, and method calls. A line beginning with `#` is a comment and is ignored outside a string.

```ruby
banana = 2       # assignment evaluates to 2
potato = if banana > 1
           "yes"
         else
           "no"
         end
p potato         # "yes"
```

`p` prints an inspection-oriented representation and returns its argument. `puts` prints a human-readable line and returns `nil`.

## Literals

Common Silver literals include:

```ruby
12                 # Integer
1.5                # Float
true               # TrueClass
nil                # NilClass
"banana"           # String
:banana             # Symbol
[1, 2]             # Array
{ banana: 1 }      # Hash
1..3               # inclusive Range
1...3              # end-exclusive Range
```

Ruby 3.1 character literals such as `?a` evaluate to a one-character String (`"a"`), not an integer character code.

An integer beginning with `0` is traditionally octal: `025` is decimal `21`. Prefer explicit `0o25` in real programs, but recognize the exam form.

`Range#to_a` converts a finite enumerable Range to an Array, preserving whether the endpoint is included.

## Truthiness

Only `false` and `nil` are falsey. Everything else—including `0`, `""`, and `[]`—is truthy.

```ruby
p("yes") if 0       # "yes"
p("yes") if []      # "yes"
```

## Identifiers and keywords

Local variable names begin with a lowercase letter or underscore and may then contain letters, digits, or underscores. They cannot be reserved words. Examples of keywords include `class`, `def`, `if`, `nil`, `true`, and `end`; ordinary methods such as `each` and `puts` are not keywords.

## Branching

`if`/`elsif` uses the first truthy condition. `unless` runs for a falsey condition and should usually remain simple. The ternary operator is `condition ? first : second`.

`case` uses `===` to test each `when` from top to bottom. Ranges therefore work naturally, and the first matching branch wins.

```ruby
x = 3
p case x
  when 1..3 then :banana
  when 3..5 then :potato
  else :x
  end
# :banana
```

## Loops

Silver expects basic `while`, `until`, `times`, and collection iteration. `Integer#times` yields from zero through one less than the receiver.

```ruby
3.times { |x| p x } # 0, 1, 2 on separate lines

x = 0
x += 1 while x < 3
p x                  # 3

x -= 1 until x == 0
p x                  # 0
```

## Common traps

- Empty collections and zero are truthy.
- `1..3` includes `3`; `1...3` does not.
- `case` stops at the first matching `when`.
- `puts` returns `nil`, which can become a method or expression result.
- A leading zero can change an integer literal's base.
- A runtime exception, a syntax error, and a warning are distinct outcomes.
