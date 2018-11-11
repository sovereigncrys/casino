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
    puts "How would you like to play?"
    puts "1. Bet on Red or Black"
    puts "2. Bet on Odds or Evens"
    puts "3. Bet on Number"
    game_type = gets.strip.to_i
    case game_type
    when 1
      red_black
    when 2
      odd_even
    when 3
      roulette_number
    else
      roulette_game
    end
  end

  def red_black
    puts `clear`
    puts "Welcome #{@name}!\nYour balance = $#{@wallet}"
    puts "Place your bet!"
    bet = gets.strip.to_i
    puts `clear`
    puts "Your current balance is $#{@wallet}"
    puts "Your bet is $#{bet}"
    puts "Pick Red (R) or Black (B)"
    house_color_option = ["r", "b"]
    house_color = house_color_option.sample
    color_choice = gets.strip.downcase
    if color_choice == house_color
      puts "You Win"
      @wallet = @wallet + bet
      puts "Your balance is now $#{@wallet}"
    else
      puts "Bummer Loser!"
      @wallet = @wallet - bet
      puts "Your balance is now $#{@wallet}"
    end
    roulette_menu
  end

  def odd_even
    puts `clear`
    puts "Welcome #{@name}!\nYour balance = $#{@wallet}"
    puts "Place your bet!"
    bet = gets.strip.to_i
    puts `clear`
    puts "Your current balance is $#{@wallet}"
    puts "Your bet is $#{bet}"
    puts "Pick Odd (O) or Even (E)"
    house_oe_option = ["o", "e"]
    house_oe = house_oe_option.sample
    oe_choice = gets.strip.downcase
    if oe_choice == house_oe
      puts "You Win"
      @wallet = @wallet + bet
      puts "Your balance is now $#{@wallet}"
    else
      puts "Bummer Loser!"
      @wallet = @wallet - bet
      puts "Your balance is now $#{@wallet}"
    end
    roulette_menu
  end

  def roulette_number
    puts `clear`
    puts "Welcome #{@name}!\nYour balance = $#{@wallet}"
    puts "Place your bet!"
    bet = gets.strip.to_i
    puts `clear`
    puts "Your current balance is $#{@wallet}"
    puts "Your bet is $#{bet}"
    puts "Pick number 1 - 36"
    house_number = rand(1..36)
    number_choice = gets.strip.to_i
    if number_choice == house_number
      puts "You Win"
      @wallet = @wallet + bet
      puts "Your balance is now $#{@wallet}"
    else
      puts "Bummer Loser!"
      @wallet = @wallet - bet
      puts "Your balance is now $#{@wallet}"
    end
    roulette_menu
  end
end