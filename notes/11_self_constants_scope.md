# 11. `self`, constants, and scope

## `self`

`self` is the current receiver/context.

- At the top level, `self` is the special `main` object.
- In a class body, `self` is the class object.
- In an instance method, `self` is the receiving instance.

```ruby
class Banana
  p self                    # Banana

  def current
    self
  end
end

x = Banana.new
p x.current.equal?(x)      # true
```

`def self.x` in a class body defines a method on the class object.

```ruby
class Banana
  def self.x
    :potato
  end
end
p Banana.x                 # :potato
```

An explicit receiver is required for setters because `x = value` otherwise looks like local-variable assignment; use `self.x = value` inside the object.

## Local scope gates

`def`, `class`, and `module` bodies create new local-variable scopes. Blocks do not create the same hard boundary and can close over existing locals.

## Constants and namespaces

Class and module names are constants. `::` selects a constant from a namespace.

```ruby
module Banana
  X = 3
end
p Banana::X                # 3
```

Constant lookup depends primarily on lexical nesting plus ancestors. `module Banana::Potato` does not establish the same lexical nesting as separately nested `module Banana; module Potato` bodies, so avoid assuming they are identical.

`::X` starts lookup at `Object`. `const_defined?` and `const_get` exist, but dynamic constant APIs are not a Silver focus.

## Common traps

- `self` changes between top level, class body, and instance method.
- A bare setter-shaped assignment creates/reassigns a local unless written with a receiver.
- `def`, `class`, and `module` do not capture surrounding locals.
- Constants can reference mutable objects.
- Reassignment warns; mutation is different.
- Basic lexical and ancestor lookup matters; refinements and advanced metaprogramming do not.

