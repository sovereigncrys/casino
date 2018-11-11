class Player 

    attr_accessor :name, :wallet
    def initialize
        puts `clear`
        enter_name
        bank
        
    end
    def enter_name
        puts "Enter your name"
        @name = gets.strip
        puts `clear`
        puts @name
    end

    def bank
        puts "How much you got?"
        @wallet = gets.strip.to_i
        puts `clear`
        puts @wallet
    end
    
end