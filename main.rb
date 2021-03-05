#!/usr/bin/env ruby 

#Welcome the user to the game 
puts "--------------------"
puts "|Ruby Guessing Game|"
puts "--------------------"

#Ask the user for their name 
print "What is your name? "
#The program will wait until the user enter their name 
# Notice how we are using chomp method in order to delete the extra line 
name = gets.chomp

# Use string interpolation to welcome the user with the name
# they have entered. Use several puts statement to explain the rules 
puts "Hello, #{name}!"
puts "We are going to play a guessing game"
puts "I will choose a random number beteern 1 and 10"
puts "and you will have three chances to guess it."

# Use the rand method in order to generate a random number between 1 and 10
# Note that we could have used number = rand(10) + 1 
number = rand(10) + 1 
puts "Okay, I have my number" 

# Use a constant variable in order to set a max number of guesses 
MAX_GUESSES = 3 

#We use the .upto method in order to count from 1 to MAX_GUESSES (3)
#Notice how the variable guess_num inside the pipes is only used in the 
# do statement 
1.upto(MAX_GUESSES) do |guess_num|
  print "Guess #{guess_num}: "
  guess = gets.chomp
  if guess.to_i == number 
    puts "great guessing, #{name}!"
    puts "My number was #{number}."
    # if we guessed the correct number, we use a break statement in order 
    # to tell the exit the do loop and execute the Goodbye message.
    break 
  #We use the else statement to tell the user that they did not guess 
  # the correct number
  else 
    puts "Sorry, that wasn't it."
    #We use an if statement here in to compare the number of times the user 
    #has guessed with the MAX_GUESSES allowed
    if guess_num == MAX_GUESSES
      puts # This puts is only to print a new line 
      puts "That was your last guess."
      puts "My number was #{number}."
    end 
  end 
end
#This goodbye message always execute. 
puts "\n\nGoodBye!" 