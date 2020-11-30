Debugging With Pry

# What is debugging?

* Bugs are humans errors in code.
* Debugging is the process of identifying and fixing those errors.

# How do we debug code?

* Identify the problem, find the source of the problem.
* Understand the problem, why is this code causing this output?
* Implement a solution, first two steps lead to this step.

# Types of error

* Syntax Errors
  * The code you have written does not conform with the grammar of the language being used.
  `puts 'it's true'` The use of this string has been been formatted correctly due to the single quotes used
  in conjuction with a single quote in the middle of this string.

  In order to fix the above error, either double quotes need to be used or the single quote needs to be escaped `\'s`.

* Logical Errors
  * Errors in the logic of code, the code tends to run but doesn't produce expected results.

# What is pry?

* Pry is a RubyGem.
* Pry is a REPL, Read Eval Print Loop.

`pry` called in IRB for example, allows a user to interact with an object itself, including using unix based syntax on objects such as 'cd' on a object in which methods can then be called on it, methods availble for that object or even show documentation for that method.

`pry`\
`arr = [1,2,3]`\
`cd arr`\
`ls` #lists all methods\
`first` #1\
`show-doc map`\

# Invoking pry at runtime

* Using `binding.pry`.
  * A binding is something that contains references to any variables that were in scope at the point it was created.
  * Pry interupts the exection of the program and allows for interrogation of program inc variables etc.
  * `whereami 10` would show 10 lines of code above and below where the current `binding.pry` invocation is.
  * `exit` to exit current iteration.
  * `exit!` to completely exit pry.

# Pry-byebug
* Ruby gem with additional features.
* `require pry` and `require pry-byebug` both required.
* `next` keyword can be used to iterate through control flow i.e. if/elseif.
* `continue` is used to skip to the next complete iteration.
* `step` is can be used to look closer into methods that produced the return value.