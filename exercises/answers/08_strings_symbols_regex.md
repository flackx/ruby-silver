# Answers 8: Strings, symbols, and regular expressions

1. `["#{x}", "3"]`. Single quotes do not interpolate; double quotes do.
2. `"boot"`. The one-character slice at index 1 is replaced by a two-character String.
3. `2`. `=~` returns the starting index of the match.
4. `ArgumentError`. Without a block, `sub` needs both a pattern and a replacement.
5. `[42, 0]`. `to_i` consumes a valid numeric prefix and otherwise returns zero.
