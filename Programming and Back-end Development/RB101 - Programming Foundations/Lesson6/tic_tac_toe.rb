require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

WINNING_REQUIREMENT = 5

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

FIRST_MOVE = 'choose'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}."
  puts "First to #{WINNING_REQUIREMENT} wins. \n\n"
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     | \n\n"
end
# rubocop:enable Metrics/AbcSize

def initalize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter = ',', last_join = 'or')
  case arr.size
  when 0
    ''
  when 1
    arr.first.to_s
  else
    string_with_delimiter = arr.slice(0..(arr.size - 2)).join("#{delimiter} ")
    string_with_delimiter + " #{last_join} #{arr[-1]}"
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Options available: #{joinor(empty_squares(brd))}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  if opportunity_check(brd)
    square = opportunity_check(brd)
  elsif threat_check(brd)
    square = threat_check(brd)
  elsif brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # binding.pry
    if brd.values_at(*line).all? { |marker| marker == PLAYER_MARKER }
      return 'Player'
    elsif brd.values_at(*line).all? { |marker| marker == COMPUTER_MARKER }
      return 'Computer'
    end
  end
  nil
end

def opportunity_check(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 \
      && brd.values_at(*line).count(INITIAL_MARKER) == 1
      return line[brd.values_at(*line).index(INITIAL_MARKER)]
    end
  end
  nil
end

def threat_check(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 \
      && brd.values_at(*line).count(INITIAL_MARKER) == 1
      return line[brd.values_at(*line).index(INITIAL_MARKER)]
    end
  end
  nil
end

def display_score(scores)
  scores = scores.map { |player, score| "#{player}: #{score} " }
  puts scores
end

def play_a_round(first, second, brd)
  order_of_moves = [first, second]
  move_lookup = { 'computer' => method(:computer_places_piece!),
                  'player' => method(:player_places_piece!) }

  order_of_moves.each do |move|
    move_lookup[move].(brd)
    break if someone_won?(brd) || board_full?(brd)
  end
end

loop do
  scores_hash = { 'Player' => 0, 'Computer' => 0 }
  loop do
    board = initalize_board

    until FIRST_MOVE == 'player' || FIRST_MOVE == 'computer'
      prompt "Who goes first, enter 'player' or 'computer'"
      FIRST_MOVE = gets.chomp.downcase
    end

    loop do
      display_board(board)
      display_score(scores_hash)
      case FIRST_MOVE
      when 'player'
        play_a_round('player', 'computer', board)
      when 'computer'
        play_a_round('computer', 'player', board)
      end
      break if someone_won?(board) || board_full?(board)
    end

    scores_hash[detect_winner(board)] += 1 if someone_won?(board)

    break if scores_hash.values.include? WINNING_REQUIREMENT
  end

  prompt "#{scores_hash.key(WINNING_REQUIREMENT)} won!"

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing!"
