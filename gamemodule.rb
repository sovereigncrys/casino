module Games

def coin_toss_game_menu
    puts "Welcome to The Game!"
    puts "1. Play"
    puts "2. Return to Casino Menu"
    response = gets.strip.to_i
    case response
        when 1
        puts "Good Luck ....(we don't really mean it)"
        cointoss
        when 2
        puts "Adios!"
        puts `clear`
        casino_menu
        end
end

def cointoss
  puts `clear`
  puts "Welcome #{@name}\nBalance = #{@wallet}"
  puts "Place your bet!"
  bet = gets.strip.to_i
  puts `clear`
  puts "Your current balance is $#{@wallet}"
  puts "Your bet is $#{bet}"
  puts "Pick Heads (H) or Tails (T)"
  housechoice = ["h", "t"]
  house_coin = housechoice.sample
  coin_choice = gets.strip.downcase
  if coin_choice == house_coin
    puts "You Win"
    @wallet = @wallet + bet
    puts "Your balance is now $#{@wallet}"
  else
    puts "Way to lose, loser!"
    @wallet = @wallet - bet
    puts "Your balance is now $#{@wallet}... Haha"
  end
coin_toss_game_menu

end

end 
