module Slot_Machine_Game

    def slot_machine_game_menu
        puts "Welcome to The Game!"
        puts "1. Play"
        puts "2. Return to Casino Menu"
        response = gets.strip.to_i
        if response == 1
            puts "Good Luck ....you'll need it"
            slot_machine
        else
            puts `clear`
            puts "Adios!"
            casino_menu
        end
    end
    
    def slot_machine
      puts `clear`
      puts "Welcome #{@name}\nBalance = #{@wallet}"
      puts "Place your bet!"
      bet = gets.strip.to_i
      puts `clear`
      puts "Your current balance is $#{@wallet}"
      puts "Your bet is $#{bet}"
      puts "Hit Any Key for Your Slot Results"
      slot_choices = ["<3", "(=", ")="]
      a = slot_choices.sample
      b = slot_choices.sample
      c = slot_choices.sample
      start_slot = gets.strip.downcase
      puts "|| #{a} || #{b} || #{c} ||"
      if a == b && b == c
        puts "You Win"
        @wallet = @wallet + bet
        puts "Your balance is now $#{@wallet}"
      else
        puts "Way to lose, loser!"
        @wallet = @wallet - bet
        puts "Your balance is now $#{@wallet}... Haha"
      end
      slot_machine_game_menu
    
    end
    
    
end 
