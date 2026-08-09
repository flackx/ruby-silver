# 4. Methods and arguments

## Definition, call, and return value

```ruby
def banana(x)
  x * 2
end

p banana(3)       # 6
```

A method returns the value of its last evaluated expression unless `return` exits earlier. `puts` returns `nil`, so a final `puts` makes the method return `nil`.

Parentheses are often optional, but use them when precedence could be unclear.

## Positional arguments

```ruby
def banana(x, y = 2)
  [x, y]
end

p banana(1)       # [1, 2]
p banana(1, 4)    # [1, 4]
```

`*potato` gathers remaining positional arguments into an array in a definition and expands an array in a call.

```ruby
def banana(*potato)
  potato
end
p banana(1, 2)    # [1, 2]

x = [1, 2]
p banana(*x)      # [1, 2]
```

## Keyword arguments

Required keywords end with `:` and have no default. Optional keywords have defaults.

```ruby
def banana(x:, y: 2)
  [x, y]
end

p banana(x: 1)    # [1, 2]
```

In Ruby 3.1, positional Hash arguments and keyword arguments are separated. `**` expands a Hash into keywords.

```ruby
def banana(x:, y: 2)
  [x, y]
end

x = { x: 1, y: 3 }
p banana(**x)     # [1, 3]
```

`**potato` in a definition gathers extra keywords into a Hash.

## Block argument

`&potato` captures an attached block as a `Proc`, while `block_given?` reports whether a block was supplied. Detailed `Proc`/lambda behavior is Gold-oriented; Silver needs the connection between method calls and blocks.

## Common traps

- The last expression, not the last “calculation,” determines implicit return.
- Wrong argument counts and missing required keywords raise `ArgumentError` at runtime.
- A plain Hash is not automatically converted into keywords in Ruby 3.1.
- `*` handles positional arguments; `**` handles keywords; `&` handles a block.
- Local variables outside a method are not automatically visible inside it.
