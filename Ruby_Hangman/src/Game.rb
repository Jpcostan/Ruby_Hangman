

class Game         

      @@WORDS = ["hat", "cat", "ate", "run", "eye", "soup", "date",
         "bake", "wake", "grape", "apple", "pride", "drive",
          "tacos", "linux", "orange", "purple", "volume", 
          "liquid", "palace", "molasses", "diamond", "sausage",
           "america", "england", "titties"]    
   
      @@ALPH = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l",
                  "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w",
                  "x", "y", "z"]   

      @@NUM_OF_LIMBS = 6

      @@STATES = { "Guess" => "Guess",  "Win" => "Win", "Die" => "Die" }
                     
   def initialize()

      @secretWord = @@WORDS[rand(@@WORDS.length())]
      @secretWordLength = @secretWord.length() 

      @lettersGuessed = { }

      for i in 0..@secretWordLength - 1
         @lettersGuessed[@secretWord[i]] = false             
      end

      @countOfUnguessedLetters = @lettersGuessed.length();

      @numOfGuessesLeft =  @@NUM_OF_LIMBS
      @currentState =  @@STATES["Guess"]
   end 

   def get_game_state
      return @currentState
   end

   def get_letter_guessed
      puts(@lettersGuessed)
   end

   def get_count_of_unguessed_letters
      return @countOfUnguessedLetters
   end

   #guess function
   def make_guess(letter)

      if @lettersGuessed[letter] == true 
          puts("You have already guessed this letter") 
          @numOfGuessesLeft -= 1

      elsif @lettersGuessed[letter] == false
         @lettersGuessed[letter] = true
          puts("You have guessed a letter correct! Congrats!")
          @countOfUnguessedLetters -= 1
              
      else
          puts("You guessed the letter incorrectly, try again")
          @numOfGuessesLeft -= 1

      end   

      if @numOfGuessesLeft == 0
         @currentState =  @@STATES["Die"]
      elsif @countOfUnguessedLetters == 0
         @currentState = @@STATES["Win"]
      end
      
   end

   #get's current number of guesses
   def get_num_of_guesses
      return  @numOfGuessesLeft
   end

   #gets current state of word
   def get_current_state_of_word()

      wordString = ""

      for i in 0..@secretWordLength-1 do

         key = @secretWord[i]

         if @lettersGuessed[key] == true  
            wordString += key
         elsif @lettersGuessed[key] == false
            wordString += "_ "   
         end

      end

      return wordString
   end

end
