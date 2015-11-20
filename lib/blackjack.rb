def welcome
  puts "Welcome to the Blackjack Table"
end
def deal_card
  rand (1..11)
end

def display_card_total (total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input 
  input = gets.chomp
  return input 
end

def end_game (total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = 0
  2.times do
  total += deal_card
  end
  display_card_total(total)
 return total
end

def hit? (num)
  prompt_user
  choice = get_user_input
  if choice == "h"
  num += deal_card
  elsif choice == "s"
  else
  invalid_command
  end  
  return num
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21 do
    total = hit? (total)
    display_card_total (total)
  end
  end_game (total)
end
    
