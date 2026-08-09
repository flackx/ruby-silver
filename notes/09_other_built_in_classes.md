# 9. Other built-in classes

## Numeric classes

Integers have arbitrary precision. Integer arithmetic remains integer arithmetic unless a Float participates or a conversion such as `fdiv` is used.

```ruby
p 5 / 2          # 2
p 5 / 2.0        # 2.5
p 5.divmod(2)    # [2, 1]
p 3.even?        # false
```

`Integer("42")` performs strict conversion and raises `ArgumentError` for invalid text; `"42x".to_i` returns `42`.

## Ranges

Ranges support `include?`, `cover?`, and conversion to arrays for enumerable values.

```ruby
p ("a".."c").to_a       # ["a", "b", "c"]
p (1...4).include?(4)    # false
```

## Object and Kernel

Most ordinary classes inherit from `Object`, which includes `Kernel`. That is why calls such as `puts`, `p`, `print`, `open`, and `loop` are broadly available as private methods.

`nil?` is defined for all objects and is true only for `nil`. `class`, `is_a?`, `instance_of?`, and `respond_to?` provide basic introspection.

```ruby
p "x".is_a?(Object)          # true
p "x".instance_of?(Object)  # false
```

## File and IO

Common open modes:

- `r` — read-only, beginning; default
- `r+` — read/write, beginning
- `w` — write-only, truncate or create
- `w+` — read/write, truncate or create
- `a` — write-only, append or create
- `a+` — read/write, writes append, create

The block form of `File.open` closes the file automatically. `read` reads remaining content; `gets` reads a line; `seek(n)` moves to byte offset `n`; `write` returns the number of bytes written.

## Dir and File path methods

```ruby
p Dir.pwd
p File.basename("a/b.rb")  # "b.rb"
p File.dirname("a/b.rb")   # "a"
p File.extname("a/b.rb")   # ".rb"
p File.join("a", "b")     # "a/b" on Unix-like systems
```

`Dir.chdir`, `Dir.entries`, `Dir.exist?`, and `Dir.delete` belong to `Dir`. `File.rename` and `File.basename` belong to `File`, not `Dir`.

## Common traps

- `Integer()` is strict; `to_i` is permissive.
- `is_a?` includes ancestors; `instance_of?` requires the exact class.
- Default file mode is `r`.
- `w`/`w+` truncate; `a`/`a+` append writes.
- `seek` positions by bytes from the start unless another origin is supplied.
- Do not swap `File` path methods with `Dir` directory-management methods.

