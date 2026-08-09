RUBY SILVER BASELINE DIAGNOSTIC
Ruby version: 3.1.x

Instructions:
- Do not run the code yet.
- Predict each answer from memory.
- Write “not sure” when needed.
- For code questions, write the exact expected output where possible.


==================================================
1. TRUTHINESS
   ==================================================

Which of these values are falsy in Ruby?

nil
false
0
""
[]

Answer:




==================================================
2. ASSIGNMENT AND MUTATION
   ==================================================

What gets printed?

a = "ruby"
b = a

a.upcase!

puts b

Answer:




Why?




==================================================
3. OBJECT IDENTITY
   ==================================================

What gets printed?

a = "ruby"
b = "ruby"

p a == b
p a.equal?(b)

Answer:




Explain the difference between == and equal?:




==================================================
4. LOCAL VARIABLE SCOPE
   ==================================================

What gets printed?

x = 1

3.times do
x = 10
y = 20
end

p x
p defined?(y)

Answer:




Why?




==================================================
5. METHOD RETURN VALUE
   ==================================================

What does this print?

def calculate
x = 10
y = 20

x + y
puts "finished"
end

p calculate

Answer:




What determines a Ruby method’s implicit return value?




==================================================
6. MAP BEHAVIOUR
   ==================================================

What gets printed?

numbers = [1, 2, 3]
result = numbers.map { |number| number * 2 }

p numbers
p result

Answer:




Does map modify the original array here?




==================================================
7. CONDITIONAL ASSIGNMENT
   ==================================================

What values do a and b contain after this code?

a = nil
b = false

a ||= 10
b ||= 20

Answer:

a =

b =


Why?




==================================================
8. KEYWORD ARGUMENTS
   ==================================================

Does this execute successfully?

def greet(name:, greeting: "Hello")
"#{greeting}, #{name}"
end

puts greet("Brendons")

Answer:




If it fails, explain why:




Rewrite the method call correctly:




==================================================
CONFIDENCE CHECK
==================================================

For each question, mark one:

1. nil, false, 0 are falsly cuz "" and[] are just empty arrays or or empty strigns or sum
2. prints b cuz whatever u did with a doesnt matter cuz u puts the b variable
3. Certain / Guess / No idea
4. Certain / Guess / No idea
5. Certain / Guess / No idea
6. Certain / Guess / No idea
7. Certain / Guess / No idea
8. Certain / Guess / No idea