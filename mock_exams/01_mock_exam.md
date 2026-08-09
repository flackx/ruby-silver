# Mock Exam 1

**Ruby:** 3.1.x · **Questions:** 50 · **Time:** 90 minutes · **Target:** 85%+

Choose exactly the requested number of answers. Do not run Ruby.

1. Which values are truthy? **Choose two.**
   - A. `nil`  B. `false`  C. `0`  D. `""`

2. Which are Ruby keywords? **Choose two.**
   - A. `class`  B. `puts`  C. `true`  D. `each`

3. Which is a valid local variable name? **Choose one.**
   - A. `4x`  B. `_4x`  C. `end`  D. `x-y`

4. What is printed? **Choose one.**
   ```ruby
   $banana = 'SILVER'
   puts "Ruby #$banana"
   ```
   - A. `Ruby SILVER`  B. `Ruby #$banana`  C. `SILVER`  D. Syntax error

5. What does `p 031` print? **Choose one.**
   - A. `31`  B. `25`  C. `031`  D. Syntax error

6. What does `p('x'.empty? ? :banana : :potato)` print? **Choose one.**
   - A. `:banana`  B. `:potato`  C. `false`  D. `nil`

7. What is printed? **Choose one.**
   ```ruby
   x = 5
   p case x
     when 1...5 then :banana
     when 5..8 then :potato
     else :x
     end
   ```
   - A. `:banana`  B. `:potato`  C. `:x`  D. `nil`

8. What is printed? **Choose one.**
   ```ruby
   x = :outside
   [:inside].each { |x| p x }
   p x
   ```
   - A. `:inside`, then `:outside`  B. `:inside` twice  C. `:outside` twice  D. `NameError`

9. What is printed? **Choose one.**
   ```ruby
   x = 1
   4.times { |y| x += y }
   p x
   ```
   - A. `4`  B. `6`  C. `7`  D. `10`

10. What does `p('ab'.each_char.map { |x| x * 3 })` print? **Choose one.**
    - A. `[97, 98]`  B. `["a", "b"]`  C. `["aaa", "bbb"]`  D. Runtime exception

11. What does `p(%w[x y x x].tally)` print? **Choose one.**
    - A. `{"x"=>3, "y"=>1}`  B. `{:x=>3, :y=>1}`  C. `[3, 1]`  D. `4`

12. Which fills the blank to print `potato potato`? **Choose one.**
    ```ruby
    puts 'banana banana'.____(/banana/, 'potato')
    ```
    - A. `sub`  B. `gsub`  C. `replace`  D. `delete`

13. What is printed? **Choose one.**
    ```ruby
    p 'abc'.slice(/\d+/)&.to_i
    ```
    - A. `0`  B. `false`  C. `nil`  D. `NoMethodError`

14. What is printed? **Choose one.**
    ```ruby
    def banana(x: 1, y: 2)
      p [x, y]
    end
    banana(y: 7)
    ```
    - A. `[1, 2]`  B. `[1, 7]`  C. `[nil, 7]`  D. `ArgumentError`

15. Which fills the blank? **Choose one.**
    ```ruby
    def banana(x:, y:)
      [x, y]
    end
    potato = { x: 3, y: 4 }
    p banana(____potato)
    ```
    - A. `*`  B. `**`  C. `&`  D. `||`

16. Which regexes match only complete Strings `Cat` or `cat`? **Choose two.**
    - A. `/\A[Cc]at\z/`  B. `/\ACat|cat\z/`  C. `/\A(?:Cat|cat)\z/`  D. `/Cat|cat/`

17. What happens? **Choose one.**
    ```ruby
    BANANA = 4
    BANANA += 2
    p BANANA
    ```
    - A. Prints `4` only  B. Warning, then prints `6`  C. `NameError`  D. Syntax error

18. What happens? **Choose one.**
    ```ruby
    POTATO = ['a']
    POTATO << 'b'
    p POTATO
    ```
    - A. Warning and `["a", "b"]`  B. No reassignment warning and `["a", "b"]`  C. `FrozenError`  D. Syntax error

19. Which statements are true? **Choose two.**
    - A. Instance variables begin with `@`.
    - B. Class variables begin with `$`.
    - C. Globals begin with `$`.
    - D. Constants must be entirely uppercase.

20. What is printed? **Choose one.**
    ```ruby
    x = [1, 2, 3, 4]
    y = x
    y.delete_if(&:odd?)
    p [x, y]
    ```
    - A. `[[2, 4], [2, 4]]`  B. `[[1, 2, 3, 4], [2, 4]]`  C. `[[1, 3], [2, 4]]`  D. `nil`

21. What is printed? **Choose one.**
    ```ruby
    x = [1, 2, 3]
    x.shift
    x.push(4)
    p x
    ```
    - A. `[1, 2, 3, 4]`  B. `[2, 3, 4]`  C. `[1, 2, 4]`  D. `[2, 3]`

22. Which fills the blank so `raise` is skipped? **Choose one.**
    ```ruby
    true ____ raise('x')
    puts 'ok'
    ```
    - A. `|`  B. `&`  C. `||`  D. `&&`

23. What is printed? **Choose one.**
    ```ruby
    true or x = 3
    p x
    ```
    - A. `3`  B. `true`  C. `nil`  D. `NameError`

24. Which produce `[6, 4]`? **Choose two.**
    ```ruby
    x = [8, 6, 4, 2]
    ```
    - A. `x[1, 2]`  B. `x[1..2]`  C. `x[-2..-1]`  D. `x[1, 3]`

