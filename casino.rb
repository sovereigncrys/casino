require_relative './player'
require_relative './cointoss'
require_relative './gamemodule'
require_relative './impossible'
require_relative './roulette'
require_relative './rps'

class Casino < Player
    include Games
    include Impossible
    include Roulette
    include Rpsgame
    def initialize
        super()
        casino_menu
    end
    
    def casino_menu
        puts "$$$ Menu $$$"
        puts "1. The Most Epic Coin Toss"
        puts "2. Rock Paper Scissor"
        puts "3. Matt's Incredibly Hard\nImpossible to Beat Game"
        puts "4. Ruby's Really Ridiculous Roulette"
        puts "5. Quit"
        menu_selection = gets.to_i
        case menu_selection
        when 1 
            coin_toss_game_menu
        when 2
            rps_game_menu
        when 3
            impossible_game_menu
        when 4
            roulette_menu
        when 5
            exit
        else
            puts "Select from THIS list"
            casino_menu
        end 

    end
    

end
Casino.new