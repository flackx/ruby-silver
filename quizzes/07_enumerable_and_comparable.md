# Quiz 7: Enumerable and Comparable

1. Which return every matching original element? **Choose two.**
   - A. `select`
   - B. `filter`
   - C. `find`
   - D. `map`

2. What does `p([2, 4, 5].find(&:odd?))` print? **Choose one.**
   - A. `[5]`
   - B. `5`
   - C. `true`
   - D. `nil`

3. What does `p(%w[a b a].tally)` print? **Choose one.**
   - A. `[2, 1]`
   - B. `{a: 2, b: 1}`
   - C. `{"a"=>2, "b"=>1}`
   - D. `3`

4. Which sort descending? **Choose two.**
   - A. `x.sort.reverse`
   - B. `x.reverse.sort`
   - C. `x.sort_by { |y| -y }`
   - D. `x.sort { |a, b| a < b }`

5. What must a custom class normally define after including `Comparable`? **Choose one.**
   - A. `==`
   - B. `<=>`
   - C. `sort`
   - D. `compare`

