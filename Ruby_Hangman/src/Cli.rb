require_relative "Game"

class Cli

    def initialize
        @game = Game.new 
        puts(@game.get_game_state)
        puts(@game.get_letter_guessed)
        puts(@game.get_count_of_unguessed_letters)       
    end

     # begins the game
     def initialize_game
        puts("Welcome to hangman!")

        puts("----")
        puts("   |")
        puts("   O")
        puts("  ~ ~")
        puts("   |")
        puts(" || || ")
        puts("Please type 'enter' to continue or 'exit' to exit")

        beginGame = gets.chomp.to_s

        case beginGame
        when "enter"
            puts("Let's get started.")           
            play();
        when "exit"
            puts("Have a glorious day, thanks for playing.")
        else
            puts("Please enter a valid command.")   
        end

    end

    #Play function
    def play

       numOfGuesses = @game.get_num_of_guesses
       state = @game.get_game_state()

        while @game.get_game_state == "Guess"
            
            wordString = @game.get_current_state_of_word()      
            puts("The state of the word is: " + wordString)
            puts("Nummber of guesses left: " + @game.get_num_of_guesses.to_s)

            #grab user input guess
            puts "Please guess a letter"
            userInput = gets

            #validate user input
            if /^[a-zA-Z]$/.match(userInput)
                letter = userInput.downcase[0]
                @game.make_guess(letter)                
            else
                puts "Please enter only a valid letter of the alphabet"
            end

        end

        #check for game state
        if @game.get_game_state == "Die"
            death()
        elsif @game.get_game_state == "Win"
            win()    
        end

    end

   # if users wins
   def win
    puts("Congratulations! you win!")
    puts("Would you like to play again?")
    initialize_game();
   end

   # if user loses 
   def death
    puts("Unfortunetly, you got hung..")
    puts("Would you like to play again?")
    initialize_game();
   end

end

cli = Cli.new

cli.initialize_game()
