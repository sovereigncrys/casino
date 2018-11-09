require_relative './player'
require_relative './cointoss'
require_relative './gamemodule'

class Casino < Player
    include Games
    def initialize
        super()
        casino_menu
    end
    
    def casino_menu
        puts "$$$ Menu $$$"
        puts "1. Crys"
        puts "2. Emilio"
        puts "3. Matt"
        menu_selection = gets.to_i
        case menu_selection
        when 1 
            game_menu
            cointoss
        when 2
            game_menu
            #game-nme
        when 3
            game_menu
            #game-nme
        else
            puts "Select from THIS list"
        end 

    end
    

end
Casino.new