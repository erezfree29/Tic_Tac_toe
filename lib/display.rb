require_relative '../lib/board'
def introduction
  print 'Hello welcome to the game Tic Tak Toe '.light_magenta
  puts 'Would you like to play a new game? press y if you do'.light_magenta
  start = gets.chomp
  until start.downcase == 'y'
    puts 'press y if you want to play'.light_magenta
    start = gets.chomp
  end
end

def player_name
  puts 'Hello please enter your name'.cyan
  name = gets.chomp.capitalize
  until name.match?(/\A[a-zA-Z'-]*\z/)
    puts 'please enter a valid name which includes only letters'.light_yellow
    name = gets.chomp
  end
  name
end

def player_symbol
  puts '1)press 1 to play as X'.blue
  puts '2)press 2 to play as O'.blue
  selection = gets.chomp
  while selection != '1' && selection != '2'
    puts 'wrong selection please re-enter'.light_yellow
    selection = gets.chomp
  end
  selection == '1' ? 'X' : 'O'
end

def presntation(player1,player2)
  puts "#{player1.name} will be start the game and will be playing with the #{player1.symbol}'s"
  puts "#{player2.name} will play second and will be playing with the #{player2.symbol}'s"
end 

def round(table,player)
    puts table
    puts "Hello #{player.name} please enter an available number to place an #{player.symbol}"
end

def choose_number(board,player)
    puts "#{player.name} Please choose a number between 1 to 9 to place your symbol"
    number = gets.chomp.to_i
    until number.between?(1,9)
      puts 'wrong entery please re-enter'
      number = gets.chomp.to_i
    end
    until board.square[number - 1] == number
      puts 'the cell is taken please re-enter'
      number = gets.chomp.to_i
    end
    board.square[number - 1] = player.symbol  
end  