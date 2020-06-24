require_relative "Game"

class Cli

    def initialize
        @game = Game.new
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

        beginGame = gets.chomp

        #if null or empty string is entered, loop doesn't end - josh
        loop do
      
            if(beginGame.to_s == '')
                puts("Please enter a valid command.")
    
            elsif(beginGame == "enter")

                puts("begin")
                
    
            elsif(beginGame == "exit")
                puts("end")
            end
              
            if beginGame.to_s != '' || nil
             break
            end
                    
        end

    end

   # if users wins
   def win
    puts("congratulations! you win!")
    
   end

   # if user loses 
   def death
    puts("sorry! you die!")
    
   end

end

cli = Cli.new

cli.initialize_game()
