# Answers 6: Arrays and hashes

1. `[7, 5, 3]`. `-4` is the second element and `-2` is the second-to-last element.
2. `[[1, 3], [1, 3]]`. Both variables reference the same mutated Array.
3. `[[:banana], [:banana]]`. Both positions contain the same inner Array reference.
4. `[{}, [1]]`. Mutating the shared default does not insert either key, and all missing keys return that same default object.
5. `KeyError`. Unlike `[]`, `fetch` without a fallback does not silently return the Hash default.

