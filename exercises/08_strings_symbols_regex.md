# Exercises 8: Strings, symbols, and regular expressions

Runnable companion: [`runnable/08_strings_symbols_regex.rb`](runnable/08_strings_symbols_regex.rb)

1.
   ```ruby
   x = 3
   p ['#{x}', "#{x}"]
   ```

2.
   ```ruby
   x = 'bat'
   x[1, 1] = 'oo'
   p x
   ```

3. `p(/na/ =~ 'banana')`

4. What happens at runtime? `p 'banana'.sub('a')`

5. `p ['42x'.to_i, 'x42'.to_i]`
