# 3. Operators

Most Ruby operators are method calls with special syntax. The receiver matters: `"ha" * 2` works because `String#*` exists, while `2 * "ha"` raises `TypeError` through numeric coercion.

## Arithmetic and comparison

```ruby
p 7 / 2       # 3 (Integer division)
p 7.fdiv(2)   # 3.5
p 2**3        # 8
p 5 % 2       # 1
p 2 <=> 5     # -1
```

`<=>` returns a negative integer, zero, or a positive integer and supports sorting and `Comparable`.

## Equality

- `==` compares values according to the receiver.
- `eql?` is usually stricter and is used with `hash` for Hash keys.
- `equal?` compares identity.
- `===` is used by `case`; its behavior depends on the receiver, such as a Range or Regexp.

## Logical operators

`&&` and `||` short-circuit and return an operand rather than forcing `true` or `false`.

```ruby
p nil || "banana"     # "banana"
p "banana" && 4       # 4
```

Unary `!` negates truthiness and always returns a boolean. Applying it twice (`!!x`) converts any object's truthiness to literal `true` or `false`.

`and` and `or` also short-circuit but have much lower precedence, especially below assignment. Prefer parentheses when reading exam code carefully.

```ruby
x = true and false    # parsed as (x = true) and false
p x                   # true

y = true && false     # parsed as y = (true && false)
p y                   # false
```

`&` and `|` are methods and do not short-circuit. For arrays, `&` is intersection and `|` is union without duplicates.

## Conditional assignment

```ruby
x = nil
x ||= 3       # x becomes 3
y = false
y ||= 4       # y becomes 4 because false is falsey
```

`x ||= value` is broadly like `x || (x = value)`, but indexed attributes and setters have evaluation details beyond Silver.

The safe-navigation operator `&.` invokes the following method only when its receiver is not `nil`; when the receiver is `nil`, the expression returns `nil`.

```ruby
x = nil
p x&.to_s       # nil
```

## Ranges and indexing operators

`..` includes the endpoint; `...` excludes it. `[]` and `[]=` are methods with special syntax.

## Common traps

- Integer division truncates toward negative infinity according to Ruby integer division rules; ordinary positive examples yield an integer.
- Logical operators return operands.
- `and`/`or` precedence differs from `&&`/`||`.
- `&` and `|` evaluate both sides.
- Operand order chooses the receiving class's method.
- `=` assignment is not equality; `==` is not identity.
