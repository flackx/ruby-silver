# Mock Exam 2

**Ruby:** 3.1.x · **Questions:** 50 · **Time:** 90 minutes · **Target:** 85%+

Choose exactly the requested number of answers. Do not run Ruby.

1. What is printed? **Choose one.**
   ```ruby
   p 3 # p 4
   ```
   - A. `3`  B. `4`  C. `3` then `4`  D. Nothing

2. What does this print? **Choose one.**
   ```ruby
   p(if nil
       1
     else
       2
     end)
   ```
   - A. `1`  B. `2`  C. `nil`  D. Syntax error

3. What happens when Ruby parses `x = 08`? **Choose one.**
   - A. `x` becomes 8  B. `x` becomes 0  C. Warning only  D. Syntax error

4. Which expressions return `true`? **Choose two.**
   - A. `!!0`  B. `!!nil`  C. `!!false`  D. `!![]`

5. What is printed? **Choose one.**
   ```ruby
   1.times { potato = 2 }
   p defined?(potato)
   ```
   - A. `"local-variable"`  B. `nil`  C. `2`  D. `NameError`

6. What is printed? **Choose one.**
   ```ruby
   x = [['a']]
   y = x.dup
   y[0] << 'b'
   p x
   ```
   - A. `[["a"]]`  B. `[["a", "b"]]`  C. `["a", "b"]`  D. `FrozenError`

7. Which expressions are true? **Choose two.**
   - A. `'x'.equal?('x')`  B. `:x.equal?(:x)`  C. `[1].equal?([1])`  D. `nil.equal?(nil)`

8. What happens? **Choose one.**
   ```ruby
   POTATO = :a
   POTATO = :b
   p POTATO
   ```
   - A. Prints `:a`  B. Warning, then prints `:b`  C. `FrozenError`  D. Syntax error

9. What is printed? **Choose one.**
   ```ruby
   x = false and x = true
   p x
   ```
   - A. `true`  B. `false`  C. `nil`  D. Syntax error

10. What does `p([1, 2, 3, 2] - [2])` print? **Choose one.**
    - A. `[1, 3]`  B. `[1, 3, 2]`  C. `[2, 2]`  D. `[1, 2, 3]`

11. What does `p(2**4)` print? **Choose one.**
    - A. `6`  B. `8`  C. `16`  D. `24`

12. Which statements are true? **Choose two.**
    - A. `1 == 1.0`  B. `1.eql?(1.0)`  C. `1.equal?(1.0)`  D. `[1] == [1]`

13. What is returned by `banana`? **Choose one.**
    ```ruby
    def banana(x)
      if x
        :potato
      else
        :x
      end
    end
    ```
    When called as `banana(0)`:
    - A. `:potato`  B. `:x`  C. `0`  D. `nil`

14. What is printed? **Choose one.**
    ```ruby
    def banana(x = 2, y = 4)
      p [x, y]
    end
    banana(7, 8)
    ```
    - A. `[2, 4]`  B. `[7, 4]`  C. `[7, 8]`  D. `ArgumentError`

15. Which fills the blank to print `[1, [2, 3]]`? **Choose one.**
    ```ruby
    def banana(x, ____y)
      p [x, y]
    end
    banana(1, 2, 3)
    ```
    - A. `*`  B. `**`  C. `&`  D. `+`

16. What happens? **Choose one.**
    ```ruby
    def banana(x:)
      x
    end
    banana(x: 1, y: 2)
    ```
    - A. Returns 1  B. Returns 2  C. `ArgumentError`  D. Syntax error

17. Which implementation safely returns `:x` without a supplied block? **Choose one.**
    - A. `def banana; yield || :x; end`
    - B. `def banana; block_given? ? yield : :x; end`
    - C. `def banana; yield? ? yield : :x; end`
    - D. `def banana; block ? yield : :x; end`

18. What is printed? **Choose one.**
    ```ruby
    def banana
      yield(2)
      :x
    end
    p banana { |potato| potato * 3 }
    ```
    - A. `2`  B. `6`  C. `:x`  D. `[6, :x]`

19. What is printed? **Choose one.**
    ```ruby
    p [1, 2, 3].map { |x| next 0 if x.even?; x }
    ```
    - A. `[1, 2, 3]`  B. `[1, 0, 3]`  C. `[1, 3]`  D. Syntax error

20. What does `p([2, 4, 6, 8][-3, 2])` print? **Choose one.**
    - A. `[2, 4]`  B. `[4, 6]`  C. `[6, 8]`  D. `nil`

21. What is printed? **Choose one.**
    ```ruby
    x = [1]
    y = x.concat([2])
    p [x.equal?(y), x]
    ```
    - A. `[false, [1]]`  B. `[false, [1, 2]]`  C. `[true, [1, 2]]`  D. `nil`

22. What is printed? **Choose one.**
    ```ruby
    x = Hash.new { |h, k| h[k] = [] }
    x[:a] << 1
    p x
    ```
    - A. `{}`  B. `{:a=>[]}`  C. `{:a=>[1]}`  D. `{1=>:a}`

23. What is printed? **Choose one.**
    ```ruby
    p [1, 2, 3].filter_map { |x| x.even? ? x * 2 : nil }
    ```
    - A. `[false, 4, false]`  B. `[2]`  C. `[4]`  D. `[1, 3]`

24. What does `p([2, 3, 4].reduce { |x, y| x * y })` print? **Choose one.**
    - A. `9`  B. `14`  C. `24`  D. `nil`

