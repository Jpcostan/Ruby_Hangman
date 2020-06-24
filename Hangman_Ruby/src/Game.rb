class Game         
   
      @@WORDS = ["hat", "cat", "ate", "run", "eye", "soup", "date",
         "bake", "wake", "grape", "apple", "pride", "drive",
          "tacos", "linux", "orange", "purple", "volume", 
          "liquid", "palace", "molasses", "diamond", "sausage",
           "america", "england", "titties"]    
   
      @@ALPH = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l",
                  "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w",
                  "x", "y", "z"]   

      @@NUM_OF_GUESSES = 7
                     
   def initialize()
      @secretWord = @@WORDS[rand(@@WORDS.length())]    
      @numOfGuessesLeft =  @@NUM_OF_GUESSES
   end 

   def get_game_state
      
   end

   def make_guess

   end


end
