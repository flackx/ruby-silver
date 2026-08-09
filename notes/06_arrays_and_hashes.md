# 6. Arrays and hashes

## Arrays

Arrays are ordered, zero-indexed collections. Negative indexes count from the end.

```ruby
x = [9, 7, 5, 3]
p x[1]          # 7
p x[-1]         # 3
p x[1, 2]       # [7, 5] (start, length)
p x[1..2]       # [7, 5] (index range)
```

Out-of-range single access returns `nil`; slicing has edge cases, so read start and length carefully.

Common mutators:

```ruby
x = [2, 4]
x.push(6)       # [2, 4, 6]
x.unshift(0)    # [0, 2, 4, 6]
x.shift         # removes 0
x.pop           # removes 6
```

Other high-value Array methods include `first`, `last`, `length`/`size`, `empty?`, `include?`, `delete`, `join`, `reverse`, `sort`, and `flatten`. Check whether each returns one element, a new Array, or the receiver.

`+` concatenates into a new array. `concat` mutates. `|` returns a union without duplicates; `&` returns an intersection; `-` removes equal elements found in the right operand.

## Aliasing and nested defaults

Assignment shares the array. `dup` makes a shallow copy, so nested objects remain shared.

`Array.new(3, [])` places the same inner array in all three positions. Use `Array.new(3) { [] }` for distinct inner arrays.

## Hashes

Hashes map keys to values and preserve insertion order.

```ruby
x = { banana: 1, potato: 2 }
p x[:banana]           # 1
p x.fetch(:x, 9)       # 9
p x.key?(:potato)      # true
```

`[]` returns the default value for a missing key, normally `nil`. `fetch` raises `KeyError` without a key, block, or default argument.

`key?`, `has_key?`, `include?`, and `member?` are aliases. `value?` checks values.

Common Hash methods include `keys`, `values`, `length`/`size`, `empty?`, `delete`, `merge`, and `each`. A two-parameter Hash block receives key and value:

```ruby
{ banana: 1 }.each { |x, y| p [x, y] } # [:banana, 1]
```

`Hash.new([])` shares one default object without inserting keys. A block default can create per-key values:

```ruby
x = Hash.new { |potato, banana| potato[banana] = [] }
x[:a] << 1
p x                    # {:a=>[1]}
```

## Destructive filtering

`reject` returns a new collection. `reject!` mutates and returns `nil` if nothing changed. `delete_if` mutates and has no `delete_if!` counterpart.

## Common traps

- `[start, length]` is not `[start, ending_index]`.
- Negative indexes are relative to the end.
- Assignment aliases; `dup` is shallow.
- Several common mutators lack `!`.
- `Array.new(count, object)` repeats one reference.
- A Hash default object is not automatically stored under a missing key.
- `fetch` and `[]` handle missing keys differently.
