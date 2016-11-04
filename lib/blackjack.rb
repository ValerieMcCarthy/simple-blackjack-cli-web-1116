def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  x = deal_card + deal_card 
  display_card_total(x)
  x
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "s"
    card_total = card_total
  elsif input == "h"
    card_total = card_total + deal_card
  else
    invalid_command
    prompt_user
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  x = initial_round
  until x > 21
    hit?(x)
    x = x + deal_card
    display_card_total(x)
  end
  end_game(x)
end
    
