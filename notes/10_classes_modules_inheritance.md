# 10. Classes, modules, and inheritance

## Classes and instances

`Class#new` allocates an object and invokes its private `initialize` method. Instance variables belong to each object and read as `nil` before assignment.

```ruby
class Banana
  attr_reader :x

  def initialize(x)
    @x = x
  end

  def label
    "B:#{@x}"
  end
end

p Banana.new(3).label       # "B:3"
```

`attr_reader :x` defines `x`; `attr_writer :x` defines `x=`; `attr_accessor :x` defines both.

Class definitions are executable and may reopen an existing class. Defining a method again replaces the earlier implementation.

## Inheritance and `super`

A class with no explicit superclass normally inherits from `Object`. Use `<` to inherit.

```ruby
class Banana
  def label
    "B"
  end
end

class Potato < Banana
  def label
    "#{super}!"
  end
end
```

`super` calls the same method in the next ancestor and forwards all current arguments and the block. `super()` forwards no arguments. `super(x)` forwards only the written arguments.

## Modules and mix-ins

A module groups methods and constants but cannot create instances with `.new`.

```ruby
module X
  def label
    :x
  end
end

class Potato
  include X
end

p Potato.new.label          # :x
```

`include` adds a module's instance methods to the ancestor chain. For basic Silver lookup, Ruby checks the object's class, then modules included by it (most recently included first), then the superclass and its included modules. `ancestors` displays the actual chain.

## Polymorphism

Ruby commonly relies on objects responding to the needed method rather than checking an exact class.

```ruby
def banana(x)
  x.to_s
end
```

Any suitable receiver can be passed. This is often called duck typing.

## Common traps

- `.new` is a class method; `initialize` is an instance method called by it.
- Instance variables are per object and default to `nil` when read.
- `super` and `super()` forward different arguments.
- Reopening a class changes that same class; it does not create a subclass.
- Included methods are instance methods unless another mechanism is used.
- Basic `include` lookup is Silver; `prepend`, refinements, and advanced singleton-class lookup are Gold-level priorities.
