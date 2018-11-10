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
        puts "1. The Most Epic Coin Toss"
        puts "2. Emilio's Sweet Ass Game"
        puts "3. Matt's Incredibly Hard\nImpossible to Beat Game"
        menu_selection = gets.to_i
        case menu_selection
        when 1 
            coin_toss_game_menu
        when 2
            # game_menu
            #game-nme
        when 3
            # game_menu
            #game-nme
        else
            puts "Select from THIS list"
        end 

    end
    

end
Casino.new