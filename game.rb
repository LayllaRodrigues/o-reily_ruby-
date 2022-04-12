#get my number game
#written by you

puts "welcome to 'Get my number'"

#get the player's name, and greet them
print "What's your name?"
input = gets 
name = input.chomp
puts "welcome, #{name}!"

#Store a ramdom number for the player to guess
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100)+1

#track how many guesses the player has made.
num_guesses = 0 

#track whether the player has guessed correctly
guessed_it = false

until num_guesses == 10 || guessed_it
    puts "You've got #{10 - num_guesses} guesses left"
    print "Make a guess:"
    guess = gets.to_i

    num_guesses +=1

    #Compare the guess to the target 
    #Print the appropriate message.
    if guess < target
        puts "Oops. Your guess was Low"
    elsif guess > target
        puts "Oops. Your guess was Hight"
    elsif guess == target
        puts "Good job, #{name}!"
        puts "You guessed my number in #{num_guesses} guesses!"
        guessed_it = true
    end
end

#if the player didn't guess in time, show the targuet number.
unless guessed_it
    puts "Sorry. You didn't get my number. (It was #{target}.)"
end