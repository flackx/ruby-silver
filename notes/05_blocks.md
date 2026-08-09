# 5. Blocks

A block is executable code attached to a method call. Use `{ ... }` or `do ... end`; braces bind more tightly when calls are nested.

```ruby
3.times do |x|
  p x
end
```

## Yielding

`yield` executes the attached block. Values passed to `yield` become block parameters.

```ruby
def banana
  yield(4)
  :potato
end

x = banana { |y| y * 2 }
p x                       # :potato
```

The block's value is the value of its last expression, but the method decides whether to use that value. `block_given?` prevents `LocalJumpError` when a block is optional.

```ruby
def banana
  block_given? ? yield : :x
end
```

## Closures and block-local names

Blocks can access existing outer locals. A block parameter shadows an outer variable of the same name. Names after a semicolon in the parameter list are explicitly block-local.

```ruby
x = 1
2.times do |banana; x|
  x = banana
end
p x                       # 1
```

Without `; x`, assigning `x` would change the outer `x`.

## `each`, `map`, and return values

`each` normally returns its receiver. `map` returns an array containing each block result.

```ruby
x = [1, 2]
p x.each { |y| y * 3 }    # [1, 2]
p x.map  { |y| y * 3 }    # [3, 6]
```

## `break` and `next`

`next` skips to the next yield, optionally supplying a value as that block iteration's result. `break` stops the yielding method and can determine the call's value.

```ruby
x = 3.times do |y|
  break :banana if y == 1
end
p x                       # :banana
```

## Common traps

- `each` returns the receiver; `map` collects block results.
- A block parameter does not overwrite an outer variable with the same name.
- An existing outer local can be reassigned inside a block.
- A local first created only inside a block is unavailable outside.
- `yield` without a block raises `LocalJumpError`.
- `{}` and `do...end` have different binding precedence in ambiguous calls.

