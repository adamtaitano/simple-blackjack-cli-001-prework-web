def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return 1 + rand(11)
end

def display_card_total(cards_total)
  # code #display_card_total here
  puts "Your cards add up to #{cards_total}"
  return cards_total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  cards_total = deal_card
  cards_total += deal_card
  return display_card_total(cards_total)
end


def hit?(number)
  # code hit? here
  prompt_user
  response = get_user_input
  if response == "h"
    number += deal_card
  elsif response == "s"
    return number
  else
    invalid_command
  end
  return number
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = hit?(initial_round)
  until total > 21 do
    total += hit?(total)
  end
  display_card_total(total)
end_game(total)
end
