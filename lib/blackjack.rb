def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total=0
  2.times do
    card_total += deal_card
  end
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h" 
    card_total += deal_card
    return card_total
  elsif user_input == "s" 
    return card_total
  else
    puts "Please enter a valid command"
    hit?(card_total)
  end  
end



def invalid_command
  puts 'Please enter a valid command'
end

##########################ß###########################
# get every test to pass before coding runner below #
#####################################################

def runner
  card_total = 0
  welcome

  until card_total > 21 do

    card_total = hit?(initial_round)
    display_card_total(card_total)
    if card_total > 21
      end_game(card_total)
    end
  end

end
    
