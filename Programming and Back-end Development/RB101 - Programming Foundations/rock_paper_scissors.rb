VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

WIN_LOOKUP_HASH =
  {
    'rock' => ['scissors', 'lizard'],
    'paper' => ['rock', 'spock'],
    'scissors' => ['paper', 'lizard'],
    'lizard' => ['spock', 'paper'],
    'spock' => ['scissors', 'rock']
  }

THRESHOLD_WINS = 5

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lose!")
  else
    prompt("It's a tie!")
  end
end

def win?(first, second)
  WIN_LOOKUP_HASH[first].include? second
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def game_winner?(first, second, threshold)
  first >= threshold || second >= threshold
end

cpu_score = 0
player_score = 0
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets.chomp

    short_cuts =
      {
        'r' => 'rock',
        'p' => 'paper',
        'sc' => 'scissors',
        'l' => 'lizard',
        'sp' => 'spock'
      }

    if VALID_CHOICES.include?(choice)
      break
    elsif short_cuts.keys.include?(choice)
      choice = short_cuts[choice]
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}; Computer chose: #{computer_choice}")
  if win?(choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, choice)
    cpu_score += 1
  end
  prompt("Player current score: #{player_score},"\
  " CPU current score: #{cpu_score}")

  display_results(choice, computer_choice)

  if game_winner?(player_score, cpu_score, THRESHOLD_WINS)
    cpu_score >= THRESHOLD_WINS ? prompt("CPU wins!") : prompt("Player wins!")
    cpu_score = 0
    player_score = 0
    prompt("Do you want to play again?")
    answer = Kernel.gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

prompt("Thank you for playing. Good bye!")
