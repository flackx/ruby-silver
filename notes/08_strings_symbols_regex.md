# 8. Strings, symbols, and regular expressions

## String literals and interpolation

Double-quoted strings process interpolation and escapes such as `\n`. Single-quoted strings normally process only backslash and an escaped single quote specially.

```ruby
x = 3
p "banana #{x}"     # "banana 3"
p 'banana #{x}'       # "banana #{x}"
```

Adjacent string literals concatenate at parse time. `%q(...)` behaves like single quotes; `%Q(...)` behaves like double quotes. `%w(...)` creates words as strings; `%i(...)` creates symbols without interpolation.

## Indexing and mutation

```ruby
x = "banana"
p x[1]              # "a" in Ruby 3.1
p x[1, 3]           # "ana"
x[1, 2] = "oo"
p x                 # "booana"
```

`slice` is an alias for `[]` and accepts indexes, ranges, and regular expressions. A regular-expression slice returns the matched substring or `nil`.

`upcase`, `sub`, and `gsub` return new strings. Their bang variants attempt to mutate. `sub` replaces the first match; `gsub` replaces all matches. `delete_prefix` removes a matching prefix; `delete` removes all characters selected by its arguments.

Other common String methods include `length`/`size`, `empty?`, `include?`, `start_with?`, `end_with?`, `split`, `chars`, `strip`, `chomp`, `chop`, `reverse`, and `replace`. `chop` removes the final character or line ending; `chomp` removes a matching record separator. `replace` mutates the receiver to contain another String.

`String#to_i` reads a valid integer prefix and stops at the first invalid character. It returns `0` when no valid prefix exists.

## Symbols

Symbols are immutable identifier-like objects. Repeated occurrences of the same symbol normally have the same identity. Hash keyword-style syntax uses symbol keys:

```ruby
x = { banana: 1 }
p x                  # {:banana=>1}
```

`to_sym` converts a String to a Symbol; `to_s` converts a Symbol to a String.

## Regular expressions

`=~` returns the integer index of a match or `nil`. `match?` returns a boolean without setting match globals.

```ruby
p(/na/ =~ "banana")             # 2
p(/\Aba/.match?("banana"))      # true
```

Important constructs:

- `.` — almost any character
- `*`, `+`, `?` — repetition
- `[abc]` — one listed character
- `[^abc]` — one character not listed
- `\d`, `\w`, `\s` — common character classes
- `\A` and `\z` — absolute start and end of string
- `^` and `$` — line boundaries
- `|` — alternation
- `(...)` — grouping
- `/i` — ignore case

Group alternation when anchors must apply to every alternative: `/\A(?:Ruby|ruby)\z/`.

## Common traps

- Ruby 3.1 string indexing returns a one-character String, not an integer codepoint.
- Single quotes do not interpolate.
- `sub` replaces one occurrence; `gsub` replaces all.
- `delete("$")` removes every `$`; `delete_prefix("$")` removes only a prefix.
- `to_i` may return a partial numeric prefix without raising.
- `=~` returns an index, and index `0` is truthy.
- `\A`/`\z` are safer whole-string anchors than `^`/`$`.
- Ungrouped `|` can make anchors apply to only one side.
