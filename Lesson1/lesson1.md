# Lesson 1 - Assignment

## Fun with strings

### Instructions

Download the starter code from here

You will find six files in the started code:

```
1. lesson1_task0.rb
2. lesson1_task0_test.rb
3. lesson1_task1.rb
4. lesson1_task1_test.rb
5. lesson1_task2.rb
6. lesson1_task2_test.rb
```

The code that you write should go in `lesson1_task*.rb`

The other files, `lesson1_task*_test.rb` are test files that should help you test if your code is correct.

To use the test files do the following in the terminal:

```bash
> ruby lesson1_task0_test.rb lesson1_task0.rb
```

You should see output like the following:
```
✓ Test 1
✗ Test 2
  Expected: "Stevie Wonder"
  Got: "StevieWonder"
```

In this case `Expected` is the correct answer that we're expecting and `Got` is the incorrect answer that your solution produced.

### Task 0: String concatenation

In class we talked about using variables inside of strings. The big fancy word for this is called "string interpolation", but in Typeform this is more commonly known as "piping".

Example:

```ruby
first_name = "Beardy"
last_name = "Man"

puts "Hello, #{first_name} #{last_name}!" # "Hello, Beardy Man!"
```

However... Ruby also allows you to use strings and variables together using "string concatenation". This is easiest shown with an example:

Example:

```ruby
first_name = "Beardy"
last_name = "Man"

puts "Hello, " + fist_name + " " + last_name + "!" # "Hello, Beardy Man"!
```

The two examples above contain exactly the same output, but they're just written in different ways. Sometimes you may find it more convenient to use string interpolation and at other times you may find it more convenient to use string concatenation, in general there is no strict rule when to use either technique.

In this task you will write a method whose inputs are a first name and last name and whose output is the persons full name.

Example:

```ruby
full_name("Marvin", "Gaye") # "Marvin Gaye"
full_name("Diana", "Ross") # "Diana Ross"
```

Hint: to define a function that accepts two arguments you use the following syntax

```ruby
def method(arg1, arg2)
  # code that does stuff would go here
end
```

Please upload a ruby file named `lesson1_task0.rb` containing the method `full_name`. Your code should use string concatenation and not string interpolation.

### Task 1: A better `capitalize`

Ruby is a language with a lot of convenience methods, one of which is the string method `capitalize`. However... this method doesn't work on words that begin with an accented character :(

Try the following in `irb`

```
> "árbol".capitalize
```

What do you expect the output to be? What is the actual output?

In this task you should write a method `spanish_capitalize` that can capitalize normal words as well as words that begin with an accented character.

Example:

```ruby
spanish_capitalize("árbol") # "Árbol"
spanish_captialize("ése") # "Ése"
spanish_capitalize("typeform") # "Typeform"
```

Hint: You can find pull out parts of a string using square brackets. The first letter starts at 0, the second at 1, etc.

```ruby
"Typeform"[0] # "T"
"Typeform"[1] # "y"
"Typeform"[0..1] # "Ty"

word = "Typeform"
word[1..word.length] # "ypeform"
```

Please upload a ruby file named `lesson1_task1.rb` containing the method `spanish_capitalize`.

### Task 2: Hipster neighborhoods

Hipsterism has hit the world hard...! And behind every great hipster neighborhood is a great hipster neighborhood name! Have you ever been to "SoHo" or "TriBeCa" in NYC? :)

In this task you will need to write a method whose inputs are a neighborhood abbreviation and its full name and whose output is the abbreviated name but properly capitalized.

Example:

- `hipster_spelling('soho', 'south of houston') -> 'SoHo'`
- `hipster_spelling('tribeca', 'triangle below canal street') -> 'TriBeCa'`

A hipster-neighborhood spelling can be found with the following algorithm:

1. For each word in the full name
2. Find the longest common prefix with the abbreviation
3. Capitalize the first letter of the longest common prefix
4. Chop off the longest common prefix from the beginning of the abbreivation
5. Repeat with each word and the remaining abbreviation until done

If you were to write out the steps for an example, you could imagine a process that looks like this:

1. ***so***ho, ***so***uth -> "So" (longest common prefix is 'so')
2. ~~so~~ho, of -> "" (there is no longest common prefix)
3. ~~so~~***ho***, ***ho***uston -> "Ho" (longest common prefix is 'ho')

Note: The ~~strikethrough~~ in the example above indicates that part of the abbreviation is not considered when finding the longest prefix.

#### Part 1

Write a method `longest_common_prefix` that can find the longest common prefix between two words

```ruby
def longest_common_prefix(word1, word2)
  # your implementation would go here  
end
```

#### Part 2

Write a method `hipster_spelling` that returns the hipster spelling of a given neighborhood

```ruby
def hipster_spelling(abbreviation, full_name)
  # your implementation would go here
end
