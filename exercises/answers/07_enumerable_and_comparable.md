# Answers 7: Enumerable and Comparable

1. `[true, false, true]`. `map` collects block results.
2. `[1, 3]`. `select` keeps original elements whose block value is truthy.
3. `4`. `find` stops at and returns the first match.
4. `16`. The explicit initial accumulator is 10.
5. `NoMethodError` for this input on Ruby 3.1. The sort implementation receives booleans where it expects negative/zero/positive comparison values and eventually attempts an unsupported comparison on `true`. The governing mistake is returning booleans from a sort comparator.
