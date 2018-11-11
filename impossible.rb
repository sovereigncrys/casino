module Impossible

  def impossible_game_menu
    puts "Welcome to The Most Impossible Game ever!"
    puts "1. Play"
    puts "2. Return to Casino Menu"
    response = gets.strip.to_i
    case response
        when 1
        puts "Good Luck (it won't help)"
        impossible_game
        when 2
        puts "Adios!"
        puts `clear`
        casino_menu
    end
  end

  def impossible_game
    puts `clear`
    puts "Welcome #{@name}!\nYou're balance = $#{@wallet}"
    puts "Place your bet!"
    bet = gets.strip.to_i
    puts `clear`
    puts "Your current balance is $#{@wallet}"
    puts "Your bet is $#{bet}"
    puts "Pick a number between 1 and 100,000,000"
    housechoice = rand(1..100000000)
    player_choice = gets.strip.downcase
    if player_choice == housechoice
      puts "You Win"
      @wallet = @wallet + bet
      puts "Your balance is now $#{@wallet}"
    else
      puts "Way to lose, loser!"
      @wallet = @wallet - bet
      puts "Your balance is now $#{@wallet}"
    end
    impossible_game_menu
  end
end