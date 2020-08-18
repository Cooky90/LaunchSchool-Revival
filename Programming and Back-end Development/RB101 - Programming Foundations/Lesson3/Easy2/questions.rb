Question 1. See if "spot" is present in this hash.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.has_key?("Spot")

Answer:

There are two methods that can be used for this exercise, which require a method of
checking whether a key exists within a hash. The .has_key?("key") method or The
.includes?("key"). The member? and key? methods could also have been used.

Question 2. 
Using the following string, munsters_description = "The Munsters are creepy in a good way."

Create the following.

"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.swapcase!
"The munsters are creepy in a good way."
munsters_description.capitalize!
"the munsters are creepy in a good way."
munsters_description.downcase!
"THE MUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.upcase!

Question 3.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

Add in the following hash, additional_ages = { "Marilyn" => 22, "Spot" => 237 }

Answer: 

Use the merge function to add key,values of the additional_ages hash. Remember to use
the bang operator if you wish to mutate the ages hash.

Question 4.

See if the word "Dino" appears in the following string:
advice = "Few things in life are as important as house training your pet dinosaur."

advice.match("Dino") or regex method, i.e. advice.scan(/Dino/i)

Question 5.

Show an easier way to write the following array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

Answer:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

Question 6.

Add "Dino" to the array.

Answer:

flintstones << "Dino"

Question 7.

How would we have added multiple names to the array using concat and push methods?

Answer:

flintstones.push("Dino").push("Hoppy") or flinstones.concat(%w(Dino Hoppy))

Question 8.

Using the slice method amend the following as string so anything before "as " is 
deleted.

advice = "Few things in life are as important as house training your pet dinosaur."

Answer:

advice.slice(0, advice.index('house'))

Question 9.

Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"

Answer:

statement.split('').count('t') #answer is 2

Question 10.
Back in the stone age (before CSS) we used spaces to align things on the screen. 
If we had a 40 character wide table of Flintstone family members, 
how could we easily center that title above the table with spaces?

Answer:

string.center(40)
