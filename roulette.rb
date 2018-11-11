module Roulette
  def roulette_menu
    puts "Welcome to Roulette!"
    puts "1. Play"
    puts "2. Return to Casino Menu"
    response = gets.strip.to_i
    case response
        when 1
        puts "May the odds ever be in your favor."
        roulette_game
        when 2
        puts "Adios!"
        puts `clear`
        casino_menu
    end
  end

  def roulette_game
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
    roulette_menu
  end
end