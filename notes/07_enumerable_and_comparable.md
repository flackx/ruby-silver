# 7. Enumerable and Comparable

Classes that include `Enumerable` provide `each`; `Enumerable` builds traversal methods on top of it. Learn what the block means and what the method returns.

## Transformation and filtering

```ruby
x = [1, 2, 3, 4]
p x.map    { |y| y * 2 }   # [2, 4, 6, 8]
p x.select { |y| y.even? } # [2, 4]
p x.reject { |y| y.even? } # [1, 3]
```

`collect` aliases `map`; `filter` aliases `select`. `filter_map` keeps truthy block results and discards falsey ones. Array's `map!` mutates the Array and returns that receiver.

## Searching and predicates

```ruby
x = [1, 3, 4, 6]
p x.find { |y| y.even? }   # 4
p x.any? { |y| y > 5 }     # true
p x.all? { |y| y > 0 }     # true
p x.none?(&:zero?)          # true
```

`find`/`detect` returns the first match or `nil`. `select` returns every match in an array.

`&:odd?` is a compact form of a block such as `{ |x| x.odd? }`: `&` converts the Symbol's method behavior into the block supplied to the call.

Other common methods include `each_with_index`, `include?`, `min`, `max`, `min_by`, `max_by`, `group_by`, and `each_slice`. The Silver priority is recognizing the receiver, block meaning, and return shape rather than memorizing exotic variants.

## Counting and accumulation

```ruby
p %w[a b a].tally           # {"a"=>2, "b"=>1}
p [1, 2, 3].count(&:odd?)   # 2
p [1, 2, 3].reduce(10, :+)  # 16
```

With no initial value, `reduce` uses the first element as the accumulator. Empty collections therefore need care.

## Sorting

`sort` uses `<=>`. Its block must return a negative integer, zero, or a positive integer. It must not return a boolean.

```ruby
x = [2, 8, 4]
p x.sort { |banana, potato| potato <=> banana } # [8, 4, 2]
p x.sort_by { |banana| -banana }                # [8, 4, 2]
```

`sort.reverse` also yields descending natural order. `sort_by` computes a key for every element.

## Comparable

A class includes `Comparable` and defines `<=>`; the module supplies comparisons such as `<`, `<=`, `>`, and `between?`.

```ruby
class Banana
  include Comparable
  attr_reader :x

  def initialize(x)
    @x = x
  end

  def <=>(other)
    x <=> other.x
  end
end
```

## Common traps

- `map` collects block results; `select` keeps original elements.
- `find` returns one element, not an array.
- Predicate methods test truthiness, not only literal `true`.
- A `sort` comparator returning `true`/`false` is invalid.
- `reverse.sort` is ascending again; `sort.reverse` is descending.
- `reduce` with and without an initial value starts differently.
