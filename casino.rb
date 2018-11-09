require_relative './Player'

class Casino
    
    def initialize
        Player.new
        menu
    end
    
    def menu
        puts "$$$ Menu $$$"
        puts "1. Crys"
        puts "2. Emilio"
        puts "3. Matt"
        menu_selection = gets.to_i
        case menu_selection
        when 1 
            puts "CALLFILE"
        when 2
            puts "CALLFILE2"
        when 3
            puts "CALLFILE3"
        else
            puts "Select from THIS list"
        end 

    end
    

end
Casino.new