25. Which expressions return `true`? **Choose two.**
    - A. `[1, 2].all?(&:odd?)`  B. `[1, 2].any?(&:even?)`
    - C. `[1, 2].none?(&:zero?)`  D. `[].any?`

26. Which produces `[8, 4, 2]` for `x = [2, 8, 4]`? **Choose one.**
    - A. `x.sort_by { |y| y }`  B. `x.sort_by { |y| -y }`
    - C. `x.reverse.sort`  D. `x.sort { |a, b| a < b }`

27. What is printed? **Choose one.**
    ```ruby
    x = 3
    p %q[banana #{x}]
    ```
    - A. `"banana 3"`  B. `"banana #{x}"`  C. `[:banana, 3]`  D. Syntax error

28. What does `p('aaaa'.gsub('aa', 'b'))` print? **Choose one.**
    - A. `"ba"`  B. `"bb"`  C. `"b"`  D. `"aaaa"`

29. Which prints `"xy"`? **Choose one.**
    ```ruby
    p '$x$y$'.____('$')
    ```
    - A. `delete`  B. `delete_prefix`  C. `sub`  D. `chop`

30. What does `p(/\Aba/ =~ 'banana')` print? **Choose one.**
    - A. `true`  B. `0`  C. `1`  D. `nil`

31. What does `p(?b)` print in Ruby 3.1? **Choose one.**
    - A. `98`  B. `"b"`  C. `:b`  D. `["b"]`

32. What happens? **Choose one.**
    ```ruby
    p Integer('3x')
    ```
    - A. Prints `3`  B. Prints `0`  C. `ArgumentError`  D. Syntax error

33. What does `p((2...5).include?(5))` print? **Choose one.**
    - A. `true`  B. `false`  C. `nil`  D. `RangeError`

34. Which expressions are true? **Choose two.**
    - A. `'x'.is_a?(Object)`  B. `'x'.instance_of?(Object)`
    - C. `'x'.instance_of?(String)`  D. `nil.instance_of?(Object)`

35. What does `p File.join('ruby', 'silver')` print on the exam's Unix-style examples? **Choose one.**
    - A. `"rubysilver"`  B. `"ruby/silver"`  C. `"./ruby/silver"`  D. An Array

36. What does `IO#write` return after successfully writing the ASCII String `"abc"`? **Choose one.**
    - A. The IO object  B. `nil`  C. `3`  D. `"abc"`

37. What is printed? **Choose one.**
    ```ruby
    class Banana
      def x
        @x
      end
    end
    p Banana.new.x
    ```
    - A. `0`  B. `false`  C. `nil`  D. `NameError`

38. Which create a readable instance method named `x`? **Choose two.**
    - A. `attr_reader :x`  B. `attr_writer :x`  C. `attr_accessor :x`  D. `attr_writer :y`

39. What happens? **Choose one.**
    ```ruby
    module Banana
    end
    Banana.new
    ```
    - A. Creates a Banana instance  B. Returns the module  C. `NoMethodError`  D. Syntax error

40. What is printed? **Choose one.**
    ```ruby
    class Banana
      def x
        1
      end
    end
    class Banana
      def x
        4
      end
    end
    p Banana.new.x
    ```
    - A. `1`  B. `4`  C. `[1, 4]`  D. Warning and `1`

41. What is printed? **Choose one.**
    ```ruby
    class Banana
      def x(y = 5)
        y
      end
    end
    class Potato < Banana
      def x(y = 8)
        super()
      end
    end
    p Potato.new.x
    ```
    - A. `5`  B. `8`  C. `nil`  D. `ArgumentError`

42. Which defines a callable `Banana.x` method? **Choose one.**
    ```ruby
    class Banana
      # definition here
    end
    ```
    - A. `def x; :x; end`  B. `def self.x; :x; end`
    - C. `def @x; :x; end`  D. `def Banana#x; :x; end`

43. What happens? **Choose one.**
    ```ruby
    x = 3
    class Banana
      p x
    end
    ```
    - A. Prints `3`  B. Prints `nil`  C. `NameError`  D. Syntax error

44. What does `p Banana::X` print? **Choose one.**
    ```ruby
    module Banana
      X = 9
    end
    ```
    - A. `9`  B. `:X`  C. `nil`  D. `NameError`

45. Which exceptions are caught by bare `rescue`? **Choose two.**
    - A. `NoMethodError`  B. `RuntimeError`  C. `SystemExit`  D. `Interrupt`

46. What is printed? **Choose one.**
    ```ruby
    begin
      print 'a'
    rescue
      print 'b'
    else
      print 'c'
    ensure
      print 'd'
    end
    ```
    - A. `a`  B. `acd`  C. `abd`  D. `ad`

47. What is printed? **Choose one.**
    ```ruby
    class BananaError < StandardError; end
    class PotatoError < BananaError; end
    begin
      raise PotatoError
    rescue PotatoError
      p :potato
    rescue BananaError
      p :banana
    end
    ```
    - A. `:potato`  B. `:banana`  C. Both  D. Unhandled exception

48. What does `p({ x: 1 }.include?(:x))` print? **Choose one.**
    - A. `true`  B. `false`  C. `nil`  D. `NoMethodError`

49. What is printed? **Choose one.**
    ```ruby
    x = [1, 3]
    p x.reject!(&:even?)
    ```
    - A. `[1, 3]`  B. `[]`  C. `nil`  D. `false`

50. What is printed? **Choose one.**
    ```ruby
    def banana
      print 'x'
    end
    p banana
    ```
    - A. `x` only  B. `nil` only  C. `xnil` followed by a newline  D. `"x"`
