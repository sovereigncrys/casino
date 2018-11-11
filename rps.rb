module Rpsgame

  def rps_game_menu
    puts "******************************\nWelcome to Rock Paper Scissor!"
    puts "1. Play"
    puts "2. Return to Casino Menu"
    response = gets.strip.to_i
    case response
        when 1
        puts "Good Luck ....(we don't really mean it)"
        rock_paper_scissor
        when 2
        puts "Adios!"
        puts `clear`
        casino_menu
        end
end

def rock_paper_scissor
  puts `clear`
  puts "******************************\nWelcome #{@name}!!!\nBalance = $#{@wallet}"
  puts "Place your bet!"
  bet = gets.strip.to_i
  puts `clear`
  puts "Your current balance is $#{@wallet}"
  puts "Your bet is $#{bet}\n******************************"
  puts "You ready? Type one of the following:\nRock\nPaper\nScissor"
  housechoice = ["rock", "paper", "scissor"]
  house_pick = housechoice.sample
  user_rps_hand = gets.strip.downcase
  puts `clear`

  if user_rps_hand == house_pick
    puts "You picked #{user_rps_hand}, we picked #{house_pick}!"
    puts "Nobody wins, oh well...\nIt's a draw!"
    #@wallet = @wallet + bet
   # puts "Your balance is now $#{@wallet}"
  elsif user_rps_hand == "rock" && house_pick == "paper"
    puts "You picked #{user_rps_hand}, we picked #{house_pick}!"
    puts "You lose!"
    @wallet = @wallet - bet
    puts "Your balance is now $#{@wallet}... Haha"
  elsif user_rps_hand == "rock" && house_pick == "scissor"
    puts "You picked #{user_rps_hand}, we picked #{house_pick}!"
    puts "You win!"
    @wallet = @wallet + bet
    puts "Your balance is now $#{@wallet}!"
  elsif user_rps_hand == "paper" && house_pick == "rock"
    puts "You picked #{user_rps_hand}, we picked #{house_pick}!"
    puts "You win!"
    @wallet = @wallet + bet
    puts "Your balance is now $#{@wallet}!"
  elsif user_rps_hand == "paper" && house_pick == "scissor"
    puts "You picked #{user_rps_hand}, we picked #{house_pick}!"
    puts "You lose!"
    @wallet = @wallet - bet
    puts "Your balance is now $#{@wallet}... Haha"
  elsif user_rps_hand == "scissor" && house_pick == "rock"
    puts "You picked #{user_rps_hand}, we picked #{house_pick}!"
    puts "You lose!"
    @wallet = @wallet - bet
    puts "Your balance is now $#{@wallet}... Haha"
  elsif user_rps_hand == "scissor" && house_pick == "paper"
    puts "You picked #{user_rps_hand}, we picked #{house_pick}!"
    puts "You win!"
    @wallet = @wallet + bet
    puts "Your balance is now $#{@wallet}!"
  else
    puts "Not a valid choice, try again"
  end
  rps_game_menu
end

end