25. Which methods return `[1, 3]`? **Choose two.**
    ```ruby
    x = [1, 2, 3, 4]
    # x.____ { |y| y.odd? }
    ```
    - A. `select`  B. `filter`  C. `map`  D. `find`

26. What does `p('17z9'.to_i)` print? **Choose one.**
    - A. `17`  B. `179`  C. `0`  D. `ArgumentError`

27. Which are valid aliases for checking a Hash key? **Choose two.**
    - A. `include?`  B. `member?`  C. `contain?`  D. `value?`

28. Which mutate `x` to `[4, 5]`? **Choose two.**
    ```ruby
    x = [1, 4, 2, 5]
    ```
    - A. `x.reject! { |y| y < 4 }`  B. `x.reject { |y| y < 4 }`
    - C. `x.delete_if { |y| y < 4 }`  D. `x.delete_if! { |y| y < 4 }`

29. Which fills the blank to print `[1, 2, 3]`? **Choose one.**
    ```ruby
    p([1, 2] ____ [2, 3])
    ```
    - A. `&`  B. `|`  C. `||`  D. `+` only

30. What does `p(%i[banana potato])` print? **Choose one.**
    - A. `["banana", "potato"]`  B. `[:banana, :potato]`  C. `"banana potato"`  D. Syntax error

31. What is printed? **Choose one.**
    ```ruby
    class BananaError < StandardError; end
    class PotatoError < BananaError; end
    begin
      raise PotatoError
    rescue BananaError
      p :banana
    rescue PotatoError
      p :potato
    end
    ```
    - A. `:banana`  B. `:potato`  C. Both  D. Unhandled exception

32. What is printed? **Choose one.**
    ```ruby
    begin
      raise 'x'
    rescue RuntimeError
      print 'a'
    ensure
      print 'b'
    end
    ```
    - A. `a`  B. `b`  C. `ab`  D. Nothing

33. What is the normal superclass of `class Banana; end`? **Choose one.**
    - A. `Class`  B. `Module`  C. `Object`  D. `BasicObject`

34. What is printed? **Choose one.**
    ```ruby
    class Object
      def banana
        :x
      end
    end
    p 3.banana
    ```
    - A. `:x`  B. `nil`  C. `NoMethodError`  D. Syntax error

35. Which method fills the blank? **Choose one.**
    ```ruby
    class Banana
      attr_reader :x
      def ____(x)
        @x = x
      end
    end
    p Banana.new(3).x
    ```
    - A. `new`  B. `initialize`  C. `create`  D. `self`

36. Which creates an instance? **Choose one.**
    - A. `Banana()`  B. `new Banana`  C. `Banana.new`  D. `Banana#new`

37. What is printed? **Choose one.**
    ```ruby
    class Banana
      def x
        1
      end
    end
    class Potato < Banana
      def x
        super + 2
      end
    end
    p Potato.new.x
    ```
    - A. `1`  B. `2`  C. `3`  D. `NoMethodError`

38. Which prints `name$`? **Choose one.**
    ```ruby
    puts '$name$'.____('$')
    ```
    - A. `delete`  B. `delete_prefix`  C. `chop`  D. `replace`

39. Which fills the blank to print `[2, 3, 4]`? **Choose one.**
    ```ruby
    p((2..4).____)
    ```
    - A. `to_s`  B. `to_i`  C. `to_a`  D. `chars`

40. What does `p([1, 4, 6].find { |x| x > 2 })` print? **Choose one.**
    - A. `[4, 6]`  B. `4`  C. `true`  D. `6`

41. Which sort `x` descending? **Choose two.**
    - A. `x.sort.reverse`  B. `x.reverse.sort`  C. `x.sort_by { |y| -y }`  D. `x.sort`

42. Which comparator sorts numbers descending? **Choose one.**
    - A. `sort { |x, y| x > y }`  B. `sort { |x, y| y <=> x }`
    - C. `sort { |x, y| x <=> y }`  D. `sort { |x, y| x >= y }`

43. A file contains `abcdef\n`. After `file.seek(2)`, what does `file.gets` return? **Choose one.**
    - A. `"ab"`  B. `"cdef\n"`  C. `"bcdef\n"`  D. `"c"`

44. What mode does `File.open('x')` use by default? **Choose one.**
    - A. `r`  B. `r+`  C. `w`  D. `a`

45. Which modes truncate an existing file? **Choose two.**
    - A. `r+`  B. `w`  C. `w+`  D. `a+`

46. Which methods do **not** belong to `Dir`? **Choose two.**
    - A. `Dir.pwd`  B. `Dir.chdir`  C. `Dir.basename`  D. `Dir.rename`

47. What does `p('silver ruby'[7, 4])` print? **Choose one.**
    - A. `"ruby"`  B. `" ruby"`  C. `"silver"`  D. `nil`

48. What is printed? **Choose one.**
    ```ruby
    x = 'cat'
    x[1, 1] = 'oo'
    p x
    ```
    - A. `"cot"`  B. `"coot"`  C. `"oo"`  D. `"cat"`

49. What happens? **Choose one.**
    ```ruby
    p 4 * 'ha'
    ```
    - A. Prints `"hahahaha"`  B. Prints `"4ha"`  C. `TypeError`  D. Syntax error

50. What is printed? **Choose one.**
    ```ruby
    module Banana
      def x
        :banana
      end
    end
    class Potato
      include Banana
    end
    p Potato.new.x
    ```
    - A. `:banana`  B. `nil`  C. `NoMethodError`  D. `TypeError`
