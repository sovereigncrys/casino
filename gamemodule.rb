module Games

def game_menu
    puts "Welcome to The Game!"
    puts "1. Play"
    puts "2. Return to Casino Menu"
    response = gets.strip.to_i
    case response
        when 1
        puts "good luck ....(we don't really mean it)"
        when 2
        puts "adios!"
        puts `clear`
        casino_menu
        end
end

def cointoss
  puts "welcome #{@name}\nBalance = #{@wallet}"

end

end 
