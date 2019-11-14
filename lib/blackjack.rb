def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  1+rand(10)
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
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum=deal_card+deal_card
  display_card_total(sum)
  sum
  # code #initial_round here
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

def hit?(num)
  prompt_user
  input=get_user_input
  if input == "s"
    sum=num
  elsif input == "h"
    sum=deal_card
    sum=sum+num
    #display_card_total(sum)
  # code hit? here
  else #input != "h" && input != "s"
    #binding.pry
    invalid_command
    prompt_user
    get_user_input
  end
  sum
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num=initial_round
  result=0
  while result<=21 do 
    result=hit?(num)
    display_card_total(result)
  end
  end_game(result)
  # code runner here
end
    
