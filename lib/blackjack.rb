def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  sum
end

def hit?(current_sum)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 'h'
    current_sum += deal_card
  elsif input == 's'
    current_sum
  else
    invalid_command()
    prompt_user()
    get_user_input()
  end
  current_sum
end

def invalid_command
  # code invalid_command here
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cards_total = initial_round
  until cards_total > 21 do
    cards_total = hit?(cards_total)
    display_card_total(cards_total)
  end
  end_game(cards_total)
end
    
