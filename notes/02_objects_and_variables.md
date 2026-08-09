# 2. Objects and variables

## Variables hold references

A variable refers to an object; it is not a box containing an independent copy. Assignment copies the reference.

```ruby
banana = "ruby"
potato = banana
banana.upcase!
p potato            # "RUBY"
```

Reassignment changes which object a variable references. It does not change the old object.

```ruby
banana = "ruby"
potato = banana
banana = "silver"
p potato            # "ruby"
```

## Equality and identity

`==` normally compares values. `equal?` tests whether two references point to the same object.

```ruby
x = "ruby"
y = "ruby"
p x == y             # true
p x.equal?(y)        # false
```

Immediate immutable values such as integers and symbols may share identity; exam questions about reference mutation normally use strings, arrays, or hashes.

## Mutation and non-mutation

A mutating method changes its receiver. Many dangerous variants end in `!`, such as `upcase!` and `reject!`, but the suffix is a naming convention, not a complete mutation test: `Array#push` and `String#concat` mutate without `!`, and `Hash#delete_if` has no `!` form.

## Variable kinds

```ruby
banana = 1       # local
@banana = 2      # instance
class Potato
  @@banana = 3   # class variable, valid in a class/module context
end
$banana = 4      # global
BANANA = 5       # constant
```

Local variables are determined partly by parsing. If Ruby sees an assignment in the current scope, a read may produce `nil` even if execution never reached that assignment.

```ruby
true || potato = 1
p potato            # nil
```

## Scope boundaries

- Blocks can read and reassign existing outer local variables.
- A block parameter shadows an outer local with the same name.
- A local first created inside a block is not available after the block.
- Method bodies do not close over surrounding local variables.

```ruby
x = 1
2.times do |x|
  x = 9
  potato = 4
end
p x                 # 1
p defined?(potato)  # nil
```

`defined?(expression)` returns a descriptive string when the expression is defined, otherwise `nil`; it does not evaluate the expression normally.

## Constants

Reassigning an already initialized constant is allowed but normally emits a warning. Mutating the object referenced by a constant is not constant reassignment.

```ruby
BANANA = "ruby"
BANANA.upcase!
p BANANA             # "RUBY", no constant-reassignment warning
```

## Common traps

- Assignment aliases a mutable object; it does not duplicate it.
- `==` and `equal?` answer different questions.
- `!` does not universally mean “the only mutating method.”
- Block parameters shadow; other captured outer locals can change.
- A method body cannot directly see the caller's locals.
- Constants are references, not frozen objects.
